/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import br.com.DTO.JogosDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;




/**
 *
 * @author eduar
 */
public class JogosDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<JogosDTO> lista = new ArrayList<>();
    
    public void cadastrarJogo(JogosDTO objJogos) throws ClassNotFoundException, SQLException{
        String sql= "insert into jogos (nome_jogo,data_lancamento,valor) values(?,?,?)"; 
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objJogos.getNome_jogo());
            pstm.setString(2, objJogos.getData_lancamento());
            pstm.setString(3, objJogos.getValor());

            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    public ArrayList<JogosDTO> PesquisarJogo() throws ClassNotFoundException, SQLException{
        String sql = "select * from jogos " ; 
        con = new ConexaoDAO().conexaoBD();
        
        
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
           
            
            while(rs.next()){
                JogosDTO objJogosDTO = new JogosDTO();
                objJogosDTO.setId_jogo(rs.getString("id_jogo"));
                objJogosDTO.setNome_jogo(rs.getString("nome_jogo"));
                objJogosDTO.setData_lancamento(rs.getString("data_lancamento"));
                objJogosDTO.setValor(rs.getString("valor"));
                
                
                lista.add(objJogosDTO);
            }
        } catch (SQLException e) {
        }
        return lista;
        
    }
    
    public void excluirJogo(JogosDTO objJogos) throws ClassNotFoundException{
        String sql= "DELETE FROM jogos WHERE nome_jogo = ? and data_lancamento = ?"; 
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objJogos.getNome_jogo());
            pstm.setString(2, objJogos.getData_lancamento());
            
            
            pstm.executeUpdate();


        } catch (SQLException e) {
     

        }
        
    }
    
        public void alterarJogo(JogosDTO objJogos) throws ClassNotFoundException{
        String sql= "update jogos set nome_jogo = ?, valor = ?, data_lancamento = ? where id_jogo = ?"; 
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            
            pstm.setString(1, objJogos.getNome_jogo());
            pstm.setString(2, objJogos.getValor());
            pstm.setString(3, objJogos.getData_lancamento());
            pstm.setString(4, objJogos.getId_jogo());
            
            
            
            pstm.executeUpdate();


        } catch (SQLException e) {
     

        }
        
    }
        
    

    
}


