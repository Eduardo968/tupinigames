<%-- 
    Document   : validar
    Created on : 25 de out. de 2022, 15:19:09
    Author     : eduar
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.UsuarioDTO"%>
<%@page import="br.com.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="../css/login.css">
        
    </head>
    <body>
        
       
        
    <main class="container">
        <h2>Login <a href="../index.html">Voltar</a></h2>
        <form action="">
            <div class="input-field">
                <input type="email" name="email"
                       placeholder="Insira seu Email ">
                <div class="underline"></div>
                
            </div>

            <div class="input-field">
                <input type="password" name="password" id="password"
                placeholder="Insira sua Senha">
                <div class="underline"></div>
                
            </div>
            <input type="submit" value="Continue" onclick="location.href = '../Perfil/perfil.jsp'">

        </form>
        
        <div class="footer">
            <span>Não possui uma conta? <a href="../Register/registro.html">Registre-se aqui</a></span>
            <span>Conecte-se com sua rede social</span>
            <div class="social-fields">
                <div class="social-field google">
                    <a href="#">
                        <i class="fab fa-google"></i>
                        sign in with Google
                    </a>
                </div>
                    <div class="social-field facebook">
                        <a href="#">
                            <i class="fab fa-facebook-f"></i>
                            sign in with Facebook
                        </a>
                    </div>
            </div>
        </div>
        
    </main>
</body>
</html>
