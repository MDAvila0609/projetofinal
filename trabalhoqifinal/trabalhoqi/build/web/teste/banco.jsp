<%@page import="model.MyConnection" %>
<%@page import="java.sql.SQLException" %>
<%
    try{
        MyConnection.getConnection();
        out.print("conex�o ok: ");
        out.print(MyConnection.getConnection().getCatalog());
    } catch (SQLException erro){
        out.print("Ocorreu algum erro" + erro);
    }
%>