<%--
  Created by IntelliJ IDEA.
  User: leonardo
  Date: 14/07/19
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h2>Página de Login das Tarefas</h2>
        <form action="efetuaLogin" method="post">
            Login: <input type="text" name="login" /> <br />
            Senha: <input type="password" name="senha" /> <br />
            <input type="submit" value="Entrar nas tarefas" />
        </form>
    </body>
</html>
