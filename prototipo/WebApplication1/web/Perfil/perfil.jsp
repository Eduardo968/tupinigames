<%-- 
    Document   : perfil
    Created on : 13 de out. de 2022, 09:15:40
    Author     : eduar
--%>


<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.mysql.jdbc.Buffer"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Perfil</title>

<link rel="stylesheet" type="text/css" href="../css/Perfil.css" />

</head>
<body style="background-image: url('../img/backPerf.jpg'); background-repeat: no-repeat;background-size: 100%;">
    
    <header>
        <div class="header" style="background: #324ef0c5;">
            <h1 class="header--titulo"><a href="../index.jsp">Tupinigames</a></h1>
        <p class="header--desc">A <b>sua</b> loja de jogos nacionais.</p>
        </div>
    </header>

    <div id="wrapper">
        
    </div> 
    <div id="content" style="background: #324ef0c5; color:#fff; display:block; width:100%;">
        
            <img src="../img/perfil.jpg" alt="">
            
            <p>
                <% 
                try{
                        UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                        ArrayList<UsuarioDTO> lista = objUsuarioDAO.PesquisarUsuario();
                        
                        for(int num =0; num<lista.size(); num++){
                        out.println("Username: " + lista.get(num).getNome() + "<br>");
                }
               
                %> 
            </p>
            
            <p>
                <% 
                    
                        for(int num =0; num<lista.size(); num++){
                        out.println("Email: " + lista.get(num).getEmail() + "<br>");
                }
               
                %> 
            </p>
            
            <p>
                <% 
                    
                        for(int num =0; num<lista.size(); num++){
                        out.println("Telefone: " + lista.get(num).getTelefone() + "<br>");
                }
               
                %>
            </p>
            <p>
                <% 
                    
                        for(int num =0; num<lista.size(); num++){

                        out.println("CPF: " + lista.get(num).getCPF() + "<br>");
                        
                        
                        out.print("<br>" + "<a href='excluirUsuario.jsp?email="
                        +lista.get(num).getEmail() + "&CPF=" 
                        + lista.get(num).getCPF() + "' style='text-decoration: none;color: orange;' > Excluir Usuario </a>");
                        
                        out.print("  / " + "<a href='frmAlterarUsuario.jsp?email=" + lista.get(num).getEmail() 
                        + "&CPF=" + lista.get(num).getCPF() 
                        + "&nome=" + lista.get(num).getNome() 
                        + "&cep=" + lista.get(num).getCep() 
                        + "&rua=" + lista.get(num).getLogradouro()
                        + "&bairro" + lista.get(num).getBairro()
                        + "&cidade" + lista.get(num).getLocalidade()
                        + "&estado" + lista.get(num).getUf()
                        + "&telefone=" + lista.get(num).getTelefone() 
                        + "&senha=" + lista.get(num).getPassword()
                        + "' style='text-decoration: none;color: orange;'> Alterar Usuario </a>");
                        
                        out.print("  / " + "<a href='../Register/gameRegister.html' style='text-decoration: none; color: orange; '> Adicionar Jogo </a>");
                        
                        
                    }
                    }catch(Exception e){

}
                %>
            </p>
            
       </div>
</body>
</html>

