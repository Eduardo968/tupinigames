<%-- 
    Document   : cadastrarJogo
    Created on : 30 de out. de 2022, 15:14:27
    Author     : eduar
--%>

<%@page import="br.com.DTO.JogosDTO"%>
<%@page import="br.com.DAO.JogosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="0; url='http://localhost:8080/WebApplication1/'"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            JogosDTO objJogoDTO = new JogosDTO();
            objJogoDTO.setNome_jogo(request.getParameter("nome"));
            objJogoDTO.setValor(request.getParameter("valor"));
            objJogoDTO.setData_lancamento(request.getParameter("lancamento"));

            
            JogosDAO objJogoDAO = new JogosDAO();
            objJogoDAO.cadastrarJogo(objJogoDTO);
        %>
    </body>
</html>
