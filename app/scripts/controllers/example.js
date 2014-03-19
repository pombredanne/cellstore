angular.module('main').controller('ExampleCtrl', ['$scope', '$route', '$http', '$location', '$backend',
 function($scope, $route, $http, $location, $backend) {

  $scope.examples = [ 
      { 
        name: "TotalAssets",
        description: "Total Assets of all 10-Ks grouped by fiscal period and fiscal year.",
        file: 'api/TotalForConceptGroupedByFiscalPeriodForAllEntities.jq', 
        category: "Whitepaper",
        params: { concept: "us-gaap:Assets", fiscalPeriod: "FY" } 
      },
      { 
        name: "TotalLiabilitiesAndEquity",
        description: "Total liabilities and equity of all 10-Ks grouped by fiscal period and fiscal year. The selection of the concept is done using a concept named fac:LiabilitiesAndEquity which is defined in the concept map called FundamentalAccountingConcepts.",
        file: 'api/TotalForConceptGroupedByFiscalPeriodForAllEntities.jq',
        category: "Whitepaper",
        params: { concept: "fac:LiabilitiesAndEquity", fiscalPeriod: "FY", map: "FundamentalAccountingConcepts" }
      },
      {
        name: "ResearchAndDevelopment",
        description: "All facts for the concept fac:ResearchAndDevelopment for the fiscal period FY, the fiscal year 2012, for all DOW30 entities.",
        file: 'api/facts.jq',
        category: "Whitepaper",
        params: { concept: "fac:ResearchAndDevelopment", fiscalPeriod: "FY", fiscalYear : "2012", tag : "DOW30", map: "FundamentalAccountingConcepts" }
      },
      {
        name: "FundamentalAccountingConcepts",
        description: "The fact table of the fundamental accounting concepts of Coca Cola's 10-K/2012.",
        file: 'api/facttable-for-report.jq',
        category: "Whitepaper",
        params: { fiscalPeriod: "FY", fiscalYear : "2012", ticker : "ko", report: "FundamentalAccountingConcepts" }
      },
      {
        name: "FilteringAssets",
        description: "The request returns the fact for the concept us-gaap:Assets of COCA COLA CO for the fiscal period FY and the fiscal year 2013.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: "us-gaap:Assets", fiscalYear : "2013", fiscalPeriod : "FY" }
      },
      {
        name: "FilteringAssetsAndRevenues",
        description: "The request returns the facts for the concepts us-gaap:Assets and us-gaap:Revenues of COCA COLA CO for the fiscal period FY and the latest fiscal year in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: [ 'us-gaap:Assets', 'us-gaap:SalesRevenueGoodsNet' ], fiscalYear : "2013", fiscalPeriod : "FY"  }
      },
      {
        name: "FilteringAssetsForTicker",
        description: "The request returns the fact for the concept us-gaap:Assets of the entity with the ticker ko (COCA COLA CO) for the fiscal period FY and the latest fiscal year in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: "us-gaap:Assets" }
      },
      {
        name: "FilteringAssetsForDOW30",
        description: "The request returns the fact for the concept us-gasp:Assets of all DOW30 entities for their fiscal period FY and the latest fiscal year of that entity in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { tag : "dow30", concept: "us-gaap:Assets", fiscalYear : "2013", fiscalPeriod : "FY"  }
      },
      {
        name: "FilteringAssetsForCIK",
        description: "The request returns the fact for the concept us-gasp:Assets of the entity identified by the CIK 21344 (COCA COLA CO) for the fiscal period FY and the latest fiscal year in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { cik : "21344", concept: "us-gaap:Assets", fiscalYear : "2013", fiscalPeriod : "FY"  }
      },
      {
        name: "FilteringAssetsForSIC",
        description: "The request returns the fact for the concept us-gasp:Assets of all entities with SIC 2080 (Beverages) for the fiscal period FY and the latest fiscal year in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { sic : "2080", concept: "us-gaap:Assets", fiscalYear : "2013", fiscalPeriod : "FY"  }
      },
      {
        name: "FilteringAssetsForTagAndTicker",
        description: "The request returns the fact for the concept us-gasp:Assets of the entities belonging to the DOW30 and the entity with the ticker aa (ALCOA INC) for the fiscal period FY and the latest fiscal year in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "aa", tag : "dow30", concept: "us-gaap:Assets", fiscalYear : "2013", fiscalPeriod : "FY"  }
      },
      {
        name: "FilteringAssetsForFiscalYearAndFiscalPeriod",
        description: "The request returns the fact for the concept us-gasp:Assets of COCA COLA CO for the fiscal period Q1 and the fiscal year 2013.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: "us-gaap:Assets", fiscalPeriod : "Q1", fiscalYear : "2013" }
      },
      {
        name: "FilteringAssetsForLatestFiscalPeriod",
        description: "The request returns the fact for the concept us-gasp:Assets of COCA COLA CO for the fiscal period Q1 and the latest fiscal year of that fiscal periodin the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: "us-gaap:Assets", fiscalPeriod : "Q1" }
      },
      {
        name: "FilteringAssetsForLatestFY",
        description: "The request returns the fact for the concept us-gasp:Assets of COCA COLA CO for the fiscal period FY and the latest fiscal year in the database.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: "us-gaap:Assets" }
      },
      {
        name: "FilteringAssetsForFY2012And2013",
        description: "The request returns the fact for the concept us-gasp:Assets of COCA COLA CO for the fiscal period FY and the fiscal years 2012 and 2013.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "ko", concept: "us-gaap:Assets", fiscalYear : "2012", fiscalPeriod : "2013" }
      },
      {
        name: "FilteringAssetsAndLiabilitiesAndEquityUsingMap",
        description: "The request returns the facts for the concepts fac:Assets and fac:LiabilitiesAndEquity of all DOW30 entities for the fiscal period FY and the latest fiscal year of each entity using the FundamentalAccountingConcepts map.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { tag : "dow30", concept: [ "fac:Assets", "fac:LiabilitiesAndEquity" ], map : "FundamentalAccountingConcepts" }
      },
      {
        name: "FilteringGoodwill",
        description: "The request returns the facts for the concept us-gaap:Goodwill for 3M (latest FY filing).",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "mmm", concept: "us-gaap:Goodwill" }
      },
      {
        name: "FilteringGoodwillBrokenDownBySegment",
        description: "The request returns the facts for the concept us-gaap:Goodwill for 3M (latest FY filing) broken down by business segments.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "mmm", concept: "us-gaap:Goodwill", "us-gaap:StatementBusinessSegmentsAxis" : "ALL" }
      },
      {
        name: "FilteringGoodwillForHealthCare",
        description: "The request returns the facts for the concept us-gaap:Goodwill for 3M (latest FY filing) for the business segment Health Care.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "mmm", concept: "us-gaap:Goodwill", "us-gaap:StatementBusinessSegmentsAxis" : "mmm:HealthCareMember" }
      },
      {
        name: "FilteringGoodwillBrokenDownBySegmentIncludingDefault",
        description: "The request returns the facts for the concept us-gaap:Goodwill for 3M (latest FY filing) broken down by business segments including defaults.",
        file: 'api/facts.jq',
        category : "FactsTutorial",
        params: { ticker : "mmm", concept: "us-gaap:Goodwill", "us-gaap:StatementBusinessSegmentsAxis" : "ALL", "us-gaap:StatementBusinessSegmentsAxis::default" : "us-gaap:SegmentDomain" }
      }

   ];

  $scope.getExample = function(ex) {
    $scope.data=null;
    $scope.params = {};
    angular.extend($scope.params, ex.params, $location.search(), { "_method" : "POST", "token" : $scope.token, "format": "json" });
    $scope.example = ex;

    $scope.params['concept'] = ex.params.concept;
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/' + ex.file,
        params : $scope.params,
        cache : false
      }).
      success(function(data, status, headers, config) {
        $scope.data = data;
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };

  $scope.trimURL = function(url) {
    if (url.length < 40) return url;

    return url.substr(0, 10) + "..." + url.substr(url.length - 30);
  };
  
  $scope.trim = function(item) {
    return angular.copy(item).splice(4, item.length - 5);
  };
  
  $scope.clear = function(item) {
    return item.replace("iso4217:", "").replace("xbrli:", "");
  };
  
  $scope.showText = function(html) {
    $scope.$emit("alert", "Text Details", html);
  };
  
  $scope.enumerate = function(object) {
    var ret = [];
    $.map(object, function (el, index) {
      ret.push(el);
    });
    return ret;
  };
  
  $scope.enumerateKeys = function(object) {
    var ret = [];
    $.map(object, function (el, index) {
      ret.push(index);
    });
    return ret;
  };

  $scope.isBlock = function(string) {
     if (!string) return false;
     return string.length > 60;
  };

  $scope.getUrl = function(format) {
      var str = $backend.API_URL + '/_queries/public/' + $scope.example.file;
      var p = [];
      var index = -1;
      for(var param in $scope.params)
          if($scope.params.hasOwnProperty(param) && $scope.params[param]) {
              if (param == "format") {
                if (format) {
                    index = p.length;
                    p.push(param + "=" + encodeURIComponent(format));
                }
              }
              else
                if (Object.prototype.toString.call($scope.params[param]) === "[object Array]")
                  $scope.params[param].forEach(function(item) { p.push(param + "=" + encodeURIComponent(item)); });
                else p.push(param + "=" + encodeURIComponent($scope.params[param].toString()));
          }
      if (index < 0 && format) p.push("format=" + encodeURIComponent(format));
      if (p.length > 0) str += '?' + p.join('&');
      return str;
  };

  $scope.spacify = function(string) {
    return string.replace
        ( /(^[a-z]+)|[0-9]+|[A-Z][a-z]+|[A-Z]+(?=[A-Z][a-z]|[0-9])/g
        , function(match, first){
            if (first) match = match[0].toUpperCase() + match.substr(1);
            return match + ' ';
            }
         )
  };

  $scope.getCategories = function() { 
      var categories = [];
      $scope.examples.forEach(function(ex) { if (categories.indexOf(ex.category) < 0) categories.push(ex.category); });
      return categories;
  };

  if ($route.current.params.example)
      $scope.examples.forEach(function(ex) { 
        if (ex.name == $route.current.params.example) {
            $scope.category = ex.category;
            $scope.getExample(ex);
        }
      });
 }
]);