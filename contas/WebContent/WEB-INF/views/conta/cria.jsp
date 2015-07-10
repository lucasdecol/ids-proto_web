<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
	<title>AngularJS - Teste</title>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
 </head>
<body>
    <h3>Adicionar Contas</h3>
    <form action="adiciona" method="post">
        Descrição: <br/>
        <textarea name="descricao" rows="5" cols="100"></textarea> <form:errors path="conta.descricao" />
        <br/>
        Valor: <input type="text" name="valor" ng-model="valor" /></br>
		<p>Olá, só estou testando pra ver se funfa: {{ valor }}</p>
		
        Tipo: <br/>
        <select name="tipo">
            <option value="ENTRADA">Entrada</option>
            <option value="SAIDA">Saída</option>	
        </select>
        <br/><br/>
        <input type="submit" value="Adicionar"/>
    </form>
    
</div>
    
</body>
</html>