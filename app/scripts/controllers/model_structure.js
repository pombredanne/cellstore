angular.module('main').controller('ModelStructureCtrl', ['$scope', '$route', '$http', '$backend',
 function($scope, $route, $http, $backend) {
  $scope.data = {};
  $scope.API_URL = $backend.API_URL;
  $scope.EntityRegistrantName = "";
  $scope.cik = "";
  $scope.Label = "";
  $scope.NetworkIdentifier = "";
  $scope.AccessionNumber = "";
  $scope.Table = "";
  $scope.cid = $route.current.params.cid;
  $scope.FiscalYear = "";
  $scope.FiscalPeriod = "";
  $scope.AcceptanceDatetime = "";
  $scope.FormType = "";
  $scope.Disclosure = "";

  $scope.getdata = function() {
    $http(
      {
        method : 'GET',
        url: $backend.API_URL + '/_queries/public/api/modelstructure-for-component.jq',
        params : {
          "_method" : "POST",
          "cid" : $scope.cid,
          "token" : $scope.token
        }
      }).
      success(function(data, status, headers, config) {
        $scope.data = data.ModelStructure;
        $scope.Label = data.Label;
        $scope.cik = (data.CIK || "").substring(23);
        $scope.EntityRegistrantName = data.EntityRegistrantName;
        $scope.NetworkIdentifier = data.NetworkIdentifier;
        var p = data.Label.lastIndexOf(' - ');
        if (p > 0) $scope.component = data.Label.substring(p+3);
        else $scope.component = data.Label;
        $scope.AccessionNumber = data.AccessionNumber;
        $scope.Table = data.TableName;
        $scope.FiscalYear = data.FiscalYear;
        $scope.FiscalPeriod = data.FiscalPeriod;
        $scope.AcceptanceDatetime = data.AcceptanceDatetime;
        $scope.FormType = data.FormType;
        $scope.Disclosure = data.Disclosure;
      }).
      error(function(data, status, headers, config) {
        $scope.$emit("error", status, data);
      });
  };

  $scope.rowReset = function() { $scope.row = 0; };
  $scope.rowIncrement = function() { $scope.row += 1; };

  $scope.getIndent = function(level) { 
      return parseInt(level) * 20; 
  };

  $scope.getPeriodType = function(per) { 
      switch (per)
      {
        case 'duration' : return "For Period"; break;
        case 'instant': return "As Of"; break;
      }
  };
  
  $scope.getDataType = function(datatype) { 
      switch (datatype)
      {
        case 'dei:centralIndexKeyItemType': return 'CIK Number'; break;
        case 'dei:countryItemType': return 'Country'; break;
        case 'dei:currencyItemType': return 'Currency'; break;
        case 'dei:filerCategoryItemType' : return 'Filer Category'; break;
        case 'dei:fiscalPeriodItemType': return 'Fiscal Period'; break;
        case 'dei:nineDigitItemType Nine': return 'Digit Item'; break;
        case 'dei:submissionTypeItemType': return 'Submission Type'; break;
        case 'dei:yesNoItemType' : return 'Yes/No'; break;
        case 'nonnum:domainItemType' : return '[Member]'; break;
        case 'nonnum:escapedItemType': return 'XHTML'; break;
        case 'nonnum:textBlockItemType': return 'Text Block (HTML)'; break;
        case 'num:percentItemType' : return 'Percent'; break;
        case 'num:perShareItemType': return 'Share'; break;
        case 'us-types:dateStringItemType' : return 'Date String'; break;
        case 'us-types:domainItemType' : return '[Member]'; break;
        case 'us-types:durationStringItemType' : return 'Duration String'; break;
        case 'us-types:perShareItemType' : return 'Per Share'; break;
        case 'us-types:perUnitItemType': return 'Per Unit'; break;
        case 'us-types:textBlockItemType': return 'Text Block (HTML)'; break;
        case 'us-types:yesNoItemType': return 'Yes/No'; break;
        case 'xbrli:anyURIItemType': return 'URL'; break;
        case 'xbrli:booleanItemType' : return 'Yes/No'; break;
        case 'xbrli:dateItemType': return 'Date'; break;
        case 'xbrli:dateTimeItemType': return 'Date/Time'; break;
        case 'xbrli:decimalItemType': return 'Decimal'; break;
        case 'xbrli:gMonthDayItemType': return 'Month/Day'; break;
        case 'xbrli:gYearItemType': return 'Year'; break;
        case 'xbrli:gYearMonthItemType': return 'Year/Month'; break;
        case 'xbrli:integerItemType': return 'Integer'; break;
        case 'xbrli:monetaryItemType': return 'Monetary'; break;
        case 'xbrli:normalizedStringItemType': return 'Text/String'; break;
        case 'xbrli:pureItemType': return 'Pure'; break;
        case 'xbrli:sharesItemType': return 'Shares'; break;
        case 'xbrli:stringItemType': return 'Text/String'; break;
        default: return datatype;
      }
  };
  $scope.getdata();
 }
]);

