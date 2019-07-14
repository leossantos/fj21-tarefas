<%--
  Created by IntelliJ IDEA.
  User: leonardo
  Date: 13/07/19
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" href="resources/css/jquery-ui.css" rel="stylesheet" />
    <script type="text/javascript" src="resources/js/jquery.js" rel="script"></script>
    <script type="text/javascript" src="resources/js/jquery-ui.js" rel="script"></script>
</head>
    <body>
        <h3>Alterar tarefa - ${tarefa.id}</h3>
        <form action="alteraTarefa" method="post">

            <input type="hidden" name="id" value="${tarefa.id}" />

            Descrição:<br />
            <textarea name="descricao" cols="100" rows="5"><%--
                      --%>${tarefa.descricao}<%--
                  --%></textarea>
            <br />

            Finalizado? <input type="checkbox" name="finalizado"
                               value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />

            Data de finalização: <br />

            <fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" var="dataformatada"/>
            <caelum:campoData id="dataFinalizacao"  value="${dataformatada}"/>
            <br />

            <input type="submit" value="Alterar"/>
        </form>
    </body>
</html>
