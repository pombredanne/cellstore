'use strict';

function SourceCtrl($scope, $route, $http, API_URL, API_TOKEN) {
	
	$scope.query = ($route.current.params.query ? $route.current.params.query : null);
	$scope.visibility = ($route.current.params.visibility ? $route.current.params.visibility : "public");

	function syntaxHighlight(json) {
		json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
		return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function (match) {
			var cls = 'number';
			if (/^"/.test(match)) {
				if (/:$/.test(match)) {
					cls = 'key';
				} else {
					cls = 'string';
				}
			} else if (/true|false/.test(match)) {
				cls = 'boolean';
			} else if (/null/.test(match)) {
				cls = 'null';
			}
			return '<span class="' + cls + '">' + match + '</span>';
		});
	};
				
	$scope.getQuery = function(v, q) { 

		$scope.content = "";

		$http({
			method: 'GET', 
			url: API_URL + '/_queries/' + v + '/' + q + '.jq/metadata',
			params: { token: API_TOKEN }
		}).
		success(function(data, status, headers, config) {
			if (data){

				$scope.content =  syntaxHighlight(data);
				$scope.safeApply();
			}
		});

	};

	if ($scope.query) $scope.getQuery($scope.visibility, $scope.query);

};