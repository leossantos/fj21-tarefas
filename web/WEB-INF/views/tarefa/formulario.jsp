<%--
  Created by IntelliJ IDEA.
  User: leonardo
  Date: 13/07/19
  Time: 01:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Forms</title>
</head>
    <body>
        <h3>Adicionar tarefas</h3>
        <form:errors path="tarefa.descricao" cssStyle="color:red"/>
        <form action="adicionaTarefa" method="post">
            Descrição: <br />
            <textarea name="descricao" rows="5" cols="100"></textarea><br />
            <input type="submit" value="Adicionar">
        </form>
    </body>
</html>
