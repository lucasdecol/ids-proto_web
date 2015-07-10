<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript">
		
		var resultado = '';
	
		function pagaAgora(id) {
			$.post("paga", {'id' : id}, function() {
				$("#conta_"+id).html("Paga");
			});
		}
	
		function teste() {
			$.post("cria", function(result) {
				resultado = result;
				$("#div_teste").html(result);
			});
		}
		
	</script>
</head>
<body>
    <table style="height: 10px; width: 775px;" border="1">
        <tr>
        <th>Código</th>
        <th>Descrição</th>
        <th>Valor</th>
        <th>Tipo</th>
        <th>Data de pagamento</th>
		<th>Ações</th>
        </tr>

        <c:forEach items="${contas}" var="conta">
        <tr>
            <td>${conta.id}</td>
            <td>${conta.descricao}</td>
            <td>${conta.valor}</td>
            <td id="conta_${conta.id}">
            <c:if test="${conta.paga eq false}">
            Não paga
            </c:if>
            <c:if test="${conta.paga eq true }">
            Paga
            </c:if>
            </td>
            <td><fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy"/></td>
			<td>
				<a href="remove?id=${conta.id}">Remover</a>
				<a href="mostra?id=${conta.id}">Alterar</a>
				<c:if test="${conta.paga eq false}">
				<a href="#" onClick="pagaAgora(${conta.id})">
					Finaliza agora!
				</a>
				</c:if>
			</td>
			
        </tr>
        </c:forEach>
    </table>
	<br/>
	<a href="cria">Nova Conta</a>
	<br/>
	<br/>
	<button onclick="teste()">Teste</button>
	<br/>
	<br/>
	<div id="div_teste"></div>
</body>
</html>