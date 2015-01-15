'use strict';

angular.module('rules-model', ['excel-parser', 'formula-parser'])
    .factory('Rule', function (_, $q, $log, ExcelParser, FormulaParser, EXCEL_RULE_TEMPLATE) {

        var ensureParameter = function (paramValue, paramName, paramType, functionName, regex, regexErrorMessage) {
            if (paramValue === null || paramValue === undefined) {
                throw new Error(functionName + ': function called without mandatory "' + paramName + '" parameter.');
            }
            if (typeof paramValue !== paramType) {
                throw new Error(functionName + ': function called with mandatory "' + paramName + '" parameter which is of wrong type "' + typeof paramValue + '" (should be of type "' + paramType + '" instead).');
            }
            if (regex !== undefined && paramValue.match(regex) === null) {
                throw new Error(functionName + ': ' + regexErrorMessage);
            }
        };

        //Constructor
        var Rule = function (modelOrRuleType, report, computableConcept, language) {
            ensureParameter(report, 'report', 'object', 'Rule (Const.)');
            if (_.isObject(modelOrRuleType)) {
                this.report = report;
                this.setModel(modelOrRuleType);
            } else {
                ensureParameter(modelOrRuleType, 'modelOrRuleType', 'string', 'Rule (Const.)', /^(xbrl28:formula)|(xbrl28:validation)$/g, 'unknown rule type: ' + modelOrRuleType);
                ensureParameter(computableConcept, 'computableConcept', 'string', 'Rule (Const.)');
                if (_.isString(language) && language !== 'SpreadsheetFormula') {
                    throw new Error('Rule (Const.): unknown original language "' + language + '"');
                }
                this.report = report;
                this.parser = null;
                var concept = report.getConcept(computableConcept);
                if (!_.isObject(concept)) {
                    throw new Error('Concept with name ' + computableConcept + ' does not exist.');
                }
                if (modelOrRuleType === 'xbrl28:validation') {

                    // find a suitable concept name for the validation result
                    var alignedComputableConcept = computableConcept + 'Validation';
                    //does a concept with this name already exist?
                    var existingConcept = this.report.existsConcept(alignedComputableConcept);
                    var count = 2;
                    do {
                        if (!existingConcept) {
                            break; // found one that we can use
                        }
                        //does it have a rule attached?
                        if (this.report.computableByRules(alignedComputableConcept).length === 0) {
                            break; // found one that we can use
                        }
                        alignedComputableConcept = computableConcept + 'Validation' + count;
                        count++;
                        existingConcept = this.report.existsConcept(alignedComputableConcept);
                    } while (existingConcept);

                    if (language === 'SpreadsheetFormula') {
                        this.setModel({
                            'Id': report.uuid(),
                            'Type': modelOrRuleType,
                            'OriginalLanguage': language,
                            'ComputableConcepts': [alignedComputableConcept],
                            'ValidatedConcepts': [this.report.hideDefaultConceptPrefix(computableConcept)],
                            'DependsOn': [],
                            'HideRulesForConcepts': [],
                            'AllowCrossPeriod': true,
                            'AllowCrossBalance': true,
                            'Formulae': [
                                {
                                    'PrereqSrc': 'TRUE',
                                    'Prereq': {},
                                    'SourceFact': [this.report.hideDefaultConceptPrefix(computableConcept)],
                                    'BodySrc': this.report.hideDefaultConceptPrefix(computableConcept) + ' = ',
                                    'Body': {},
                                    'active': true
                                }
                            ]
                        });
                    } else {
                        this.setModel({
                            'Id': report.uuid(),
                            'Type': modelOrRuleType,
                            'ComputableConcepts': [computableConcept + 'Validation'],
                            'ValidatedConcepts': [computableConcept],
                            'DependsOn': [],
                            'HideRulesForConcepts': [],
                            'Formula': ''
                        });
                    }
                } else if (modelOrRuleType === 'xbrl28:formula') {
                    if (language === 'SpreadsheetFormula') {
                        this.setModel({
                            'Id': report.uuid(),
                            'Type': modelOrRuleType,
                            'OriginalLanguage': language,
                            'ComputableConcepts': [computableConcept],
                            'DependsOn': [],
                            'HideRulesForConcepts': [],
                            'AllowCrossPeriod': true,
                            'AllowCrossBalance': true,
                            'Formulae': [
                                {
                                    'PrereqSrc': 'TRUE',
                                    'Prereq': {},
                                    'SourceFact': [],
                                    'BodySrc': '',
                                    'Body': {},
                                    'active': true
                                }
                            ]
                        });
                    } else {
                        this.setModel({
                            'Id': report.uuid(),
                            'Type': modelOrRuleType,
                            'ComputableConcepts': [computableConcept],
                            'DependsOn': [],
                            'HideRulesForConcepts': [],
                            'Formula': ''
                        });
                    }
                }
            }
        };

        Rule.prototype.addAlternative = function () {
            if (this.model.Formulae === undefined || this.model.Formulae === null) {
                this.model.Formulae = [];
            }
            var language = this.model.OriginalLanguage;
            if (language === 'SpreadsheetFormula') {
                this.model.Formulae.push(
                    {
                        'PrereqSrc': 'TRUE',
                        'Prereq': {},
                        'SourceFact': [],
                        'BodySrc': '',
                        'Body': {},
                        'active': true
                    });
            }
        };

        Rule.prototype.copyAlternative = function (index) {
            var formulae = this.model.Formulae;
            if (formulae === undefined || formulae === null || index >= formulae.length) {
                throw new Error('Index out of bounds: ' + index + '. Array: ' + JSON.stringify(formulae));
            }
            var alternative = angular.copy(formulae[index]);
            var language = this.model.OriginalLanguage;
            if (language === 'SpreadsheetFormula') {
                formulae.push(alternative);
                alternative.active = true;
            }
        };

        Rule.prototype.removeAlternative = function (index) {
            var formulae = this.model.Formulae;
            if (formulae === undefined || formulae === null || index >= formulae.length) {
                throw new Error('Index out of bounds: ' + index + '. Array: ' + JSON.stringify(formulae));
            }
            formulae.splice(index, 1);
        };

        Rule.prototype.getPrefix = function () {
            var prefix;
            if (_.isObject(this.report)) {
                prefix = this.report.getPrefix();
            }
            if (this.report === undefined || prefix === undefined || prefix === null || prefix === '') {
                return 'ext';
            }
            return prefix;
        };

        Rule.prototype.listAvailableConceptNames = function () {
            if (!_.isObject(this.report)) {
                return [];
            }
            var concepts = this.report.listConcepts();
            var that = this;
            return _.chain(concepts)
                .filter(function (concept) {
                    return concept.IsAbstract !== true;
                })
                .map(function(concept){
                    return that.report.hideDefaultConceptPrefix(concept.Name);
                })
                .value();
        };

        Rule.prototype.listConcepts = function () {
            if (this.report !== undefined &&
                this.report.model !== undefined && this.report.model.Hypercubes !== undefined &&
                this.report.model.Hypercubes['xbrl:DefaultHypercube'] !== undefined &&
                this.report.model.Hypercubes['xbrl:DefaultHypercube'].Aspects !== undefined &&
                this.report.model.Hypercubes['xbrl:DefaultHypercube'].Aspects['xbrl:Concept'] !== undefined &&
                this.report.model.Hypercubes['xbrl:DefaultHypercube'].Aspects['xbrl:Concept'].Domains !== undefined &&
                this.report.model.Hypercubes['xbrl:DefaultHypercube'].Aspects['xbrl:Concept'].Domains['xbrl:ConceptDomain'] !== undefined &&
                this.report.model.Hypercubes['xbrl:DefaultHypercube'].Aspects['xbrl:Concept'].Domains['xbrl:ConceptDomain'].Members !== undefined) {
                return this.report.model.Hypercubes['xbrl:DefaultHypercube']
                    .Aspects['xbrl:Concept']
                    .Domains['xbrl:ConceptDomain']
                    .Members;
            }
        };

        Rule.prototype.getParser = function () {
            if (this.parser === undefined || this.parser === null) {
                if (this.model.OriginalLanguage === 'ArithmeticFormula') {
                    this.parser = FormulaParser;
                    this.parserType = 'FormulaParser';
                }
                if (this.model.OriginalLanguage === 'SpreadsheetFormula') {
                    this.parser = ExcelParser;
                    this.parserType = 'ExcelParser';
                }
            }
            return this.parser;
        };

        var inferDependenciesImpl = function (formula, obj) {
            ensureParameter(formula, 'formula', 'object', 'inferDependenciesImpl');
            ensureParameter(obj, 'obj', 'object', 'inferDependenciesImpl');
            var result = [];
            var formulae = obj.Formulae;
            if (_.isArray(formulae)) {
                _.each(formulae, function(alternative){
                    result = result.concat(inferDependenciesImpl(formula, alternative));
                });
                result = formula.report.alignConceptPrefixes(result);
                result = _.unique(result);
                obj.DependsOn = result;
            } else {
                var prereq = obj.Prereq;
                var body = obj.Body;
                var sourceFacts = obj.SourceFact;
                if (prereq !== undefined || body !== undefined || sourceFacts !== undefined) {
                    if (_.isObject(prereq)) {
                        result = result.concat(inferDependenciesImpl(formula, prereq));
                    }
                    if (_.isObject(body)) {
                        result = result.concat(inferDependenciesImpl(formula, body));
                    }
                    if (_.isArray(sourceFacts)) {
                        result = result.concat(sourceFacts);
                    }
                } else {
                    var type = obj.Type;
                    var children = obj.Children;
                    if (type === 'variable') {
                        var name = obj.Name;
                        result.push(name);
                    } else if (_.isArray(children)) {
                        _.each(children, function(child) {
                            result = result.concat(inferDependenciesImpl(formula, child));
                        });
                    }
                }
            }
            return result;
        };

        var inferDependencies = function (formula, obj, async) {
            ensureParameter(formula, 'formula', 'object', 'inferDependencies');
            ensureParameter(obj, 'obj', 'object', 'inferDependencies');
            if (async === undefined || async === null || async) {
                var deferred = $q.defer();
                var result = inferDependenciesImpl(formula, obj);
                deferred.resolve(result);
                return deferred.promise;
            } else {
                return inferDependenciesImpl(formula, obj);
            }
        };

        // computation is the jsoniq code part that computes the value of the new
        // fact
        var toComputation = function (ast) {
            if (_.isObject(ast)) {
                var type = ast.Type;
                var children = ast.Children;
                var value = ast.Value;
                var name = ast.Name;
                switch (type) {
                    // comparisons
                    case 'eq':
                    case 'ne':
                    case 'gt':
                    case 'ge':
                    case 'lt':
                    case 'le':
                        return toComputation(children[0]) + ' ' + type + ' ' + toComputation(children[1]);

                    // arithmetics
                    case 'add':
                        return toComputation(children[0]) + ' + ' + toComputation(children[1]);
                    case 'mul':
                        return toComputation(children[0]) + ' * ' + toComputation(children[1]);
                    case 'div':
                        return toComputation(children[0]) + ' div ' + toComputation(children[1]);
                    case 'sub':
                        return toComputation(children[0]) + ' - ' + toComputation(children[1]);

                    // primaries
                    case 'block':
                        var inner = [];
                        _.each(children, function(child){
                            inner.push(toComputation(child));
                        });
                        return '(' + inner.join(',') + ')';
                    case 'variable':
                        return 'rules:decimal-value($' + name + ')';

                    // atomics
                    case 'numeric':
                        return value;
                    case 'boolean':
                        return value;
                    case 'string':
                        return '\"' + value + '\"';

                    // functions
                    case 'function':
                        var innerparams = [];
                        _.each(children, function(param){
                            innerparams.push(toComputation(param));
                        });
                        switch (name) {
                            case 'isblank':
                                var innerparams2 = [];
                                _.each(children, function(p){
                                    if (p.Type === 'variable') {
                                        innerparams2.push('$' + p.Name);
                                    } else {
                                        innerparams2.push(toComputation(p));
                                    }
                                });
                                return 'not(exists(' + innerparams2.join(', ') + '))';
                            case 'not':
                                return 'not((' + innerparams.join(', ') + '))';
                            case 'and':
                                return '(' + innerparams.join(' and ') + ')';
                            case 'or':
                                return '(' + innerparams.join(' or ') + ')';
                        }
                }
            }
        };

        // computation is the jsoniq code part that creates the audit trail of the new
        // fact
        var toAuditTrail = function (ast) {
            if (_.isObject(ast)) {
                var type = ast.Type;
                var children = ast.Children;
                var value = ast.Value;
                var name = ast.Name;
                var result = [];
                switch (type) {
                    // comparisons
                    case 'eq':
                        result.push(toAuditTrail(children[0]) + ' || " = " || ' + toAuditTrail(children[1]));
                        break;
                    case 'ne':
                        result.push(toAuditTrail(children[0]) + ' || " <> " || ' + toAuditTrail(children[1]));
                        break;
                    case 'gt':
                        result.push(toAuditTrail(children[0]) + ' || " > " || ' + toAuditTrail(children[1]));
                        break;
                    case 'ge':
                        result.push(toAuditTrail(children[0]) + ' || " >= " || ' + toAuditTrail(children[1]));
                        break;
                    case 'lt':
                        result.push(toAuditTrail(children[0]) + ' || " < " || ' + toAuditTrail(children[1]));
                        break;
                    case 'le':
                        result.push(toAuditTrail(children[0]) + ' || " <= " || ' + toAuditTrail(children[1]));
                        break;

                    // arithmetics
                    case 'add':
                        result.push(toAuditTrail(children[0]) + ' || " + " || ' + toAuditTrail(children[1]));
                        break;
                    case 'mul':
                        result.push(toAuditTrail(children[0]) + ' || " * " || ' + toAuditTrail(children[1]));
                        break;
                    case 'div':
                        result.push(toAuditTrail(children[0]) + ' || " div " || ' + toAuditTrail(children[1]));
                        break;
                    case 'sub':
                        result.push(toAuditTrail(children[0]) + ' || " - " || ' + toAuditTrail(children[1]));
                        break;

                    // primaries
                    case 'block':
                        var inner = [];
                        _.each(children, function(child){
                            inner.push(toAuditTrail(child));
                        });
                        result.push('" ( " || ' + inner.join(' || ", "') + ' || " )"');
                        break;
                    case 'variable':
                        result.push('rules:fact-trail($' + name + ', "' + name + '")');
                        break;

                    // atomics
                    case 'numeric':
                    case 'boolean':
                    case 'string':
                        result.push('"' + value + '"');
                        break;

                    // functions
                    case 'function':
                        var innerparams = [];
                        _.each(children, function(param){
                            innerparams.push(toAuditTrail(param));
                        });
                        switch (name) {
                            case 'isblank':
                                result.push('"not(exists( " || ' + innerparams.join(' || ", "') + ' || "))"');
                                break;
                            case 'not':
                                result.push('"not(( " || ' + innerparams.join(' || ", "') + ' || "))"');
                                break;
                            case 'and':
                                result.push('(' + innerparams.join(' || " and "') + ' || ")"');
                                break;
                            case 'or':
                                result.push('(' + innerparams.join(' || " or "') + ' || ")"');
                                break;
                        }
                        break;
                }
                return result.join(' || ');
            }
        };

        var getUniqueFacts = function (report, rule) {
            var facts = _.union(rule.ComputableConcepts,rule.DependsOn,rule.ValidatedConcepts);
            if ((rule.OriginalLanguage === 'SpreadsheetFormula') &&
                rule.Formulae !== undefined && rule.Formulae !== null) {
                _.each(rule.Formulae, function(formula){
                    facts = facts.concat(formula.SourceFact);
                });
            }
            return _.unique(report.alignConceptPrefixes(facts));
        };

        Rule.prototype.getRuleTemplate = function () {
            if (!_.isFunction(this.template)) {
                if (this.model.OriginalLanguage === 'SpreadsheetFormula') {
                    this.template = _.template(EXCEL_RULE_TEMPLATE);
                }
            }
            return this.template;
        };

        Rule.prototype.toJsoniq = function () {
            var prefix = this.getPrefix();
            var report = this.report;
            var computedConcept = report.getConcept(this.model.ComputableConcepts[0]);
            var validatedConcept;
            if(_.isArray(this.model.ValidatedConcepts) && _.isString(this.model.ValidatedConcepts[0])){
                validatedConcept = report.getConcept(this.model.ValidatedConcepts[0]);
            }
            var decimals = this.getDecimals();
            var unit;
            if(_.isString(this.model.Unit) && this.model.Unit !== ''){
                unit = this.model.Unit;
            }
            if (_.isObject(this.model) &&
               this.model.OriginalLanguage === 'SpreadsheetFormula' &&
               _.isArray(this.model.Formulae)) {

                var data = angular.copy(this.model);
                data.Variables = [];
                var facts = getUniqueFacts(report, this.model);
                _.each(facts, function(fact){
                    var variable = {
                        'Concept': fact
                    };
                    if (fact.indexOf(prefix + ':') === 0) {
                        variable.VarName = fact.substring(prefix.length + 1);
                    } else {
                        variable.VarName = fact.replace(/:/g, '_');
                    }
                    if(computedConcept.Name === fact){
                        variable.ComputedConcept = computedConcept;
                    }
                    if(_.isObject(validatedConcept) && validatedConcept.Name === fact){
                        variable.ValidatedConcept = validatedConcept;
                    }
                    data.Variables.push(variable);
                });
                data.Unit = unit;
                if (this.model.Type === 'xbrl28:validation') {
                    var validatedFactVariable = validatedConcept.Name;
                    if (validatedFactVariable.indexOf(prefix + ':') === 0) {
                        validatedFactVariable = validatedFactVariable.substring(prefix.length + 1);
                    } else {
                        validatedFactVariable = validatedFactVariable.replace(/:/g, '_');
                    }
                    data.ValidatedFactVariable = validatedFactVariable;
                } else {
                    data.ValidatedFactVariable = undefined;
                }
                data.Decimals = decimals;
                var that = this;
                _.each(data.Formulae, function(alternative){
                    var body = alternative.Body;
                    var prereq = alternative.Prereq;
                    var sourceFactVarName = alternative.SourceFact[0];
                    if (sourceFactVarName.indexOf(prefix + ':') === 0) {
                        sourceFactVarName = sourceFactVarName.substring(prefix.length + 1);
                    } else {
                        sourceFactVarName = sourceFactVarName.replace(/:/g, '_');
                    }
                    alternative.SourceFactVarName = sourceFactVarName;
                    var usedFacts = _.unique(inferDependenciesImpl(that, alternative));
                    var usedVariables = [];
                    _.each(usedFacts, function(fact){
                        var variable = {
                            'Concept': report.alignConceptPrefix(fact)
                        };
                        if (fact.indexOf(prefix + ':') === 0) {
                            variable.VarName = fact.substring(prefix.length + 1);
                        } else {
                            variable.VarName = fact.replace(/:/g, '_');
                        }
                        usedVariables.push(variable);
                    });
                    alternative.UsedVariables = usedVariables;
                    prereq.Compiled = toComputation(prereq);
                    body.Compiled = toComputation(body);
                    var auditTrail = '';
                    if (that.model.Type === 'xbrl28:formula') {
                        auditTrail += 'rules:fact-trail({"Aspects": { "xbrl:Unit" : $_unit, "xbrl:Concept" : "' + computedConcept.Name + '" }, Value: $computed-value }) || " = " || ';
                    }
                    auditTrail += toAuditTrail(body);
                    body.AuditTrail = auditTrail;
                });
                var template = this.getRuleTemplate();
                var source = template(data);
                return source;
            }
        };

        Rule.prototype.compile = function () {
            if ((this.model.OriginalLanguage === 'SpreadsheetFormula') &&
                _.isArray(this.model.Formulae)) {
                $log.log('starting compilation');
                for (var i = 0; i < this.model.Formulae.length; ++i) {
                    this.compilePrereq(i, false /* not deferred */);
                    this.compileBody(i, false /* not deferred */);
                }
                inferDependencies(this, this.model, false /* not deferred */);
                this.model.Formula = this.toJsoniq();
                $log.log('compilation finished');
            }
        };

        var bodyEmptyErrorMessage = 'Example: "NetIncomeLoss / Assets"';

        Rule.prototype.compileBodyDeferred = function (index) {
            ensureParameter(index, 'index', 'number', 'compileBodyDeferred');
            var deferred = $q.defer();
            var parser = this.getParser();
            var altComp = this.model.Formulae[index];
            var body;
            if (altComp.BodySrc === undefined || altComp.BodySrc === '' || altComp.BodySrc === null) {
                deferred.reject(bodyEmptyErrorMessage);
            } else {
                try {
                    body = parser.parse(altComp.BodySrc);
                    deferred.resolve(body);
                }
                catch (e) {
                    var errMsg = this.parserType + ' ' + e.name + ' Error: (' + e.line + ',' + e.column + ') ' + e.message;
                    deferred.reject(errMsg);
                }
            }
            return deferred.promise;
        };

        Rule.prototype.compileBody = function (index, async, action) {
            ensureParameter(index, 'index', 'number', 'compileBody');
            var that = this;
            var altComp = that.model.Formulae[index];
            var successFunc = function (body) {
                altComp.Body = body;
                if (altComp.BodyErr !== undefined) {
                    delete altComp.BodyErr;
                }
                //$log.log(that.parserType + ' Body ok');
                that.model.Formulae[index] = altComp;
                if (async !== false) {
                    inferDependencies(that, that.model, async).then(
                        function () {
                            that.validate(action);
                        });
                } else {
                    that.validate(action);
                }
            };
            var errorFunc = function (errMsg) {
                altComp.BodyErr = errMsg;
                altComp.Body = {};
                $log.log(errMsg);
                that.model.Formulae[index] = altComp;
                that.validate(action);
            };
            if (async === undefined || async === null || async === true) {
                this.compileBodyDeferred(index).then(successFunc, errorFunc);
            } else {
                var parser = this.getParser();
                var body;
                if (altComp.BodySrc === undefined || altComp.BodySrc === '' || altComp.BodySrc === null) {
                    errorFunc(bodyEmptyErrorMessage);
                } else {
                    try {
                        body = parser.parse(altComp.BodySrc);
                        successFunc(body);
                    }
                    catch (e) {
                        var errMsg = this.parserType + ' ' + e.name + ' Error: (' + e.line + ',' + e.column + ') ' + e.message;
                        errorFunc(errMsg);
                    }
                }
            }
        };

        var prereqEmptyErrorMessage = 'Rule precondition section cannot be empty. If you don\'t want to check a precondition just put "TRUE".';

        Rule.prototype.compilePrereqDeferred = function (index) {
            ensureParameter(index, 'index', 'number', 'compilePrereqDeferred');
            var deferred = $q.defer();
            var parser = this.getParser();
            var altComp = this.model.Formulae[index];
            var prereq;
            if (altComp.PrereqSrc === undefined || altComp.PrereqSrc === '' || altComp.PrereqSrc === null) {
                deferred.reject(prereqEmptyErrorMessage);
            } else {
                try {
                    prereq = parser.parse(altComp.PrereqSrc);
                    deferred.resolve(prereq);
                }
                catch (e) {
                    var errMsg = this.parserType + ' ' + e.name + ' Error: (' + e.line + ',' + e.column + ') ' + e.message;
                    deferred.reject(errMsg);
                }
            }
            return deferred.promise;
        };

        Rule.prototype.compilePrereq = function (index, async, action) {
            ensureParameter(index, 'index', 'number', 'compilePrereq');
            var that = this;
            var altComp = that.model.Formulae[index];
            var successFunc = function (prereq) {
                altComp.Prereq = prereq;
                if (altComp.PrereqErr !== undefined) {
                    delete altComp.PrereqErr;
                }
                //$log.log(that.parserType + ' Prereq ok');
                that.model.Formulae[index] = altComp;
                if (async !== false) {
                    inferDependencies(that, that.model, async).then(
                        function () {
                            that.validate(action);
                        });
                } else {
                    that.validate(action);
                }
            };
            var errorFunc = function (errMsg) {
                var altComp = that.model.Formulae[index];
                altComp.PrereqErr = errMsg;
                altComp.Prereq = {};
                $log.log(errMsg);
                that.model.Formulae[index] = altComp;
                that.validate(action);
            };
            if (async === undefined || async === null || async === true) {
                this.compilePrereqDeferred(index).then(successFunc, errorFunc);
            } else {
                var parser = this.getParser();
                var prereq;
                if (altComp.PrereqSrc === undefined || altComp.PrereqSrc === '' || altComp.PrereqSrc === null) {
                    errorFunc(prereqEmptyErrorMessage);
                } else {
                    try {
                        prereq = parser.parse(altComp.PrereqSrc);
                        successFunc(prereq);
                    }
                    catch (e) {
                        var errMsg = this.parserType + ' ' + e.name + ' Error: (' + e.line + ',' + e.column + ') ' + e.message;
                        errorFunc(errMsg);
                    }
                }
            }
        };

        var validateId = function (rule, report, action) {
            var existingRule;
            var id = rule.Id;
            if (id === undefined || id === null || id === '') {
                rule.IdErr = 'Rule Id is mandatory.';
                rule.valid = false;
            } else if (action === 'Create' && (existingRule = report.getRule(id)) !== undefined && existingRule !== null) {
                rule.IdErr = 'A rule with id "' + id + '" does already exist.';
                rule.valid = false;
            } else {
                delete rule.IdErr;
            }
        };

        var validateDecimals = function (rule) {
            var decimals = rule.Decimals;
            if (typeof decimals === 'string' && decimals !== 'INF' && decimals !== '') {
                decimals = parseInt(decimals,10);
            } else if(typeof decimals === 'number') {
                decimals = Math.round(decimals);
            }
            if(decimals !== undefined && decimals !== '' && isNaN(decimals) && decimals !== 'INF'){
                rule.DecimalsErr = 'Invalid decimals value (must be integer or "INF")';
                rule.valid = false;
            } else if(decimals !== undefined && decimals !== '' && !isNaN(decimals) && decimals !== parseFloat(rule.Decimals)){
                rule.DecimalsErr = 'Invalid decimals value (must be integer or "INF")';
                rule.valid = false;
            } else {
                delete rule.DecimalsErr;
            }
        };

        var validateComputableConcepts = function (rule, report) {
            var computableConcepts = rule.ComputableConcepts;
            if (computableConcepts[0] === '' || computableConcepts.length === 0) {
                rule.ComputableConceptsErr = 'Computable Concept is mandatory.';
                rule.valid = false;
            } else if (rule.Type === 'xbrl28:validation' && rule.OriginalLanguage === 'SpreadsheetFormula') {
                delete rule.ComputableConceptsErr;
            } else {
                var notExistingConcepts = _.chain(computableConcepts)
                    .filter(function(cname) {
                        return !_.isObject(report.getConcept(report.alignConceptPrefix(cname)));
                    })
                    .value();
                if (notExistingConcepts.length === 1) {
                    rule.ComputableConceptsErr = 'The computed concept "' + notExistingConcepts[0] + '" does not exist.';
                    rule.valid = false;
                } else if (notExistingConcepts.length > 1) {
                    rule.ComputableConceptsErr = 'The following concepts do not exist: "' + notExistingConcepts.join('", "') + '".';
                    rule.valid = false;
                } else {
                    delete rule.ComputableConceptsErr;
                }
            }
        };

        var validateDependsOnConcepts = function (rule, report) {
            var dependsOnConcepts = rule.DependsOn;
            var notExistingConcepts = _.chain(dependsOnConcepts)
                .filter(function(cname) {
                    return !_.isObject(report.getConcept(report.alignConceptPrefix(cname)));
                })
                .value();
            if (notExistingConcepts.length === 1) {
                rule.DependsOnErr = 'The depending concept "' + notExistingConcepts[0] + '" does not exist.';
                rule.valid = false;
            } else if (notExistingConcepts.length > 1) {
                rule.DependsOnErr = 'The following depending concepts do not exist: "' + notExistingConcepts.join('", "') + '".';
                rule.valid = false;
            } else {
                delete rule.DependsOnErr;
            }
        };

        var validateHideRulesForConcepts = function (rule, report) {
            var hideRulesForConcepts = rule.HideRulesForConcepts;
            var notExistingConcepts = _.chain(hideRulesForConcepts)
                .filter(function(cname) {
                    return !_.isObject(report.getConcept(report.alignConceptPrefix(cname)));
                })
                .value();
            if (notExistingConcepts.length === 1) {
                rule.HideRulesForConceptsErr = 'The concept "' + notExistingConcepts[0] + '" does not exist.';
                rule.valid = false;
            } else if (notExistingConcepts.length > 1) {
                rule.HideRulesForConceptsErr = 'The following concepts do not exist: "' + notExistingConcepts.join('", "') + '".';
                rule.valid = false;
            } else {
                delete rule.HideRulesForConceptsErr;
            }
        };

        var validateValidatedConcepts = function (rule, report) {
            var validatedConcepts = rule.ValidatedConcepts;
            if (validatedConcepts[0] === '' || validatedConcepts.length === 0) {
                rule.ValidatedConceptsErr = 'Validated Concept is mandatory.';
                rule.valid = false;
            } else {
                var notExistingConcepts = _.chain(validatedConcepts)
                    .filter(function(cname) {
                        return !_.isObject(report.getConcept(report.alignConceptPrefix(cname)));
                    })
                    .value();
                if (notExistingConcepts.length === 1) {
                    rule.ValidatedConceptsErr = 'The validated concept "' + notExistingConcepts[0] + '" does not exist.';
                    rule.valid = false;
                } else if (notExistingConcepts.length > 1) {
                    rule.ValidatedConceptsErr = 'The following validated concepts do not exist: "' + notExistingConcepts.join('", "') + '".';
                    rule.valid = false;
                } else {
                    delete rule.ValidatedConceptsErr;
                }
            }
        };

        var validateRule = function (rule) {
            var formula = rule.Formula;
            if ((formula === undefined || formula === null || formula === '') && rule.OriginalLanguage !== 'SpreadsheetFormula') {
                rule.FormulaErr = 'Rule Code Section is mandatory.';
                rule.valid = false;
            } else {
                delete rule.FormulaErr;
            }
        };

        var validateAlternative = function (rule, alternative, report) {
            var sourceFact = alternative.SourceFact;
            if (sourceFact === undefined || sourceFact === null || sourceFact[0] === '' || sourceFact.length === 0) {
                alternative.SourceFactErr = 'Source Fact is mandatory (general characteristics - e.g. credit or debit - will be copied from this fact).';
                alternative.valid = false;
            } else {
                var notExistingConcepts = _.chain(sourceFact)
                    .filter(function(cname) {
                        return !_.isObject(report.getConcept(report.alignConceptPrefix(cname)));
                    })
                    .value();
                if (notExistingConcepts.length === 1) {
                    alternative.SourceFactErr = 'The source concept "' + notExistingConcepts[0] + '" does not exist.';
                    alternative.valid = false;
                } else if (notExistingConcepts.length > 1) {
                    alternative.SourceFactErr = 'The following source concepts do not exist: "' + notExistingConcepts.join('", "') + '".';
                    alternative.valid = false;
                } else {
                    delete alternative.SourceFactErr;
                }
                alternative.valid = (alternative.SourceFactErr === undefined && alternative.BodyErr === undefined && alternative.PrereqErr === undefined);
            }
        };

        var validateAlternatives = function (rule, report) {
            var formulae = rule.Formulae;
            var hasActive = false;
            if (formulae === undefined || formulae === null || formulae[0] === '' || formulae.length === 0) {
                rule.FormulaeErr = 'At least one alternative code section is mandatory.';
                rule.valid = false;
            } else {
                _.each(formulae, function(alternative){
                    validateAlternative(rule, alternative, report);
                    if (alternative.active) {
                        hasActive = true;
                    }
                    if (!alternative.valid) {
                        rule.valid = false;
                    }
                });
                if (!hasActive) {
                    formulae[0].active = true;
                }
            }
        };

        Rule.prototype.validate = function (action, updateDependencies) {
            var report = this.report;
            var rule = this.getModel();

            if (_.isObject(rule)) {
                var type = rule.Type;
                rule.valid = true;
                validateId(rule, report, action);
                validateDecimals(rule);
                validateComputableConcepts(rule, report);
                if (updateDependencies !== undefined && updateDependencies) {
                    inferDependencies(this, this.model, true);
                }
                validateDependsOnConcepts(rule, report);
                validateHideRulesForConcepts(rule, report);
                if (type === 'xbrl28:validation') {
                    validateValidatedConcepts(rule, report);
                }
                validateRule(rule);
                if (rule.OriginalLanguage === 'SpreadsheetFormula') {
                    validateAlternatives(rule, report);
                }
                return rule.valid;
            }
        };

        var validateASTItem = function (item) {
            var type = item.Type;
            var name = item.Name; //variable
            var value = item.Value; //atomic
            var children = item.Children;
            if (!_.isString(type)) {
                throw new Error('Not a valid object in AST (expected object to have field "Type"): ' + JSON.stringify(item) + '.');
            }
            if (_.isString(name) && _.isString(value)) {
                throw new Error('Not a valid object in AST (object contains fields "Name" and "Value"): ' + JSON.stringify(item) + '.');
            }
            if (_.isString(value) && _.isArray(children)) {
                throw new Error('Not a valid object in AST (object contains fields "Value" and "Children"): ' + JSON.stringify(item) + '.');
            }
            if (children !== undefined && !_.isArray(children)) {
                throw new Error('Not a valid object in AST (children not array): ' + JSON.stringify(item) + '.');
            }
            _.each(children, function(child){
                validateASTItem(child);
            });
        };

        // test whether auto generated AST is valid
        Rule.prototype.validateASTs = function () {
            var formulae = this.getModel().Formulae;
            if (formulae === undefined || formulae === null || formulae[0] === '' || formulae.length === 0) {
                return true;
            } else {
                _.each(formulae, function(alternative){
                    validateASTItem(alternative.Prereq);
                    validateASTItem(alternative.Body);
                });
            }
            return true;
        };

        Rule.prototype.isValid = function () {
            if (this.model === undefined || this.model === null || !_.isObject(this.model)) {
                return false;
            }
            if (this.model.valid === undefined) {
                return false;
            } else {
                return this.model.valid;
            }
        };

        Rule.prototype.getDecimals = function () {
            var model = this.getModel();
            if(model === undefined || model === null){
                return undefined;
            }
            if(model.Decimals !== undefined && model.Decimals !== '' && model.Decimals !== null){
                var result = model.Decimals;
                if (_.isString(model.Decimals) && model.Decimals !== 'INF' && model.Decimals !== '') {
                    result = parseInt(model.Decimals,10);
                } else if(_.isNumber(model.Decimals)) {
                    result = Math.round(model.Decimals);
                }
                if(result !== undefined && isNaN(result) && result !== 'INF'){
                    return undefined;
                }
                return result;
            }
        };

        Rule.prototype.getRule = function () {
            var model = this.getModel();
            if (model.OriginalLanguage === 'SpreadsheetFormula') {
                this.compile();
            }
            var report = this.report;
            var computableConcepts = report.alignConceptPrefixes(model.ComputableConcepts);
            var label = report.getConcept(computableConcepts[0]).Label;
            var rule = {
                'Id': model.Id,
                'Label': label,
                'OriginalLanguage': model.OriginalLanguage,
                'Type': model.Type,
                'Decimals': this.getDecimals(),
                'ComputableConcepts': computableConcepts,
                'DependsOn': model.DependsOn,
                'Formula': model.Formula
            };
            if(model.Unit !== undefined && model.Unit !== '' && model.Unit !== null){
                rule.Unit = model.Unit;
            }
            if (model.ValidatedConcepts !== undefined) {
                rule.ValidatedConcepts = report.alignConceptPrefixes(model.ValidatedConcepts);
            }
            if (_.isArray(model.Formulae)) {
                rule.Formulae =
                    _.map(model.Formulae, function (formula) {
                        return {
                                'PrereqSrc': formula.PrereqSrc,
                                'SourceFact': formula.SourceFact,
                                'BodySrc': formula.BodySrc
                            };
                    });
            }
            rule.AllowCrossPeriod = model.AllowCrossPeriod;
            rule.AllowCrossBalance = model.AllowCrossBalance;
            rule.HideRulesForConcepts = report.alignConceptPrefixes(model.HideRulesForConcepts);

            return rule;
        };

        Rule.prototype.getModel = function () {
            return this.model;
        };

        Rule.prototype.setModel = function (model) {
            ensureParameter(model, 'model', 'object', 'setModel');
            this.model = angular.copy(model);
            this.model.ComputableConcepts = this.report.hideDefaultConceptPrefixes(this.model.ComputableConcepts);
            if (this.model.HideRulesForConcepts !== undefined) {
                this.model.HideRulesForConcepts = this.report.hideDefaultConceptPrefixes(this.model.HideRulesForConcepts);
            } else {
                this.model.HideRulesForConcepts = [];
            }
            this.parser = null;
            //this.compile();
        };

        Rule.prototype.Id = function () {
            return this.model.Id;
        };
        return Rule;
    });
