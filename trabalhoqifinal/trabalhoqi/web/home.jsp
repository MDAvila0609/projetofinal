<%-- 
    Document   : home
    Created on : 24 de mai. de 2023, 19:33:27
    Author     : Marce
--%>


<%@page import="model.User"%>
<%
    User uSession = (User) session.getAttribute("userNameSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dentinho</title>
    </head>
    <body>
        <%@include file="session/verify.jsp"%>
        <p id="bemvindo">
            <div>
                bem vindo <%= (uSession != null) ? uSession.getUserName() : "visitante" %>
            </div>
            
            <div>
                <button onclick="window.location.href='session/logout.jsp'">Sair</button>
            </div>
        </p>
        
        <section>
            <button class="item-home" onclick="window.location.href='cadastro.jsp'">Cadastrar</button>
            <button class="item-home" onclick="window.location.href='lista.jsp'">Lista</button>
        </section>
        
    </body>
</html>
