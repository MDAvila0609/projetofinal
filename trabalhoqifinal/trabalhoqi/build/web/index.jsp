<%-- 
    Document   : index
    Created on : 23 de mai. de 2023, 14:34:00
    Author     : Marce
--%>

<%
    if(session.getAttribute("userNameSession") != null){
        response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>LojaDentinhoPerifericos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        
        <div id="cabecalho">
            
                <div id="funcionario_0">
                    <a  href="#">
                        <i class="fa-solid fa-computer" style="color: #000000;"></i>
                        <label id="funcionario_1">Entrar como funcionário</label>
                    </a>
                </div>
            
            <div id="criarconta_0">
                <div id="criarconta_1">
                    <a href="cadastro.jsp">
                        <i class="fa-solid fa-user" style="color: #000000;"></i>
                        <label id="criarconta_2">Criar Conta</label>
                   </a>
                </div>
            </div>
            
        </div>
        
        <form id="logar" action="ValidaUsuario.java" method="post">
            
            <img id="img-logo" src="img/logo-social.png" width="180px" alt="imagemlogodentinho"/>
            
            <p id="entrarp">Entrar</p>
            <br>
            
            <div id="email">
                <label id="email_label">Emal:</label>
                <input type="text" name="user" id="email_input" required size="25">
            </div>
            <br>
            
            <div id="senha">
                 <label id="senha_label">senha:</label>
                <input type="password" name="pass" id="senha_input" required size="24">
            </div>
            <br>
            
            <input type="submit" id="login" value="Login">
            <br>
            
            <p id="paragrafo">Outras formas de login</p>
            
                <div id="facebook_0">
                    <div id="facebook_1"><i class="fa-brands fa-facebook" style="color: #3331aa"></i></div>
                    <label id="facebook_2">Facebook</label>
                </div>

                <div id="email_0">
                    <div id="email_1"><i class="fa-brands fa-google" style="color: #d12929;"></i></div>
                    <label id="email_2">Email</label>
                </div>

                <div id="outlook_0">
                    <div id="outlook_1"><i class="fa-brands fa-windows" style="color: #000000;"></i></div>
                    <label id="outlook_2">Outlook</label>
                </div>
        </form>
        
    </body>
</html>

