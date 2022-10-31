<%-- 
    Document   : excluirUsuario
    Created on : 24 de out. de 2022, 15:34:10
    Author     : eduar
--%>

<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UsuarioDTO objUsuarioDTO = new UsuarioDTO();
            objUsuarioDTO.setNome(request.getParameter("nome"));
            objUsuarioDTO.setPassword(request.getParameter("password"));
            objUsuarioDTO.setTelefone(request.getParameter("telefone"));
            objUsuarioDTO.setEmail(request.getParameter("email"));  
            objUsuarioDTO.setCPF(request.getParameter("CPF"));
            objUsuarioDTO.setRG(request.getParameter("RG"));
            
            
            UsuarioDAO objUsuarioDAO = new UsuarioDAO();
            objUsuarioDAO.alterarUsuario(objUsuarioDTO);
            response.sendRedirect("../Perfil/perfil.jsp");
        %>
    </body>
</html>