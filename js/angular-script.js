// Application module
var crudApp = angular.module('crudApp',[]);
crudApp.controller("DbController",['$scope','$http', function($scope,$http){

// Function to get User details from the database
getInfo();
function getInfo(){
	// Sending request to EmpDetails.php files 
	$http.post('databaseFiles/empDetails.php').success(function(data){
	// Stored the returned data into scope 
		$scope.details = data;
	});
}

// pagination
 $scope.curPage = 0;
 $scope.pageSize = 5;


$scope.numberOfPages = function() 
 {
 		return Math.ceil($scope.details.length / $scope.pageSize);
 };

// Setting default value of status 
$scope.empInfo = {'status' : 'single'};
// Enabling show_form variable to enable Add User button
$scope.show_form = true;

$scope.formToggle =function(){
	$('#empForm').slideToggle();
	$('#editForm').css('display', 'none');
}

$scope.insertInfo = function(info){
	$http.post('databaseFiles/insertDetails.php',{"username":info.username,"password":info.password,"fullname":info.fullname,"city":info.city,"status":info.status}).success(function(data){
		if (data == true) {
			getInfo();
			$('#empForm').css('display', 'none');
		} else {
				getInfo();
				$('#empForm').slideUp();
		}
	});
}

$scope.deleteInfo = function(info){
	$http.post('databaseFiles/deleteDetails.php',{"del_id":info.crud_id}).success(function(data){
		if (data == true) {
			getInfo();
		}
	});
}

$scope.currentUser = {};
$scope.editInfo = function(info){
	$scope.currentUser = info;
	$('#empForm').slideUp();
	$('#editForm').slideToggle();
}

$scope.UpdateInfo = function(info){
	$http.post('databaseFiles/updateDetails.php',{"id":info.crud_id,"username":info.crud_username,"password":info.crud_password,"fullname":info.crud_fullname,"city":info.crud_city,"status":info.crud_status}).success(function(data){
		$scope.show_form = true;
		if (data == true) {
			getInfo();
		}
	});
}

$scope.updateMsg = function(crud_id){
	$('#editForm').css('display', 'none');
	}
}]);

angular.module('crudApp').filter('pagination', function()
{
 return function(input, start)
 {
  start = +start;
  return input.slice(start);
 };
});