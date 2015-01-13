'use strict';

angular
.module('report-model', ['lodash'])
.factory('ConceptIsStillReferencedError', function(){
    var ConceptIsStillReferencedError = function(message, references) {
        this.name = 'ConceptIsStillReferencedError';
        this.message = (message || '');
        this.references = references;
    };
    ConceptIsStillReferencedError.prototype = new Error();
    return ConceptIsStillReferencedError;
})
.factory('ReportID', function(){

    //Constructor
    var ReportID = function(){};

    ReportID.prototype.create = function(){
        // thanks to https://gist.github.com/ae6rt/7894539
        // http://www.ietf.org/rfc/rfc4122.txt
        var s = [];
        var hexDigits = '0123456789abcdef';
        for (var i = 0; i < 36; i++) {
            s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
        }
        s[14] = '4';  // bits 12-15 of the time_hi_and_version field to 0010
        /* jslint bitwise: true */
        s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1);  // bits 6-7 of the clock_seq_hi_and_reserved to 01
        /* jslint bitwise: false */
        s[8] = s[13] = s[18] = s[23] = '-';
        this.id = s.join('');
        return this.id;
    };

    ReportID.prototype.toString = function(){
        if(this.id === undefined){
            return this.create();
        }
        return this.id;
    };

    return ReportID;
})
.factory('AbstractReport', function(_, $log, $q, ConceptIsStillReferencedError, ReportID){

    //Constructor
    var AbstractReport = function(){};

    AbstractReport.prototype.super = function(modelOrName, label, description, role, username, prefix){
        if (!_.isObject(modelOrName) && !_.isString(modelOrName) &&
                   modelOrName !== undefined &&
                   modelOrName !== null) {
            throw new Error('new Report creation with invalid type ' + typeof modelOrName);
        } else if (_.isObject(modelOrName)) {
            if(modelOrName._id === undefined){
                modelOrName._id = this.uuid();
            }
            this.model = modelOrName;
        } else if (_.isString(modelOrName) ||
                   modelOrName === undefined ||
                   modelOrName === null){
            ensureParameter(label, 'label', 'string', 'Report (Constructor)');
            ensureParameter(description, 'description', 'string', 'Report (Constructor)');
            ensureParameter(role, 'role', 'string', 'Report (Constructor)');
            ensureParameter(username, 'username', 'string', 'Report (Constructor)',
                /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
                'invalid username value passed "' + username + '" (its not a valid Email Address).');
            if(modelOrName === undefined || modelOrName === null){
                modelOrName = new ReportID().toString();
            }
            if(prefix === undefined || prefix === null || typeof prefix !== 'string'){
                // do a good guess
                var startingChars = '';
                _.each(label.split(/[^A-Za-z0-9]+/), function(elem){
                    var char = elem.substr(0,1);
                    if(/[A-Za-z]/.test(char) && elem.length > 1) {
                        startingChars += char.toLowerCase();
                    }
                });
                prefix = startingChars;
                if(prefix===''){
                    prefix = label.substring(0, 1).toLowerCase();
                }
            }
            this.model = this.newModel(modelOrName, label, description, username, role, prefix);
            this.addConcept('ReportLineItems', label, true);
            this.addElement('Presentation', 'ReportLineItems', 0);
        } // if
        addDefinitionModel(this);
    };

    /*
     * @abstract: Needs to be overriden in implementing class
     * */
    AbstractReport.prototype.newModel = function(/* id, label, description, username, role, prefix */){
        throw new Error('Not implemented.');
    };

    // helper function to check parameters
    var ensureNetworkShortName = function(networkShortName, paramName, functionName) {
        ensureParameter(networkShortName, paramName, 'string', functionName, /^(Presentation)|(ConceptMap)$/g,
            'invalid networkShortName parameter value passed "' + networkShortName + '" (allowed values: Presentation, ConceptMap).');
    };

    var ensureConceptName = function(conceptName, paramName, functionName, errorMsg) {
        var regex = /^\w(\w|\d|[-_])*:(\w|\d|[-_])*$/g;
        if(errorMsg === undefined || errorMsg === null) {
            ensureParameter(conceptName, paramName, 'string', functionName, regex,
                    'function called with mandatory "' + paramName + '" parameter which is not a QName: ' + conceptName);
        } else {
            if(conceptName.match(regex) === null) {
                throw new Error(errorMsg);
            }
        }
    };

    var ensureRuleType = function(ruleType, paramName, functionName) {
        ensureParameter(ruleType, paramName, 'string', functionName, /^(xbrl28:validation)|(xbrl28:formula)$/g,
            'rule type "' + ruleType + '" is not a valid type (allowed types: xbrl28:validation, xbrl28:formula)');
    };

    var ensureParameter = function(paramValue, paramName, paramType, functionName, regex, regexErrorMessage) {
        if(paramValue === null || paramValue === undefined) {
            throw new Error(functionName + ': function called without mandatory "' + paramName + '" parameter.');
        }
        if(typeof paramValue !== paramType) {
            throw new Error(functionName + ': function called with mandatory "' + paramName + '" parameter which is of wrong type "' + typeof paramValue + '" (should be of type "' + paramType + '" instead).');
        }
        if(regex !== undefined && paramValue.match(regex) === null) {
            throw new Error(functionName + ': ' + regexErrorMessage);
        }
    };

    var ensureOptionalParameter = function(paramValue, paramName, paramType, functionName, regex, regexErrorMessage) {
        if(paramValue !== undefined && paramValue !== null){
            ensureParameter(paramValue, paramName, paramType, functionName, regex, regexErrorMessage);
        }
    };

    var ensureOptionalParameterValue = function(paramValue, paramName, paramType, functionName, allowedValuesArray) {
        if(paramValue !== undefined && paramValue !== null){
            ensureParameter(paramValue, paramName, paramType, functionName);
            var hasAllowedValue = false;
            for(var i in allowedValuesArray){
                if(allowedValuesArray.hasOwnProperty(i)){
                    var allowedValue = allowedValuesArray[i];
                    if(paramValue === allowedValue){
                        hasAllowedValue = true;
                    }
                }
            }
            if(!hasAllowedValue){
                throw new Error(functionName + ': function called with invalid value for param: "' + paramName + '".' +
                                                  'Allowed values: ' + JSON.stringify(allowedValuesArray));
            }
        }
    };

    var ensureExists = function(value, valueType, functionName, errorMessage) {
        if(value === null || value === undefined || value === '') {
            throw new Error(functionName + ': ' + errorMessage);
        }
        if(typeof value !== valueType) {
            throw new Error(functionName + ': Type exception: Expected type "' + valueType + '"');
        }
    };

    AbstractReport.prototype.uuid = function(){
        return new ReportID().toString();
    };

    AbstractReport.prototype.getPrefix = function(){
        var model = this.getModel();
        ensureExists(model, 'object', 'getPrefix', 'Report doesn\'t have a model.');
        if(_.isString(model.Prefix)){
            return model.Prefix;
        }

        // try to guess the prefix
        var concepts = this.listConcepts();
        if(concepts.length === 0){
            // no chance to guess the prefix
            return null;
        }
        var map = concepts.reduce(function (prefixes, concept) {
            var found = concept.Name.indexOf(':');
            if(found !== -1){
                var prefix = concept.Name.substring(0,found);
                prefixes[prefix] = (prefixes[prefix] || 0) + 1;
            }
            return prefixes;
        }, {});
        var allPrefixes = Object.keys(map).sort(function (a, b) {
            return map[a] < map[b];
        });
        model.Prefix = allPrefixes[0];
        return model.Prefix;
    };

    AbstractReport.prototype.getModel = function(){
        if(this.model.Concepts === undefined || this.model.Concepts === null){
            this.model.Concepts = [];
        }
        return this.model;
    };

    /**********************
     ** Concepts API
     **********************/
    AbstractReport.prototype.PeriodTypes =
        {
            'DURATION': 'duration',
            'INSTANT': 'instant'
        };
    AbstractReport.prototype.BalanceTypes =
        {
            'CREDIT': 'credit',
            'DEBIT': 'debit'
        };

    // http://www.xbrl.org/Specification/XBRL-RECOMMENDATION-2003-12-31+Corrected-Errata-2008-07-02.htm#_Ref69000723
    AbstractReport.prototype.DataTypes =
        {
            'SHARES': 'xbrli:sharesItemType',
            'MONETARY': 'xbrli:monetaryItemType',
            'PURE': 'xbrli:pureItemType',
            'STRING': 'xbrli:stringItemType',
            'TEXTBLOCK': 'nonnum:textBlockItemType',
            'BOOLEAN': 'xbrli:booleanItemType'
        };
    AbstractReport.prototype.BaseTypes =
        {
            'xbrli:sharesItemType': 'xbrli:shares',
            'xbrli:monetaryItemType': 'xbrli:monetary',
            'xbrli:pureItemType': 'xbrli:pure',
            'xbrli:stringItemType': 'xs:string',
            'nonnum:textBlockItemType': 'xs:string',
            'xbrli:booleanItemType': 'xs:boolean'
        };
    AbstractReport.prototype.SchemaTypes =
        {
            'xbrli:sharesItemType': 'xs:decimal',
            'xbrli:monetaryItemType': 'xs:decimal',
            'xbrli:pureItemType': 'xs:decimal',
            'xbrli:stringItemType': 'xs:string',
            'nonnum:textBlockItemType': 'xs:string',
            'xbrli:booleanItemType': 'xs:boolean'
        };

    AbstractReport.prototype.addConcept = function(oname, label, abstract, periodType, dataType, balance) {
        var name = this.alignConceptPrefix(oname);
        ensureConceptName(name, 'oname', 'addConcept');
        ensureParameter(label, 'label', 'string', 'addConcept');
        ensureParameter(abstract, 'abstract', 'boolean', 'addConcept');
        ensureOptionalParameterValue(periodType, 'periodType', 'string', 'addConcept', _.values(this.PeriodTypes));
        ensureOptionalParameterValue(dataType, 'dataType', 'string', 'addConcept', _.values(this.DataTypes));
        ensureOptionalParameterValue(balance, 'balance', 'string', 'addConcept', _.values(this.BalanceTypes));

        if(this.existsConcept(name)) {
            throw new Error('addConcept: concept with name "' + name + '" already exists.');
        }

        var model = this.getModel();
        var member = {
            'Id': new ReportID().toString(),
            'Name': name,
            'Label': label
        };
        var concept =
            {
                'Id': new ReportID().toString(),
                'Name': name,
                'Label': label,
                'IsAbstract': abstract,
                'IsNillable': true,
                'SubstitutionGroup': 'xbrl:item',
                'Labels': [
                    {
                        'Role': 'http://www.xbrl.org/2003/role/label',
                        'Language': 'en-us',
                        'Value': label
                    }
                ]
            };
        if(balance !== undefined && balance !== null){
            concept.Balance = balance;
        }
        if(periodType !== undefined && periodType !== null){
            concept.PeriodType = periodType;
        }
        if(dataType !== undefined && dataType !== null){
            concept.DataType = dataType;
            concept.BaseType = this.BaseTypes[dataType];
            concept.ClosestSchemaBuiltinType = this.SchemaTypes[dataType];
            if(concept.DataType === this.DataTypes.TEXTBLOCK){
                concept.IsTextBlock = true;
            }
        }
        model.Hypercubes['xbrl28:ImpliedTable']
            .Aspects['xbrl:Concept']
            .Members.push(member);
        model.Concepts.push(concept);
    };

    AbstractReport.prototype.updateConcept = function(oname, label, abstract, periodType, dataType, balance) {
        var name = this.alignConceptPrefix(oname);
        ensureConceptName(name, 'oname', 'updateConcept');
        ensureParameter(label, 'label', 'string', 'updateConcept');
        ensureOptionalParameterValue(periodType, 'periodType', 'string', 'addConcept', _.values(this.PeriodTypes));
        ensureOptionalParameterValue(dataType, 'dataType', 'string', 'addConcept', _.values(this.DataTypes));
        ensureOptionalParameterValue(balance, 'balance', 'string', 'addConcept', _.values(this.BalanceTypes));
        abstract = abstract === true;

        if(!this.existsConcept(name)) {
            throw new Error('updateConcept: cannot update concept with name "' + name + '" because it doesn\'t exist.');
        }

        var concept = this.getConcept(name);
        if(balance !== undefined && balance !== null){
            concept.Balance = balance;
        } else {
            delete concept.Balance;
        }
        if(periodType !== undefined && periodType !== null){
            concept.PeriodType = periodType;
        } else {
            delete concept.PeriodType;
        }
        if(dataType !== undefined && dataType !== null){
            concept.DataType = dataType;
            concept.BaseType = this.BaseTypes[dataType];
            concept.ClosestSchemaBuiltinType = this.SchemaTypes[dataType];
            if(concept.DataType === this.DataTypes.TEXTBLOCK){
                concept.IsTextBlock = true;
            } else {
                delete concept.IsTextBlock;
            }
        } else {
            delete concept.DataType;
            delete concept.BaseType;
            delete concept.ClosestSchemaBuiltinType;
            delete concept.IsTextBlock;
        }
        var that = this;
        if(concept.IsAbstract !== abstract && !abstract) {
            // a concept can only be non-abstract if it has no children in presentation
            var elementIds = this.findInTree('Presentation', name);
            _.each(elementIds, function(id){
                var element = that.getElementFromTree('Presentation', id);
                if (_.isObject(element.To) && Object.keys(element.To).length > 0) {
                    throw new Error('updateConcept: cannot make concept with name "' + name + '" non-abstract because it exists with children in the presentation tree.');
                }
            });
        } else if(concept.IsAbstract !== abstract && abstract){
            var references = this.findConceptReferences(name);
            if(references.ConceptMaps.SynonymOf.length +
                references.ConceptMaps.Maps.length +
                references.Rules.Computing.length +
                references.Rules.Validating.length +
                references.Rules.Dependent.length > 0){
                var msg = 'updateConcept: Cannot make concept with name "' + name + '" abstract because it has the following definitions: ';
                var count = 0;
                if (references.ConceptMaps.SynonymOf.length > 0){
                    msg += references.ConceptMaps.SynonymOf.length + ' appearances as Synonym';
                    count++;
                }
                if (references.ConceptMaps.Maps.length > 0){
                    if(count > 0){
                        msg += ', ';
                    }
                    msg += 'several Synonyms';
                    count++;
                }
                if (references.Rules.Computing.length > 0){
                    if(count > 0){
                        msg += ', ';
                    }
                    msg += references.Rules.Computing.length + ' Formulas';
                    count++;
                }
                if (references.Rules.Validating.length > 0){
                    if(count > 0){
                        msg += ', ';
                    }
                    msg += references.Rules.Validating.length + ' Validations';
                    count++;
                }
                if (references.Rules.Dependent.length > 0){
                    if(count > 0){
                        msg += ', ';
                    }
                    msg += references.Rules.Dependent.length + ' times used in other Formulas';
                }
                msg += ' (None of these are allowed for abstract concepts).';
                throw new Error(msg);
            }
        }
        concept.Label = label;
        if(concept.Labels === undefined || concept.Labels === null) {
            concept.Labels = [
                    {
                        'Role': 'http://www.xbrl.org/2003/role/label',
                        'Language': 'en-us',
                        'Value': label
                    }
                ];
        } else {
            concept.Labels[0].Value = label;
        }
        concept.IsAbstract = abstract;
    };

    AbstractReport.prototype.findConceptReferences = function(oConceptName) {
        var conceptName = this.alignConceptPrefix(oConceptName);
        ensureConceptName(conceptName, 'oConceptName', 'findConceptReferences');

        var references = {
            'Trees': this.findInTrees(conceptName),
            'ConceptMaps' : this.findInConceptMap(conceptName),
            'Rules': this.findInRules(conceptName)
        };
        var refCount = 0;
        _.each(references, function(subRefCats){
            _.each(subRefCats,function(subRefCat){
                if(_.isArray(subRefCat)){
                    refCount += subRefCat.length;
                }
            });
        });
        references.References = refCount;
        return references;
    };

    AbstractReport.prototype.removeConcept = function(oname, force) {
        var name = this.alignConceptPrefix(oname);
        ensureConceptName(name, 'oname', 'removeConcept');

        force = force === true;

        if(!this.existsConcept(name)){
            throw new Error('removeConcept: cannot remove concept with name "' + name + '" from model because it doesn\'t exist.');
        }

        var references = this.findConceptReferences(name);
        if(!force && references.References > 0 ){
            throw new ConceptIsStillReferencedError('removeConcept: cannot remove concept with name "' + name +
                    '" from model because it is still referenced in the report.', references);
        } else if(force) {
            var that = this;
            if(references.Rules){
                if(references.Rules.Dependent !== undefined && references.Rules.Dependent !== null && references.Rules.Dependent.length > 0){
                    throw new Error('removeConcept: cannot force removing concept with name "' + name + '" from model because the following ' + references.Rules.Dependent.length +
                        ' rules still depend on this concept.');
                }
                if(references.Rules.Computing !== undefined && references.Rules.Computing !== null && references.Rules.Computing.length > 0){
                    _.each(references.Rules.Computing, function(id){
                        $log.log('removing ' + name + ' computing rule ' + id);
                        that.removeRule(id);
                    });
                }
                if(references.Rules.Validating !== undefined && references.Rules.Validating !== null && references.Rules.Validating.length > 0){
                    _.each(references.Rules.Validating, function(id){
                        $log.log('removing ' + name + ' validating rule ' + id);
                        that.removeRule(id);
                    });
                }
            }
            if(references.ConceptMaps) {
                _.each(references.ConceptMaps.Maps, function(id){
                    $log.log('removing synonyms map for ' + id);
                    that.removeConceptMap(id);
                });
                _.each(references.ConceptMaps.SynonymOf, function(id){
                    $log.log('removing ' + name + ' as synonym of ' + id);
                    that.removeSynonym(id, name);
                });
            }
            _.each(references.Trees.Presentation, function(id){
                $log.log('removing presentation element ' + name + ' (' + id + ')');
                that.removeTreeBranch('Presentation', id);
            });
        }

        var model = this.getModel();

        // remove concept from members
        var members = model.Hypercubes['xbrl28:ImpliedTable']
            .Aspects['xbrl:Concept']
            .Members;
        _.each(members, function(member,index){
            if(member.Name === name){
                members.splice(index, 1);
            }
        });

        // remove concept from Concepts field
        var concepts = model.Concepts;
        _.each(concepts, function(concept,index){
            if(concept.Name === name){
                concepts.splice(index, 1);
            }
        });
    };

    AbstractReport.prototype.existsConcept = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'existsConcept');

        var concept = this.getConcept(conceptName);
        return _.isObject(concept);
    };

    AbstractReport.prototype.getConcept = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'getConcept');

        var model = this.getModel();
        if(!_.isObject(model)) {
            return;
        }

        var concepts = model.Concepts;
        return _.find(concepts, function(concept){
            return concept.Name === conceptName;
        });
    };

    AbstractReport.prototype.listConcepts = function() {
        var model = this.getModel();
        if(model === null || model === undefined) {
            return [];
        }
        return model.Concepts;
    };

    /**********************
     ** Trees API
     **********************/
    AbstractReport.prototype.getNetwork = function(networkShortName) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'getNetwork');

        var model = this.getModel();
        if(!_.isObject(model)) {
            return;
        }

        var networks = model.Networks;
        if(!_.isArray(networks)) {
            return;
        }

        return _.find(networks, function(network){
            return network.ShortName === networkShortName;
        });
    };

    AbstractReport.prototype.listTrees = function(networkShortName) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'listTrees');

        var network = this.getNetwork(networkShortName);
        if(network === null || network === undefined) {
            return [];
        }

        // return copy of array
        return _.map(network.Trees, function(tree){
            return tree;
        });
    };

    AbstractReport.prototype.findInSubTree = function(conceptName, subtree) {
        var result = [];
        var that = this;
        if(subtree.Name === conceptName){
            result.push(subtree.Id);
        }
        return _.chain(subtree.To)
            .map(function(child){
                return that.findInSubTree(conceptName, child);
            })
            .filter(function(subTreeResults){
                return subTreeResults.length > 0;
            })
            .reduce(function(result, subTreeResults){
                return _.union(result, subTreeResults);
            }, result)
            .value();
    };

    AbstractReport.prototype.findInTrees = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'findInTrees');

        return {
            Presentation: this.findInTree('Presentation', conceptName)
        };
    };

    AbstractReport.prototype.findInTree = function(networkShortName, oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'findInTree');
        ensureNetworkShortName(networkShortName, 'networkShortName', 'findInTree');

        var that = this;
        var network = this.getNetwork(networkShortName);
        return _.chain(network.Trees)
            .map(function(child){
                return that.findInSubTree(conceptName, child);
            })
            .filter(function(subTreeResults){
                return subTreeResults.length > 0;
            })
            .reduce(function(result, subTreeResults){
                return _.union(result, subTreeResults);
            }, [])
            .value();
    };

    var getElementByIdFromSubTree = function(elementID, subtree) {
        if(subtree.Id === elementID){
            return subtree;
        }
        var result;
        _.each(subtree.To, function(child){
            var found = getElementByIdFromSubTree(elementID, child);
            if(found !== undefined){
                result = found;
            }
        });
        return result;
    };

    AbstractReport.prototype.getElementFromTree = function(networkShortName, elementID) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'getElementFromTree');
        ensureParameter(elementID, 'elementID', 'string', 'getElementFromTree');

        var network = this.getNetwork(networkShortName);
        var result;
        _.each(network.Trees, function(tree){
            var found = getElementByIdFromSubTree(elementID, tree);
            if(found !== undefined){
                result = found;
            }
        });
        return result;
    };

    AbstractReport.prototype.sortTreeChildren = function(children){
        ensureParameter(children, 'children', 'object', 'sortTreeChildren');
        children.sort(function(elem1, elem2){
            var order1 = elem1.Order;
            if(order1 === undefined || order1 === null){
                order1 = 1;
            } else if(!_.isNumber(order1)){
                order1 = parseInt(order1, 10);
            }
            var order2 = elem2.Order;
            if(order2 === undefined || order2 === null){
                order2 = 1;
            } else if(!_.isNumber(order2)){
                order2 = parseInt(order2, 10);
            }
            if (order1 < order2){
                return -1;
            }
            if (order1 > order2){
                return 1;
            }
            return 0;
        });
        return children;
    };

    var enforceStrictChildOrderAndShift = function(report, networkShortName, parentID, shiftOffset) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'enforceStrictChildOrder');

        if(shiftOffset === undefined || shiftOffset === null){
            shiftOffset = -1;
        }
        var network = report.getNetwork(networkShortName);
        var children = network.Trees;
        if(parentID !== undefined && parentID !== null) {
            ensureParameter(parentID, 'parentID', 'string', 'enforceStrictChildOrder');
            var parent = report.getElementFromTree(networkShortName, parentID);
            ensureExists(parent, 'object', 'enforceStrictChildOrder', 'cannot enforce strict child order. Parent with id "' + parentID + '" doesn\'t exist.');
            children = parent.To;
        }

        var ordered = _.map(children, function(child){ return child; });
        report.sortTreeChildren(ordered);
        _.each(ordered, function(element, index){
            if(shiftOffset !== -1 && index >= shiftOffset){
                element.Order = index + 2;
            } else {
                element.Order = index + 1;
            }
        });
    };

    var getParentElementFromSubTree = function(elementID, subtree) {
        var parent;
        _.each(subtree.To, function(child){
            if(child.Id === elementID) {
                parent = subtree;
            } else {
                var childresult = getParentElementFromSubTree(elementID, child);
                if(childresult !== undefined) {
                    parent = childresult;
                }
            }
        });
        return parent;
    };

    AbstractReport.prototype.getParentElementFromTree = function(networkShortName, elementID) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'getParentElementFromTree');
        ensureParameter(elementID, 'elementID', 'string', 'getParentElementFromTree');

        var network = this.getNetwork(networkShortName);
        var parent;
        _.each(network.Trees, function(child){
            var result = getParentElementFromSubTree(elementID, child);
            if(result !== undefined) {
                parent = result;
            }
        });
        return parent;
    };

    AbstractReport.prototype.existsElementInTree = function(networkShortName, elementID) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'existsElementInTree');
        ensureParameter(elementID, 'elementID', 'string', 'existsElementInTree');

        var element = this.getElementFromTree(networkShortName, elementID);
        return _.isObject(element);
    };

    AbstractReport.prototype.createNewElement = function(conceptOrConceptName, order) {
        var concept;
        if(_.isString(conceptOrConceptName)){
            var conceptName = this.alignConceptPrefix(conceptOrConceptName);
            ensureConceptName(conceptName, 'conceptOrConceptName', 'createNewElement');
            concept = this.getConcept(conceptName);
            ensureExists(concept, 'object', 'createNewElement', 'concept with name "' + conceptName + '" doesn\'t exist.');
        } else {
            concept = conceptOrConceptName;
            ensureParameter(concept, 'conceptOrConceptName', 'object', 'createNewElement');
        }
        var _order = 1;
        if(order !== undefined) {
            ensureParameter(order, 'order', 'number', 'createNewElement');
            _order = order;
        }
        return {
            Id: new ReportID().toString(),
            Name : concept.Name,
            Label : concept.Label,
            Order : _order
        };
    };

    var getMaxOrder = function(report, networkShortName, parentElementID){
        ensureNetworkShortName(networkShortName, 'networkShortName', 'getMaxOrder');
        var network = report.getNetwork(networkShortName);
        if(!_.isObject(network)){
            return 0;
        }
        var children = network.Trees;
        if(parentElementID !== undefined && parentElementID !== null) {
            var parent = report.getElementFromTree(networkShortName, parentElementID);
            children = parent.To;
        }
        var count = 0;
        _.each(children, function(){ count += 1; });
        return count;
    };

    var determineOrder = function(report, networkShortName, parentElementID, offset, doEnforceStrictChildOrder){
        // determine order
        var order = 1;
        var maxOrder = getMaxOrder(report, networkShortName, parentElementID);
        if(offset !== undefined && offset !== null){
            order = offset + 1;
        } else {
            offset = 0; // default
        }
        if(offset > (maxOrder)){
            throw new Error('determineOrder: offset out of bounds: ' + offset +
                ' (Max offset is ' + maxOrder + ' for parent ' + parentElementID  + '.');
        }
        if(doEnforceStrictChildOrder) {
            enforceStrictChildOrderAndShift(report, networkShortName, parentElementID, offset);
        }
        return order;
    };

    // determine an Element either from:
    // 1. concept name which will create a new element with the desired order
    // 2. element which will return the element with the desired order
    var determineElement = function(report, elementOrConceptName, order){
        var element;
        if(_.isString(elementOrConceptName)){
            var conceptName = report.alignConceptPrefix(elementOrConceptName);
            ensureConceptName(conceptName, 'conceptName', 'determineElement');
            var concept = report.getConcept(conceptName);
            ensureExists(concept, 'object', 'determineElement', 'concept with name "' + conceptName + '" doesn\'t exist.');
            element = report.createNewElement(concept);
        } else {
            element = elementOrConceptName;
            ensureParameter(element, 'elementOrConceptName', 'object', 'determineElement');
        }
        element.Order = order;
        return element;
    };

    /*
    * @abstract: Needs to be overriden in implementing class
    * */
    AbstractReport.prototype.newDefinitionModel = function(/* label, role, source */) {
        throw new Error('Not implemented.');
    };

    /* *
       idempotent function to make sure a report has a single proper definition model in place.
    * */
    var addDefinitionModel = function(report){
        var model = report.getModel();
        var label = model.Label;
        var role = model.Role;
        var rootElem = report.getRootElement('Presentation');
        var source = rootElem ? rootElem.Name : '';

        model.DefinitionModels = report.newDefinitionModel(label, role, source);
    };

    AbstractReport.prototype.getRootElement = function(networkShortName) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'getRootElement');
        var rootElem;
        var network = this.getNetwork('Presentation');
        if (_.isObject(network) && _.isArray(network.Trees) && network.Trees.length > 0) {
            rootElem = network.Trees[0];
        } else if (_.isObject(network) && _.isObject(network.Trees) && Object.keys(network.Trees).length > 0) {
            rootElem = network.Trees[Object.keys(network.Trees)[0]];
        }
        return rootElem;
    };

    // check wheter a concept is used as root element in a network
    AbstractReport.prototype.isConceptUsedAsRootElement = function(networkShortName, oConceptName){
        ensureNetworkShortName(networkShortName, 'networkShortName', 'isConceptUsedAsRootElement');
        var conceptName = this.alignConceptPrefix(oConceptName);
        ensureConceptName(conceptName, 'oconceptName', 'isConceptUsedAsRootElement');
        var isRootElem = false;
        var elementIds = this.findInTree(networkShortName, conceptName);
        var that = this;
        _.each(elementIds, function (id) {
            var parent = that.getParentElementFromTree(networkShortName, id);
            if (parent === undefined || parent === null) {
                isRootElem = true;
            }
        });
        return isRootElem;
    };

    // check wheter an element is used as root element in a network
    AbstractReport.prototype.isRootElement = function(networkShortName, element){
        ensureNetworkShortName(networkShortName, 'networkShortName', 'isRootElement');
        var isRootElem = false;
        ensureParameter(element, 'elementOrConceptName', 'object', 'isRootElement');
        var parent = this.getParentElementFromTree(networkShortName, element.Id);
        if (parent === undefined || parent === null) {
            isRootElem = true;
        }
        return isRootElem;
    };

    AbstractReport.prototype.addElement = function(networkShortName, elementOrConceptName, offset, parentElementID){
        ensureNetworkShortName(networkShortName, 'networkShortName', 'addElement');
        ensureOptionalParameter(offset, 'offset', 'number', 'addElement');
        var rootElem = this.getRootElement('Presentation');

        // determine order
        var order = determineOrder(this,networkShortName, parentElementID, offset, true);

        // determine element
        var element = determineElement(this, elementOrConceptName, order);

        if((parentElementID === undefined || parentElementID === null) && rootElem === undefined) {
            // add a root element (only one allowed)
            var network = this.getNetwork(networkShortName);
            network.Trees.push(element);
            return element;
        }

        var parent;
        if(parentElementID === undefined || parentElementID === null){
            parent = rootElem;
        } else {
            // add child to existing tree
            ensureParameter(parentElementID, 'parentElementID', 'string', 'addElement');
            parent = this.getElementFromTree(networkShortName, parentElementID);
            ensureExists(parent, 'object', 'addElement', 'cannot add child to tree. Parent with id "' + parentElementID + '" doesn\'t exist.');
        }

        // ensure parent is abstract
        var parentConcept = this.getConcept(parent.Name);
        if(!parentConcept.IsAbstract) {
            throw new Error('addElement: cannot add child to parent "' + parentElementID +
                '". Reason: Parent concept "' + parent.Name  + '" is not abstract.');
        }

        if(parent.To === undefined || parent.To === null) {
            parent.To = [];
        }

        parent.To.push(element);
        this.sortTreeChildren(parent.To);
        return element;
    };

    AbstractReport.prototype.moveTreeBranch = function(networkShortName, subtreeRootElementID, newParentElementID, newOffset) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'moveTreeBranch');
        ensureParameter(subtreeRootElementID, 'subtreeRootElementID', 'string', 'moveTreeBranch');

        var newOrder = determineOrder(this,networkShortName, newParentElementID, newOffset, false);

        if(newParentElementID !== undefined && newParentElementID !== null){
            ensureParameter(newParentElementID, 'newParentElementID', 'string', 'moveTreeBranch');

            var newParent = this.getElementFromTree(networkShortName, newParentElementID);
            ensureExists(newParent, 'object', 'moveTreeBranch', 'Cannot move element with id "' + subtreeRootElementID + '" to new parent element with id "' +
                newParentElementID + '": Parent element doesn\'t exist.');
            var parentConcept = this.getConcept(newParent.Name);
            if(networkShortName !== 'ConceptMap' && !parentConcept.IsAbstract) {
                throw new Error('moveTreeBranch: cannot move element to target parent "' + newParentElementID +
                    '". Reason: Parent concept "' + newParent.Name  + '" is not abstract.');
            } else if(networkShortName === 'ConceptMap' && parentConcept.IsAbstract) {
                throw new Error('moveTreeBranch: cannot move element to target parent "' + newParentElementID +
                    '" in ConceptMap. Reason: Parent concept "' + newParent.Name  + '" is abstract.');
            }

            var element = this.removeTreeBranch(networkShortName, subtreeRootElementID);
            enforceStrictChildOrderAndShift(this, networkShortName, newParentElementID, (newOffset || 0));
            element.Order = newOrder;
            if(newParent.To === undefined || newParent.To === null) {
                newParent.To = [];
            }
            newParent.To.push(element);
            this.sortTreeChildren(newParent.To);
        } else {
            // no new parent given -> making it a root element -> not allowed
            throw new Error('moveTreeBranch: moving an element to ' + networkShortName + ' network root is not allowed.');
        }
    };

    AbstractReport.prototype.removeTreeBranch = function(networkShortName,subtreeRootElementID) {
        ensureNetworkShortName(networkShortName, 'networkShortName', 'removeTreeBranch');
        ensureParameter(subtreeRootElementID, 'subtreeRootElementID', 'string', 'removeTreeBranch');

        var element = this.getElementFromTree(networkShortName, subtreeRootElementID);
        ensureExists(element, 'object', 'removeTreeBranch', 'Cannot remove element with id "' + subtreeRootElementID + '" from network: Element doesn\'t exist.');
        var parent = this.getParentElementFromTree(networkShortName, subtreeRootElementID);
        if(parent === null || parent === undefined) {
            // deleting root not allowed
            throw new Error('removeTreeBranch: cannot remove root element from ' + networkShortName + ' tree.');
        } else {
            _.each(parent.To, function(elem, index){
                if(!_.isObject(elem) || elem.Id === element.Id) {
                    // remove rule from array
                    parent.To.splice(index,1);
                }
            });
        }
        return element;
    };

    /**********************
     ** Concept Maps API
     **********************/
    AbstractReport.prototype.getConceptMap = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'getConceptMap');

        var network = this.getNetwork('ConceptMap');
        if(network === null || network === undefined || network.Trees === null || network.Trees === undefined) {
            return null;
        }

        return _.find(network.Trees, function(tempMap){
            return tempMap.Name === conceptName;
        });
    };

    AbstractReport.prototype.listConceptMapSynonyms = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'listConceptMapSynonyms');

        var synonyms = [];
        var conceptMap = this.getConceptMap(conceptName);
        if (conceptMap === undefined || conceptMap === null){
            return synonyms;
        }

        // sort
        var ordered = [];
        _.each(conceptMap.To, function(child){
           ordered.push(child);
        });
        this.sortTreeChildren(ordered);
        _.each(ordered, function(synonym){
            synonyms.push(synonym.Name);
        });
        return synonyms;
    };

    AbstractReport.prototype.listConceptMaps = function() {
        var network = this.getNetwork('ConceptMap');
        if(!_.isObject(network) || !_.isArray(network.Trees)) {
            return [];
        }

        // return copy of array
        return _.map(network.Trees, function(tree){
            return tree;
        });
    };

    AbstractReport.prototype.existsConceptMap = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'existsConceptMap');

        var map = this.getConceptMap(conceptName);
        return (map !== null && map !== undefined);
    };

    AbstractReport.prototype.updateConceptMap = function(ofromConceptName, toConceptNamesArray) {
        var fromConceptName = this.alignConceptPrefix(ofromConceptName);
        ensureConceptName(fromConceptName, 'ofromConceptName', 'updateConceptMap');
        var fromConcept = this.getConcept(fromConceptName);
        ensureExists(fromConcept, 'object', 'updateConceptMap', 'concept with name "' + fromConceptName + '" doesn\'t exist.');
        if(fromConcept.IsAbstract) {
            throw new Error('updateConceptMap: cannot update concept map for concept "' + fromConceptName +
                '". Reason: Concept is abstract.');
        }

        var network = this.getNetwork('ConceptMap');
        if(network.Trees === null || network.Trees === undefined) {
            network.Trees = [];
        }

        // ensure Concept map exists
        var conceptMap = this.getConceptMap(fromConceptName);
        if(conceptMap === undefined || conceptMap === null){
            conceptMap = {
                'Id': new ReportID().toString(),
                'Name': fromConcept.Name
            };
            // add concept map to network
            network.Trees.push(conceptMap);
        }
        // reset
        conceptMap.To = [];

        // add synomyms
        var that = this;
        _.each(toConceptNamesArray, function(ocname, index){
            var name = that.alignConceptPrefix(ocname);
            ensureConceptName(name, 'toConceptNamesArray', 'updateConceptMap');
            conceptMap.To.push({
                'Id': new ReportID().toString(),
                'Name': name,
                'Order': index + 1
            });
        });
        this.sortTreeChildren(conceptMap.To);
    };

    AbstractReport.prototype.findInConceptMap = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'findInConceptMap');

        var result = {
            SynonymOf: [],
            Maps: []
        };
        var network = this.getNetwork('ConceptMap');
        if(network.Trees === null || network.Trees === undefined) {
            return result;
        }

        _.each(network.Trees, function(map){
            var to = _.find(map.To, function(synonym){
                return synonym.Name === conceptName;
            });
            if (map.Name === conceptName){
                result.Maps.push(map.Name);
            } else if(_.isObject(to)) {
                result.SynonymOf.push(map.Name);
            }
        });
        return result;
    };

    AbstractReport.prototype.removeConceptMap = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'removeConceptMap');

        var conceptMap = this.getConceptMap(conceptName);
        ensureExists(conceptMap, 'object', 'removeConceptMap', 'No concept map exists for concept with name "' + conceptName + '".');

        var network = this.getNetwork('ConceptMap');
        _.each(network.Trees, function(map,index){
            if(map.Name === conceptName){
                network.Trees.splice(index, 1);
            }
        });
    };


    AbstractReport.prototype.removeSynonym = function(oconceptName, oSynonym) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        var synonymName = this.alignConceptPrefix(oSynonym);
        ensureConceptName(conceptName, 'oconceptName', 'removeSynonym');
        ensureConceptName(synonymName, 'oSynonym', 'removeSynonym');

        var conceptMap = this.getConceptMap(conceptName);
        ensureExists(conceptMap, 'object', 'removeSynonym', 'No concept map exists for concept with name "' + conceptName + '".');

        if(conceptMap.To[synonymName]){
            delete conceptMap.To[synonymName];
        }
        _.each(conceptMap.To, function(synonym,index){
            if(synonym.Name === conceptName){
                conceptMap.To.splice(index, 1);
            }
        });
    };

    /**********************
     ** Rules API
     **********************/
    AbstractReport.prototype.getRule = function(id) {
        ensureParameter(id, 'id', 'string', 'getRule');

        var model = this.getModel();
        if(model === null || model === undefined || model.Rules === null || model.Rules === undefined || model.Rules.length === 0) {
            return null;
        }

        return _.find(model.Rules, function(rule){
            return rule.Id === id;
        });
    };

    AbstractReport.prototype.removeRule = function(id) {
        ensureParameter(id, 'id', 'string', 'removeRule');

        var model = this.getModel();
        if(!_.isObject(model) || !_.isArray(model.Rules) || model.Rules.length === 0) {
            return;
        }
        _.each(model.Rules, function(rule, index){
            if(!_.isObject(rule) || rule.Id === id) {
                // remove rule from array
                model.Rules.splice(index,1);
            }
        });
    };

    AbstractReport.prototype.existsRule = function(id) {
        ensureParameter(id, 'id', 'string', 'existsRule');

        var rule = this.getRule(id);
        return _.isObject(rule);
    };

    AbstractReport.prototype.validatedByRules = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'validatedByRules');

        var result = [];
        var model = this.getModel();
        ensureExists(model, 'object', 'validatedByRules', 'Report doesn\'t have a model.');

        if(!_.isArray(model.Rules)) {
            return result;
        }

        return _.chain(model.Rules)
            .filter(function(rule) {
                return _.indexOf(rule.ValidatedConcepts, conceptName) !== -1;
            })
            .value();
    };

    AbstractReport.prototype.computableByRules = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'computableByRules');

        var result = [];
        var model = this.getModel();
        ensureExists(model, 'object', 'computableByRules', 'Report doesn\'t have a model.');

        if(!_.isArray(model.Rules)) {
            return result;
        }

        return _.chain(model.Rules)
            .filter(function(rule) {
                return _.indexOf(rule.ComputableConcepts, conceptName) !== -1;
            })
            .value();
    };

    AbstractReport.prototype.findInRules = function(oconceptName) {
        var conceptName = this.alignConceptPrefix(oconceptName);
        ensureConceptName(conceptName, 'oconceptName', 'findInRules');

        var result = {
            Computing: [],
            Validating: [],
            Dependent: []
        };
        var model = this.getModel();
        ensureExists(model, 'object', 'findInRules', 'Report doesn\'t have a model.');

        if(!_.isArray(model.Rules)) {
            return result;
        }

        _.each(model.Rules, function(rule){
            var found = _.find(rule.ComputableConcepts, function(name){ return name === conceptName; });
            if(found){
                result.Computing.push(rule.Id);
            }
            found = _.find(rule.DependsOn, function(name){ return name === conceptName; });
            if(found){
                result.Dependent.push(rule.Id);
            }
            found = _.find(rule.ValidatedConcepts, function(name){ return name === conceptName; });
            if(found){
                result.Validating.push(rule.Id);
            }
        });
        return result;
    };

    // http://www.xbrl.org/utr/utr.xml
    AbstractReport.prototype.Units =
        {
            'PURE': 'xbrli:pureItemType',
            'SHARES': 'xbrli:shares',

            'AUD': 'iso4217:AUD',
            'CAD': 'iso4217:CAD',
            'CHF': 'iso4217:CHF',
            'CLP': 'iso4217:CLP',
            'EUR': 'iso4217:EUR',
            'GBP': 'iso4217:GBP',
            'INR': 'iso4217:INR',
            'JPY': 'iso4217:JPY'
        };

    var createNewRule = function(id, type, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals, report) {
        ensureParameter(id, 'id', 'string', 'createNewRule');
        ensureRuleType(type, 'type', 'createNewRule');
        ensureParameter(formula, 'formula', 'string', 'createNewRule');
        ensureExists(computableConceptsArray, 'object', 'createNewRule', 'function called without computableConceptsArray.');
        ensureOptionalParameterValue(unit, 'unit', 'string', 'createNewRule', _.values(report.Units));

        validateComputableConcepts(report, 'createNewRule', computableConceptsArray, id);
        validateDependingConceptsArray(report, 'createNewRule', dependingConceptsArray);
        validateValidatedConceptsArray(report, 'createNewRule', validatedConceptsArray);

        if(computableConceptsArray.length === 0) {
            throw new Error('createNewRule: rule of type "' + type + '" must have at least one computable concept. Function createNewRule was called with empty computableConceptsArray.');
        }

        var rule = {
            'Id': id,
            'Type': type,
            'Formula': formula,
            'ComputableConcepts': computableConceptsArray,
            'DependsOn': dependingConceptsArray
        };
        if(unit !== undefined && unit !== null && unit !== ''){
            rule.Unit = unit;
        }
        if(decimals !== undefined && decimals !== null && decimals !== ''){
            rule.Decimals = decimals;
        }

        if(type === 'xbrl28:validation') {
            ensureExists(validatedConceptsArray, 'object', 'createNewRule', 'function called without validatedConceptsArray.');
            if(validatedConceptsArray.length === 0) {
                throw new Error('validatedConceptsArray: rule of type "' + type +
                    '" must have at least one validateble concept. Function createNewRule was called with empty validatedConceptsArray.');
            }
            rule.ValidatedConcepts = validatedConceptsArray;
        }
        return rule;
    };

    var validateComputableConcepts = function(report, errorMsgPrefix, computableConceptsArray, ruleId) {
        ensureExists(computableConceptsArray[0], 'string', errorMsgPrefix, 'Mandatory computable concept missing.');
        _.each(computableConceptsArray, function(ocname){
            var cname = report.alignConceptPrefix(ocname);
            ensureConceptName(cname, 'computableConceptsArray', errorMsgPrefix, 'The computable concept name ' + cname + ' is not a valid concept name (correct pattern e.g. fac:Revenues).');
            var cconcept = report.getConcept(cname);
            if (!_.isObject(cconcept)) {
                throw new Error(errorMsgPrefix + ': the computable concept with name "' + cname +
                    '" does not exist. You need to create this concept or adapt it to an existing one before you can create the rule.');
            }
            var rulesComputableConcepts = report.computableByRules(cname);
            if (_.isArray(rulesComputableConcepts) && rulesComputableConcepts.length > 0 && rulesComputableConcepts[0].Id !== ruleId) {
                throw new Error(errorMsgPrefix + ': A rule which can compute facts for concept "' + cname + '" exists already: "' + rulesComputableConcepts[0].Id +
                    '". Currently, only one rule must be able to compute a fact for a certain concept.');
            }
        });
    };

    var validateDependingConceptsArray = function(report, errorMsgPrefix, dependingConceptsArray) {
        _.each(dependingConceptsArray, function(ocname){
            var dname = report.alignConceptPrefix(ocname);
            ensureConceptName(dname, 'dependingConceptsArray', errorMsgPrefix, 'The dependency concept name ' + dname +
                ' is not a valid concept name (correct pattern e.g. fac:Revenues).');
            var dconcept = report.getConcept(dname);
            if (!_.isObject(dconcept)) {
                throw new Error(errorMsgPrefix + ': A concept with name "' + dname +
                    '" does not exist (as used in the dependencies). You need to create this concept or remove it from the dependencies before you can create the rule.');
            }
        });
    };

    var validateValidatedConceptsArray = function(report, errorMsgPrefix, validatedConceptsArray) {
        _.each(validatedConceptsArray, function(ocname){
            var vname = report.alignConceptPrefix(ocname);
            ensureConceptName(vname, 'validatedConceptsArray', errorMsgPrefix, 'The validated concept name ' + vname +
                ' is not a valid concept name (correct pattern e.g. fac:Revenues).');
            var vconcept = report.getConcept(vname);
            if (!_.isObject(vconcept)) {
                throw new Error(errorMsgPrefix + ': The validated concept with name "' + vname +
                    '" does not exist. You need to create this concept or adapt it to an existing one before you can create the rule.');
            }
        });
    };

    var validate = function(report, errorMsgPrefix, action, id, type, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals){
        ensureExists(id, 'string', errorMsgPrefix, 'Mandatory Id missing.');
        var existingRule = report.getRule(id);
        if(action === 'Create' && existingRule !== undefined && existingRule !== null){
            throw new Error(errorMsgPrefix + ': Rule with ID "' + id + '" already exists!');
        } else if(action === 'Update' && (existingRule === undefined || existingRule === null)){
            throw new Error(errorMsgPrefix + ': Rule with ID "' + id + '" doesn\'t exist!');
        } else if(action !== 'Create' && action !== 'Update'){
            throw new Error(errorMsgPrefix + ': Unknown action "' + action + '"!');
        }
        ensureExists(formula, 'string', errorMsgPrefix, 'Cannot store rule with empty source code.');
        if(decimals !== undefined && typeof decimals !== 'number' && decimals !== 'INF'){
            throw new Error(errorMsgPrefix + ': Invalid decimals value "' + decimals + '"');
        }
        validateComputableConcepts(report, errorMsgPrefix, computableConceptsArray, id);
        validateDependingConceptsArray(report, errorMsgPrefix, dependingConceptsArray);
        validateValidatedConceptsArray(report, errorMsgPrefix, validatedConceptsArray);
    };

    AbstractReport.prototype.updateRule = function(rule){
        var id = rule.Id;
        var language = rule.OriginalLanguage;
        var type = rule.Type;
        var formula = rule.Formula;
        var computableConceptsArray = rule.ComputableConcepts;
        var dependingConceptsArray = rule.DependsOn;
        var validatedConceptsArray = rule.ValidatedConcepts;
        var unit = rule.Unit;
        var decimals = rule.Decimals;
        validate(this, 'Rule Updating Error', 'Update', id, type, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals);
        if(type === 'xbrl28:formula' && language === undefined){
            this.setFormulaRule(id, formula, computableConceptsArray, dependingConceptsArray, unit, decimals);
        } else if (type === 'xbrl28:validation' && language === undefined) {
            this.setValidationRule(id, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals);
        } else if (language === 'SpreadsheetFormula') {
            var model = this.getModel();
            ensureExists(model, 'object', 'updateRule', 'Report doesn\'t have a model.');

            this.removeRule(id);
            model.Rules.push(rule);
        }
    };

    AbstractReport.prototype.createRule = function(rule){
        var id = rule.Id;
        var language = rule.OriginalLanguage;
        var type = rule.Type;
        var formula = rule.Formula;
        var computableConceptsArray = rule.ComputableConcepts;
        var dependingConceptsArray = rule.DependsOn;
        var validatedConceptsArray = rule.ValidatedConcepts;
        var unit = rule.Unit;
        var decimals = rule.Decimals;
        validate(this, 'Rule Creation Error', 'Create', id, type, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals);
        if(type === 'xbrl28:formula' && language === undefined){
            this.setFormulaRule(id, formula, computableConceptsArray, dependingConceptsArray, unit, decimals);
        } else if (type === 'xbrl28:validation' && language === undefined) {
            this.setValidationRule(id, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals);
        } else if (language === 'SpreadsheetFormula') {
            var model = this.getModel();
            ensureExists(model, 'object', 'createRule', 'Report doesn\'t have a model.');

            if(!_.isArray(model.Rules)) {
                model.Rules = [];
            }
            model.Rules.push(rule);
        }
    };

    AbstractReport.prototype.setFormulaRule = function(id, formula, computableConceptsArray, dependingConceptsArray, unit, decimals){
        // sanity checks are done in createNewRule
        var rule = createNewRule(id, 'xbrl28:formula', formula, computableConceptsArray, dependingConceptsArray, null, unit, decimals, this);

        var model = this.getModel();
        ensureExists(model, 'object', 'setFormulaRule', 'Report doesn\'t have a model.');

        if(!_.isArray(model.Rules)) {
            model.Rules = [];
        }
        if(this.existsRule(id)) {
            this.removeRule(id);
        }
        model.Rules.push(rule);
    };

    AbstractReport.prototype.setValidationRule = function(id, formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals){
        // sanity checks are done in createNewRule
        var rule = createNewRule(id, 'xbrl28:validation', formula, computableConceptsArray, dependingConceptsArray, validatedConceptsArray, unit, decimals, this);

        var model = this.getModel();
        ensureExists(model, 'object', 'setValidationRule', 'Report doesn\'t have a model.');

        if(!_.isArray(model.Rules)) {
            model.Rules = [];
        }
        if(this.existsRule(id)) {
            this.removeRule(id);
        }
        model.Rules.push(rule);
    };

    AbstractReport.prototype.listValidatingRules = function(concept){

        var result = [];
        var model = this.getModel();
        if (!_.isObject(model) || _.isArray(model.Rules)) {
            return result;
        }
        if (_.isObject(concept)) {
            ensureParameter(concept, 'concept', 'string', 'listValidatingRules');
            result = this.validatedByRules(concept);
        }
        return result;
    };

    AbstractReport.prototype.listRules = function(concept, rulesType){

        if(!_.isString(rulesType)) {
            var result = [];
            var model = this.getModel();
            if (!_.isObject(model) || !_.isArray(model.Rules)) {
                return result;
            }
            if (_.isString(concept)) {
                ensureParameter(concept, 'concept', 'string', 'listRules');
                result = this.computableByRules(concept);
            } else {
                result = model.Rules;
            }
            return result;
        }else if(rulesType === 'xbrl28:formula'){
            return this.listFormulaRules(concept);
        }else if(rulesType === 'xbrl28:validation'){
            return this.listValidationRules(concept);
        }else if(rulesType === 'SpreadsheetFormula'){
            return this.listSpreadsheetRules(concept);
        }
    };

    AbstractReport.prototype.listFormulaRules = function(concept){
        var rules = this.listRules(concept);
        return _.filter(rules, function(rule){
            return (rule.Type === 'xbrl28:formula');
        });
    };

    AbstractReport.prototype.listValidationRules = function(concept){
        var rules = this.listRules(concept);
        return _.filter(rules, function(rule){
            return (rule.Type === 'xbrl28:validation');
        });
    };

    AbstractReport.prototype.listSpreadsheetRules = function(concept){
        var rules = this.listRules(concept);
        return _.filter(rules, function(rule){
            return (rule.OriginalLanguage === 'SpreadsheetFormula');
        });
    };

    AbstractReport.prototype.alignConceptPrefix = function(concept){
        var prefix = this.getPrefix();
        var result;
        if(_.isString(concept)) {
            if (concept.indexOf(':') === -1) {
                result = prefix + ':' + concept;
            } else {
                result = concept;
            }
        }
        return result;
    };

    AbstractReport.prototype.hideDefaultConceptPrefix = function(concept){
        var prefix = this.getPrefix();
        var result;
        if(_.isString(concept)) {
            if(concept.indexOf(prefix + ':') === 0){
                result = concept.substring(prefix.length + 1);
            } else {
                result = concept;
            }
        }
        return result;
    };

    AbstractReport.prototype.hideDefaultConceptPrefixes = function(conceptsArray){
        var that = this;
        return _.map(conceptsArray, function(ocname){
            return that.hideDefaultConceptPrefix(ocname);
        });
    };

    AbstractReport.prototype.alignConceptPrefixes = function(conceptsArray){
        var that = this;
        return _.map(conceptsArray, function(ocname){
            return that.alignConceptPrefix(ocname);
        });
    };

    /**********************
     ** Filters API
     **********************/
    AbstractReport.prototype.resetFilters = function(){
        var model = this.getModel();
        model.Filters = {
            'cik': [],
            'tag': [ 'DOW30' ],
            'fiscalYear': [],
            'fiscalPeriod': [],
            'fiscalPeriodType': ['instant', 'YTD'],
            'sic': []
        };
        return model.Filters;
    };

    AbstractReport.prototype.getFilters = function(){
        var model = this.getModel();
        return model.Filters;
    };

    var getAspectEnumeration = function(report, aspectName){
        var model = report.getModel();
        var result = [];
        var aspect =
            model.Hypercubes['xbrl28:ImpliedTable']
                .Aspects[aspectName];
        if(aspectName === 'xbrl:Concept' && aspect.Domains && aspect.Domains['xbrl:ConceptDomain'] && aspect.Domains['xbrl:ConceptDomain'].Members ){
            return Object.keys(aspect.Domains['xbrl:ConceptDomain'].Members);
        }
        if(aspect === undefined || aspect.DomainRestriction === undefined || aspect.DomainRestriction.Enumeration === undefined){
            return result;
        }
        return aspect.DomainRestriction.Enumeration;
    };

    var setAspect = function(report, aspectName, aspect){
        var model = report.getModel();
        model.Hypercubes['xbrl28:ImpliedTable']
            .Aspects[aspectName] = aspect;
    };

    /*
     * @abstract: Needs to be overriden in implementing class
     * */
    AbstractReport.prototype.hasSufficientFilters = function(){
        throw new Error('Not implemented.');
    };

    AbstractReport.prototype.countAspectsRestrictions = function(arrayOfAspectNames){
        ensureParameter(arrayOfAspectNames, 'arrayOfAspectNames', 'object', 'countAspectsRestrictions');

        var count = 0;
        var that = this;
        _.each(arrayOfAspectNames, function(aspectName){
            var aspects = getAspectEnumeration(that, aspectName);
            if(aspects !== undefined && aspects.length !== undefined) {
                count += aspects.length;
            }
        });
        return count;
    };

    AbstractReport.prototype.updateAspects = function(aspects){
        ensureParameter(aspects, 'aspects', 'object', 'updateAspects');

        // xbrl:Entity
        if(aspects['xbrl:Entity'] && aspects['xbrl:Entity'].length > 0){
            var entities = [];
            aspects['xbrl:Entity'].forEach(
                function(cik){
                    if(cik.indexOf('http://www.sec.gov/CIK ') === 0){
                        entities.push(cik);
                    } else {
                        entities.push('http://www.sec.gov/CIK ' + cik);
                    }
                });
            setAspect(this, 'xbrl:Entity',
                {
                    'Name': 'xbrl:Entity',
                    'Label': 'Reporting Entity [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string',
                    'DomainRestriction': {
                        'Name': 'xbrl:EntityDomain',
                        'Label': 'Reporting Entity [Domain]',
                        'Enumeration': entities
                    }
                });
        } else {
            setAspect(this, 'xbrl:Entity',
                {
                    'Name': 'xbrl:Entity',
                    'Label': 'Reporting Entity [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string'
                });
        }

        // xbrl28:Archive
        if(aspects['xbrl28:Archive'] && aspects['xbrl28:Archive'].length > 0){
            setAspect(this, 'xbrl28:Archive',
                {
                    'Name': 'xbrl28:Archive',
                    'Label': 'Archive [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string',
                    'DomainRestriction': {
                        'Name': 'xbrl28:ArchiveDomain',
                        'Label': 'Archive [Domain]',
                        'Enumeration': aspects['xbrl28:Archive']
                    }
                });
        } else {
            setAspect(this, 'xbrl28:Archive',
                {
                    'Name': 'xbrl28:Archive',
                    'Label': 'Archive [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string'
                });
        }

        // sec:FiscalYear
        if(aspects['sec:FiscalYear'] && aspects['sec:FiscalYear'].length > 0){
            setAspect(this, 'sec:FiscalYear',
                {
                    'Name': 'sec:FiscalYear',
                    'Label': 'Fiscal Year [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'integer',
                    'DomainRestriction': {
                        'Name': 'sec:FiscalYearDomain',
                        'Label': 'Fiscal Year [Domain]',
                        'Enumeration': aspects['sec:FiscalYear']
                    }
                });
        } else {
            setAspect(this, 'sec:FiscalYear',
                {
                    'Name': 'sec:FiscalYear',
                    'Label': 'Fiscal Year [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'integer'
                });
        }

        // sec:FiscalPeriod
        if(aspects['sec:FiscalPeriod'] && aspects['sec:FiscalPeriod'].length > 0){
            setAspect(this, 'sec:FiscalPeriod',
                {
                    'Name': 'sec:FiscalPeriod',
                    'Label': 'Fiscal Period [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string',
                    'DomainRestriction': {
                        'Name': 'sec:FiscalPeriodDomain',
                        'Label': 'Fiscal Period [Domain]',
                        'Enumeration': aspects['sec:FiscalPeriod']
                    }
                });
        } else {
            setAspect(this, 'sec:FiscalPeriod',
                {
                    'Name': 'sec:FiscalPeriod',
                    'Label': 'Fiscal Period [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string'
                });
        }

        // sec:FiscalPeriodType
        if(aspects['sec:FiscalPeriodType'] && aspects['sec:FiscalPeriodType'].length > 0){
            setAspect(this, 'sec:FiscalPeriodType',
                {
                    'Name': 'sec:FiscalPeriodType',
                    'Label': 'Fiscal Period Type [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string',
                    'DomainRestriction': {
                        'Name': 'sec:FiscalPeriodTypeDomain',
                        'Label': 'Fiscal Period Type [Domain]',
                        'Enumeration': aspects['sec:FiscalPeriodType']
                    }
                });
        } else {
            setAspect(this, 'sec:FiscalPeriodType',
                {
                    'Name': 'sec:FiscalPeriodType',
                    'Label': 'Fiscal Period Type [Axis]',
                    'Kind': 'TypedDimension',
                    'Type': 'string'
                });
        }

    };

    return AbstractReport;
})
.factory('Report', function(GenericReport, SECReport, PROFILE) {
    if(PROFILE === 'sec'){
        return SECReport;
    }
    return GenericReport;
});

