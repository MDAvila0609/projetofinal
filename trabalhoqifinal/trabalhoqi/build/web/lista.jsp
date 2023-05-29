<%-- 
    Document   : lista
    Created on : 24 de mai. de 2023, 16:57:38
    Author     : Marce
--%>
<%@page import="model.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTA</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Data de Nascimento</th>
                    <th>cpf</th>
                    <th>Telefone</th>
                    <th>cep</th>
                    <th>Numero da casa</th>
                    <th>Cidade</th>
                    <th>Estado</th>
                    <th>Bairro</th>
                    <th>Rua</th>
                    <th>Complemento</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <%
                    UsuarioDAO udao = new UsuarioDAO();
                    for(Usuario u : udao.listUsuario()){
                %>
                <tr>
                    <td><%= u.getId() %></td>
                    <td><%= u.getNome() %></td>
                    <td><%= u.getData() %></td>
                    <td><%= u.getCpf()%></td>
                    <td><%= u.getTelefone() %></td>
                    <td><%= u.getCep() %></td>
                    <td><%= u.getNc() %></td>
                    <td><%= u.getCidade() %></td>
                    <td><%= u.getEstado() %></td>
                    <td><%= u.getBairro() %></td>
                    <td><%= u.getRua() %></td>
                    <td><%= u.getComplemento() %></td>
                    <td>
                        <a href="UpdateUsuario?cod=<%= u.getId() %>">📝</a>
                    </td>
                    <td onclick="confirmDelete(<%= u.getId() %>)" >❌</td>
                </tr>
                 <%
                    }
                %>
            </tbody>
        </table>

            <script>
                function confirmDelete(cod) {
                if(confirm("Deseja realmente excluir?")){
                    window.location.replace("DeleteUsuario?cod=" + cod);
                } else {
                    alert("Exclusão cancelada!");
                }
            }
            </script>
            
    </body>
</html>
