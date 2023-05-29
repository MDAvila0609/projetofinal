<%-- 
    Document   : editar-usuario
    Created on : 25 de mai. de 2023, 09:03:47
    Author     : Marce
--%>

<%@page import="model.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Usuario u = (Usuario)request.getAttribute("usu");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dentinho</title>
    </head>
    <body>
        
        <h1>Editar Usuario</h1>
        
        <form action="CadastroUsuario" method="post">
            <input type="text" name="id" value="<%= u.getId() %>" readonly>
            <br><br>
            
            <input type="text" name="nome" value="<%= u.getNome() %>" placeholder="Nome completo" required>
            <br><br>
            
            <input type="text" name="data" value="<%= u.getData() %>" placeholder="Data de nascimento" required>
            <br><br>
            
            <input type="text" name="cpf" value="<%= u.getCpf() %>" placeholder="Cpf" required>
            <br><br>
            
            <input type="text" name="telefone" value="<%= u.getTelefone() %>" placeholder="Telefone" required>
            <br><br>
            
            <input type="text" name="cep" value="<%= u.getCep() %>" placeholder="Cep" required>
            <br><br>
            
            <input type="number" name="nc" value="<%= u.getNc() %>" placeholder="Numero da casa" required>
            <br><br>
            
            <input type="text" name="cidade" value="<%= u.getCidade() %>" placeholder="Cidade" required>
            <br><br>
            
            <input type="text" name="estado" value="<%= u.getEstado() %>" placeholder="Estado" required>
            <br><br>
            
            <input type="text" name="bairro" value="<%= u.getBairro() %>" placeholder="Bairro" required>
            <br><br>
            
            <input type="text" name="rua" value="<%= u.getRua() %>" placeholder="Rua" required>
            <br><br>
            
            <input type="text" name="complemento" value="<%= u.getComplemento() %>" placeholder="Complemento">
            <br><br>
            
            <input type="submit" value="Atualizar">
        </form>
        
        <a href="home.jsp">Página Inicial</a>    
            
    </body>
</html>
