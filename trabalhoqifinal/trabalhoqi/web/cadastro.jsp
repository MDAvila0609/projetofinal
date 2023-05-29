<%-- 
    Document   : cadastro
    Created on : 23 de mai. de 2023, 14:34:45
    Author     : Marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <a href="cadastro.html">
                        <i class="fa-solid fa-right-to-bracket"></i>
                        <label id="criarconta_2">Entrar</label>
                   </a>
                </div>
            </div>
        </div>    
        
        <p id="registrarse">Registrar-Se</p>
        
        <form id="cadastro" action="CadastroUsuario" method="post">
            
            <div id="nome_c0">
                <label id="nome_c1">Nome Completo</label>
                <input type="text" id="nome_c2" name="nome" required>
            </div>
                
            <div id="data_0">
                <label id="data_1">Data de Nascimento</label>
                <input id="data_2" type="date" name="data" required>
            </div>
            
            <div id="cpf_0">
                <label id="cpf_1">CPF</label>
                <input id="cpf_2" type="cpf" name="cpf" placeholder="xxx.xxx.xxx-xx" required>
            </div>
            
            <div id="telefone_0">
                <label id="telefone_1">Telefone</label>
                <input id="telefone_2"  type="text" name="telefone" placeholder="(xx) xxxx-xxxx" size="10" required>
            </div>
            
            <div id="cep_0">
                <label id="cep_1">CEP</label>
                <input id="cep_2" type="text" name="cep" placeholder="xxxxx-xxx" size="10" required>
            </div>
            
            <div id="cidade_0">
                <label id="cidade_1">Cidade</label>
                <input id="cidade_2" type="text" name="cidade" size="18" required>
            </div>
            
            <div id="estado_0">
                <label id="estado_1">Estado</label>
                <input id="estado_2" name="estado" type="text" required>
            </div>
            
            <div id="bairro_0">
                <label id="bairro_1">Bairro</label>
                <input id="bairro_2" name="bairro" type="text" required>
            </div>
            
            <div id="rua_0">
                <label id="rua_1">Rua</label>
                <input id="rua_2" name="rua" type="text" required>
            </div>
            
            <div id="nc_0">
                <label id="nc_1">Numero da casa</label>
                <input id="nc_2" name="nc" type="number" required>
            </div>
            
            <div id="complemento_0">
                <label id="complemento_1">Complemento</label>
                <input id="complemento_2" name="complemento" type="text" required>
            </div>
                
            <div id="checkbox_0">
                <input id="checkbox_2" type="checkbox" required>
                <label id="checkbox_1">eu li e concordo com as condições</label>
            </div>
        
            <div>
                    <input id="limpar" type="reset" placeholder="Limpar tudo">
                    <input type="submit" id="registrar" placeholder="registrar">
            </div>
            
        </form>
        
            <div id="emailsenha" action="CadastroUsuario" method="post">
                <div id="email">
                    <label id="email_label">Emal:</label>
                    <input type="email" id="email_input" size="25">
                </div>

                <br>

                <div id="senha">
                     <label id="senha_label">senha:</label>
                    <input type="password" id="senha_input" size="24">
                </div>
        </div>   

        <a href="home.jsp">Página inicial</a>
        
        
    </body>
</html>
