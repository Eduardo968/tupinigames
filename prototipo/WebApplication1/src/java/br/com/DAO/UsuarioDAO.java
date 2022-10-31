/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import br.com.DTO.UsuarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author eduar
 */
public class UsuarioDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<UsuarioDTO> lista = new ArrayList<>();
    
    public void cadastrarUsuario(UsuarioDTO objUsuario) throws ClassNotFoundException{
        String sql= "insert into user (nome_user,email,CPF,cep,rua,bairro,estado,cidade,telefone,senha) values(?,?,?,?,?,?,?,?,?,?)"; 
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuario.getNome());
            pstm.setString(2, objUsuario.getEmail());
            pstm.setString(3, objUsuario.getCPF());
            pstm.setString(4, objUsuario.getCep());
            pstm.setString(5, objUsuario.getLogradouro());
            pstm.setString(6, objUsuario.getBairro());
            pstm.setString(7, objUsuario.getUf());
            pstm.setString(8, objUsuario.getLocalidade());
            pstm.setString(9, objUsuario.getTelefone());
            pstm.setString(10, objUsuario.getPassword());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    public ArrayList<UsuarioDTO> PesquisarUsuario() throws ClassNotFoundException, SQLException{
        String sql = "select * from user " ; 
        con = new ConexaoDAO().conexaoBD();
        
        
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
           
            
            while(rs.next()){
                UsuarioDTO objUsuarioDTO = new UsuarioDTO();
                objUsuarioDTO.setId_user(rs.getString("id_user"));
                objUsuarioDTO.setNome(rs.getString("nome_user"));
                objUsuarioDTO.setEmail(rs.getString("email"));
                objUsuarioDTO.setCPF(rs.getString("CPF"));
                objUsuarioDTO.setCep(rs.getString("cep"));
                objUsuarioDTO.setLogradouro(rs.getString("rua"));
                objUsuarioDTO.setBairro(rs.getString("bairro"));
                objUsuarioDTO.setLocalidade(rs.getString("cidade"));
                objUsuarioDTO.setUf(rs.getString("estado"));
                objUsuarioDTO.setTelefone(rs.getString("telefone"));
                objUsuarioDTO.setPassword(rs.getString("senha"));
                
                lista.add(objUsuarioDTO);
            }
        } catch (SQLException e) {
        }
        return lista;
        
    }
    
    public void excluirUsuario(UsuarioDTO objUsuario) throws ClassNotFoundException{
        String sql= "DELETE FROM user WHERE cpf = ? and email = ?"; 
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuario.getCPF());
            pstm.setString(2, objUsuario.getEmail());
            
            
            pstm.executeUpdate();


        } catch (SQLException e) {
     

        }
        
    }
    
        public void alterarUsuario(UsuarioDTO objUsuario) throws ClassNotFoundException{
        String sql= "update user set nome_user = ?, email = ?, CPF = ?,cep = ?,rua = ?,bairro = ?,estado = ?,cidade = ? ,telefone = ?,senha = ? where id_user = ? where email = ?"; 
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            
            pstm.setString(1, objUsuario.getNome());
            pstm.setString(2, objUsuario.getEmail());
            pstm.setString(3, objUsuario.getCPF());
            pstm.setString(4, objUsuario.getCep());
            pstm.setString(5, objUsuario.getLogradouro());
            pstm.setString(6, objUsuario.getBairro());
            pstm.setString(7, objUsuario.getUf());
            pstm.setString(8, objUsuario.getLocalidade());
            pstm.setString(9, objUsuario.getTelefone());
            pstm.setString(10, objUsuario.getPassword());
            pstm.setString(11, objUsuario.getId_user());
            pstm.setString(12, objUsuario.getEmail());
            
            
            
            pstm.executeUpdate();


        } catch (SQLException e) {
     

        }
        
    }
        
    
    public void validar(UsuarioDTO objUsuario){
        try {
            String sql = "select * from user where email = ? and senha = ?";
            
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuario.getEmail());
            pstm.setString(2, objUsuario.getPassword());
            
            rs= pstm.executeQuery();
            if(rs.next()){

            }
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        

    }
    
    


    
}


