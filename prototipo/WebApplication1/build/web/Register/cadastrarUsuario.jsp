

<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="0; url='http://localhost:8080/WebApplication1/Login/login.html'"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            UsuarioDTO objUsuarioDTO = new UsuarioDTO();
            objUsuarioDTO.setNome(request.getParameter("Username"));
            objUsuarioDTO.setEmail(request.getParameter("email"));
            objUsuarioDTO.setTelefone(request.getParameter("telefone"));
            objUsuarioDTO.setCep(request.getParameter("cep"));
            objUsuarioDTO.setBairro(request.getParameter("bairro"));
            objUsuarioDTO.setLogradouro(request.getParameter("rua"));
            objUsuarioDTO.setLocalidade(request.getParameter("cidade"));
            objUsuarioDTO.setUf(request.getParameter("estado"));
            objUsuarioDTO.setCPF(request.getParameter("CPF"));
            objUsuarioDTO.setPassword(request.getParameter("password"));
            
            UsuarioDAO objUsuarioDAO = new UsuarioDAO();
            objUsuarioDAO.cadastrarUsuario(objUsuarioDTO);
        %>
        
    </body>
</html>
