<%--
  Created by IntelliJ IDEA.
  User: leonardo
  Date: 13/07/19
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/funcoes.js"></script>
</head>
    <body>
        <a href="novaTarefa">Criar nova tarefa</a>

        <br /> <br />

        <table>
            <tr>
                <th>Id</th>
                <th>Descrição</th>
                <th>Finalizado?</th>
                <th>Data de finalização</th>
            </tr>
            <c:forEach items="${tarefas}" var="tarefa">
                <tr id="tarefa_${tarefa.id}">
                    <td>${tarefa.id}</td>
                    <td>${tarefa.descricao}</td>
                    <c:if test="${tarefa.finalizado eq false}">
                        <td>
                            <a href="#" onClick="finalizaAgora(${tarefa.id})">
                                Finaliza agora!
                            </a>
                        </td>
                    </c:if>
                    <c:if test="${tarefa.finalizado eq true}">
                        <td>Finalizada</td>
                    </c:if>
                    <td>
                        <fmt:formatDate
                                value="${tarefa.dataFinalizacao.time}"
                                pattern="dd/MM/yyyy"/>
                    </td>
                    <td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
                    <td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
                    <td>
                        <a href="#" onClick="removeAgora(${tarefa.id})">
                            Remova Agora!
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
