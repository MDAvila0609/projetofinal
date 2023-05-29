package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import model.Usuario;
import model.UsuarioDAO;

@WebServlet(name = "CadastroUsuario", urlPatterns = {"/CadastroUsuario"})
public class CadastroUsuario extends HttpServlet {
        private int id;
        private String nome;
        private String data;
        private String cpf;
        private String telefone;
        private String cep;
        //numero da casa
        private int nc;
        private String cidade;
        private String estado;
        private String bairro;
        private String rua;
        private String complemento;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //Verificando a existência do ID
        if(request.getParameter("id")!=null) {
            this.id = Integer.parseInt(request.getParameter("id"));
        }
        
         //Recebendo parâmetros vindos do formulário de cadastro
        this.nome = request.getParameter("nome");
        this.data = request.getParameter("data");
        this.cpf =request.getParameter("cpf");
        this.telefone = request.getParameter("telefone");
        this.cep = request.getParameter("cep");
        this.nc = request.getParameter("nc") != null ? Integer.parseInt(request.getParameter("nc")) : 0;
        this.cidade = request.getParameter("cidade");
        this.estado = request.getParameter("estado");
        this.bairro = request.getParameter("bairro");
        this.rua = request.getParameter("rua");
        this.complemento = request.getParameter("complemento");
        
        //Criando objeto da classe Proprietário, para que seja enviado
        //ao método de inserção no banco de dados
        Usuario u = new Usuario(
            this.nome,
            this.data,
            this.cpf,
            this.telefone,
            this.cep,
            this.nc,
            this.cidade,
            this.estado,
            this.bairro,
            this.rua,
            this.complemento
        ); 
        
        try{
            if(request.getParameter("id")==null){
                UsuarioDAO udao = new UsuarioDAO();
                udao.insertUsuario(u);
                response.sendRedirect("lista.jsp");
            } else{
                u.setId(this.id);
                UsuarioDAO udao = new UsuarioDAO();
                udao.insertUsuario(u);
                response.sendRedirect("lista.jsp");
            }
        } catch (SQLException | ClassNotFoundException erro) {
        
            try (PrintWriter out = response.getWriter()) {
                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet CadastroUsuario</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet CadastroUsuario at " + erro + "</h1>");
                out.println("</body>");
                out.println("</html>");
        }
    }    
    }
    
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
