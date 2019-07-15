<%--
  Created by IntelliJ IDEA.
  User: leonardo
  Date: 14/07/19
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h2>Página inicial da Lista de Tarefas</h2>
        <p>Bem vindo, ${usuarioLogado.login}</p>
        <a href="listaTarefas">Clique aqui</a> para acessar a
        lista de tarefas<br>
        <a href="logout">Sair do sistema</a>
    </body>
</html>
