<%-- 
    Document   : frmAlterarUsuario
    Created on : 25 de out. de 2022, 14:45:03
    Author     : eduar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/register.css">
        <title>Alterar Usuario</title>
    </head>
    <body>
        <main class="container">
        <h2>Alterar <a href="../index.html">Voltar</a></h2>
        <form action="alterarUsuario.jsp" method="post">
            <div class="input-field">
                <input type="text" name="nome"
                       placeholder="Insira seu Nome " value="<%=request.getParameter("nome")%>">
                <div class="underline"></div>
                
            </div>
            
            <div class="input-field">
                <input type="email" name="email"
                placeholder="Insira seu Email" value=" <%=request.getParameter("email")%>">
                <div class="underline"></div>
                
            </div>


            <div class="input-field">
                <input type="number" name="telefone"
                placeholder="Insira seu Telefone" value="<%=request.getParameter("telefone")%>">
                <div class="underline"></div>
                
            </div>

            <div class="input-field">
                <input type="number" name="cep"
                placeholder="Insira seu CEP" value="<%=request.getParameter("cep")%>">
                <div class="underline"></div>
                
            </div>

            <div class="input-field">
                <input type="number" name="CPF"
                placeholder="Insira seu CPF" value="<%=request.getParameter("CPF")%>">
                <div class="underline"></div>
                
            </div>

            <div class="input-field" id="last">
                <input type="password" name="password"
                placeholder="Insira sua Senha" value="<%=request.getParameter("senha")%>">
                <div class="underline"></div>
                
            </div>
            <input type="submit" value="Alterar">

        </form>
        
        
    </main>
    </body>
</html>
