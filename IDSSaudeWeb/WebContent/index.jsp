<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt">
<head>
  <title>Simple Page Application</title>
  <script src="resources/js/angular.js"></script>
  <script src="resources/js/jquery.js"></script>
  <script src="resources/js/angular-route.js"></script>
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <script src="script.js"></script>
</head>

<body ng-app="app">
  <div>
    <nav class="navbar navbar-inverse" role="navigation" style="padding-left:130px;">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#/">Home<span class="sr-only">(current)</span></a></li>
        <li><a href="#/sobre">Sobre</a></li>
		    <li><a href="#/sistema">Sistema</a></li>
        <li><button onclick="{trocaTexto()}">Teste</button></li>
        <li><div style="color:#fff" id="txtTeste" class="a">Teste</div></li>
      </ul>
    </nav>
  </div>
  <br/>
    <div ng-view class="jumbotron">
    </div>
</body>
</html>