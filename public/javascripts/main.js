var app = angular.module("myBookApp",[]);

app.controller("BookController",function($scope,$http){
  $scope.get_all_books = function(){
    $http.get("welcome/get_all_books")
    .then(function(response) {
        $scope.allbooks = response.data;
        console.log(JSON.stringify($scope.allbooks));
    });
  };
});
