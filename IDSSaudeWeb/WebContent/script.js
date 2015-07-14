var app=angular.module('app',['ngRoute']);

app.config(function($routeProvider, $locationProvider){
    $routeProvider
		.when('/',{
			templateUrl: 'home',
			controller: 'crtHome'
        })
		.when('/sobre',{
			templateUrl: 'sobre',
			controller: 'crtSobre'
        })
        .when('/sistema',{
			templateUrl: 'sistema'
        });
    
});

app.controller('crtHome',function($scope){
	  $scope.message="Função Controller do Home";
});

app.controller('crtSobre',function($scope){
      $scope.message="Função Controller do Sobre";
});

function trocaTexto(){
  $("#txtTeste").html("teste2");
}