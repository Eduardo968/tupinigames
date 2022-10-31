<%-- 
    Document   : index.jps
    Created on : 30 de out. de 2022, 16:07:50
    Author     : eduar
--%>

<%@page import="br.com.DTO.JogosDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.JogosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tupinigames</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <header>
        <div class="header">
        <h1 class="header--titulo">Tupinigames</h1>
        <p class="header--desc">A <b>sua</b> loja de jogos nacionais.</p>
        </div>
    </header>
    <main>
        <div class="img"></div>
        <div class="boas-vindas">
            <h2>Seja bem vindo ao Tupinigames!</h2>
            <p>Já tem uma conta? <a href="./Login/login.html"><b>Entrar</b></a>. Caso seja novo, <a href="./Register/registro.html"><b>registrar-se</b></a>.</p>
        </div>
        <div class="colum">
            <div class="caixa">
                <img src="./img/LA.jpg" alt="" class="box_background">
                <div class="box_text">
                <h2>Lost Ark   <button class="buy"> <b> Comprar </b></button></h2>
                </div>
            </div>

            <div class="caixa">
                <img src="./img/gta.jpg" alt="" class="box_background">
                <div class="box_text">
                <h2>GTA V   <button class="buy"> <b> Comprar </b></h2> 
                </div>
            </div>

            <div class="caixa">
                <img src="./img/dmc5.jpg" alt="" class="box_background">
                <div class="box_text">
                <h2>Devil May Cry 5   <button class="buy"> <b> Comprar </b></h2> 
                </div>
            </div>

            <div class="caixa">
                <img src="./img/deadcells.png" alt="" class="box_background">
                <div class="box_text">
                <h2>Dead Cells   <button class="buy"> <b> Comprar </b></h2> 
                </div>
            </div>    
        </div>

        <div class="colum">
            <div class="caixa">
                <img src="./img/titanfall.jpg" alt="" class="box_background">
                <div class="box_text">
                <h2>Titanfall 2   <button class="buy"> <b> Comprar </b></button></h2>
                </div>
            </div>

            <div class="caixa">
                <img src="./img/Resident_evil_7.jpg" alt="" class="box_background">
                <div class="box_text">
                <h2>Resident evil 7   <button class="buy"> <b> Comprar </b></h2> 
                </div>
            </div>

            <div class="caixa">
                <img src="./img/cs.png" alt="" class="box_background">
                <div class="box_text">
                <h2>Counter Strike   <button class="buy"> <b> Comprar </b></h2> 
                </div>
            </div>

            <div class="caixa">
                <img src="./img/stardew_valley.png" alt="" class="box_background">
                <div class="box_text">
                <h2> Stardew Valley  <button class="buy"> <b> Comprar </b></h2> 
                </div>
            </div>    
        </div>

            <div class="ranking"> 
                <a href="#">lançamentos recentes</a>
            </div>
            <table class="purpleHorizon">
            <thead>
                <tr>
                    <th></th>
                    <th>Nome do Jogo</th>
                    <th>Data de lançamento</th>
                    <th>Valor</th>
                </tr>
            </thead>
            <%
    try {
            JogosDAO objJogoDAO = new JogosDAO();
            ArrayList<JogosDTO> lista = objJogoDAO.PesquisarJogo();
                        
            for(int num = 0; num<lista.size(); num++){
%>
                <tbody>
                    <%
                    out.println("<tr>");
                    out.println("<td><img src='./img/games.png' alt='' width='160' height='120'></td>");
                    out.println("<td>" + lista.get(num).getNome_jogo() + "</td>");
                    out.println("<td>" + lista.get(num).getData_lancamento() + "</td>");
                    out.println("<td>" + "R$ " + lista.get(num).getValor() + "</td>");
                    out.println("</tr>");
%>
                </tbody>
<%
    }
        } catch (Exception e) {
        }
%>
            </table>

                


            
    </main>
</body>
</html>