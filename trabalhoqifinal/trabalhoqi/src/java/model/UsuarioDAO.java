package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UsuarioDAO {
    private static Connection conn;
    
    public UsuarioDAO() throws SQLException, ClassNotFoundException {
        conn = MyConnection.getConnection();
    }
    
    // Iniciando métodos do CRUD
    
    // SELECT (READ)
    public ArrayList<Usuario> listUsuario() throws SQLException {
        // Criando lista vazia
        ArrayList<Usuario> list = new ArrayList<>();
        
        // Query SQL
        String query = "SELECT * FROM usuarios";
        
        // Preparando a query para lançar no banco de dados
        PreparedStatement prep = conn.prepareStatement(query);
        
        // Recebendo o resultado da query na variável result da classe ResultSet
        ResultSet result = prep.executeQuery();
        
        // Enquanto houverem resultados, executa a operação
        while (result.next()) {
            Usuario usuario = new Usuario();
            
            // Inserindo atributos neste objeto por meio dos setters
            usuario.setId(result.getInt("id"));
            usuario.setNome(result.getString("nome"));
            usuario.setData(result.getString("data"));
            usuario.setCpf(result.getString("cpf"));
            usuario.setTelefone(result.getString("telefone"));
            usuario.setCep(result.getString("cep"));
            usuario.setNc(result.getInt("nc"));
            usuario.setCidade(result.getString("cidade"));
            usuario.setEstado(result.getString("estado"));
            usuario.setBairro(result.getString("bairro"));
            usuario.setRua(result.getString("rua"));
            usuario.setComplemento(result.getString("complemento"));
            
            list.add(usuario);
        }
        
        return list;
    }
    
    public void insertUsuario(Usuario usu) throws SQLException {
        String query = "INSERT INTO usuarios(nome, data, cpf, telefone, cep, nc, cidade, estado, bairro, rua, complemento) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        PreparedStatement prep = conn.prepareStatement(query);
        
        prep.setString(1, usu.getNome());
        prep.setString(2, usu.getData());
        prep.setString(3, usu.getCpf());
        prep.setString(4, usu.getTelefone());
        prep.setString(5, usu.getCep());
        prep.setInt(6, usu.getNc());
        prep.setString(7, usu.getCidade());
        prep.setString(8, usu.getEstado());
        prep.setString(9, usu.getBairro());
        prep.setString(10, usu.getRua());
        prep.setString(11, usu.getComplemento());
        
        prep.execute();
        prep.close();
    }
    
    public void deleteUsuario(int i) throws SQLException {
        String query = "DELETE FROM usuarios WHERE id = ?";
        
        PreparedStatement prep = conn.prepareStatement(query);
        
        prep.setInt(1, i);
        
        prep.execute();
        prep.close();
    }
    
    public Usuario listById(int id) throws SQLException {
        Usuario u = new Usuario();
        
        String sql = "SELECT * FROM usuarios WHERE id = ?";
        
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1, id);
        
        ResultSet result = prep.executeQuery();
        
        if (result.next()) {
            u.setId(result.getInt("id"));
            u.setNome(result.getString("nome"));
            u.setData(result.getString("data"));
            u.setCpf(result.getString("cpf"));
            u.setTelefone(result.getString("telefone"));
            u.setCep(result.getString("cep"));
            u.setNc(result.getInt("nc"));
            u.setCidade(result.getString("cidade"));
            u.setEstado(result.getString("estado"));
            u.setBairro(result.getString("bairro"));
            u.setRua(result.getString("rua"));
            u.setComplemento(result.getString("complemento"));
        }
        
        return u;
    }
    
    public void updateUsuario(Usuario u) throws SQLException {
        String sql = "UPDATE usuarios SET nome = ?, data = ?, cpf = ?, telefone = ?, cep = ?, nc = ?, cidade = ?, " +
            "estado = ?, bairro = ?, rua = ?, complemento = ? WHERE id = ?";
        
        PreparedStatement prep = conn.prepareStatement(sql);
        
        prep.setString(1, u.getNome());
        prep.setString(2, u.getData());
        prep.setString(3, u.getCpf());
        prep.setString(4, u.getTelefone());
        prep.setString(5, u.getCep());
        prep.setInt(6, u.getNc());
        prep.setString(7, u.getCidade());
        prep.setString(8, u.getEstado());
        prep.setString(9, u.getBairro());
        prep.setString(10, u.getRua());
        prep.setString(11, u.getComplemento());
        prep.setInt(12, u.getId());
        
        prep.execute();
        prep.close();
    }
}
