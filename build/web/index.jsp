<%-- 
    Document   : index
    Created on : 16 may. 2022, 0:32:56
    Author     : Franky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Crud Marvel</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        h1,h2{
            background-color: #0099ff;
            border: 1px solid white;
            margin-right: 70px;
            margin-left: 30px;
            text-align:center;
        }
        h2{
            text-align:left;
        }
        body {
            background-image: url(./imagenes/fondo3.jpg);
            background-size:cover;
            overflow: auto;
            overflow: auto;
            color: white;
            margin-top: 120px;
            margin-left: 180px;
        }
        footer{
            border: 1px solid white;
            overflow: auto;
            margin-top: 5%;
            margin-left: 30%;
            margin-right: 45%;
            color: black;
            background-color: #0099ff;
        }
        input {
            margin-left: 40%;
            text-align: center;
            margin-top: 1rem;
        }
    </style>
    <body>
        <h1>Bienvenido/a a la pagina de inicio</h1>
        <h2>Para aceder al listado pulse el boton -Listado Marvel-</h2>
        <form action="index1.jsp">
            <input id="AccesoListado" type="submit" value="Listado Marvel">
        </form>
        <h2>Para aceder al listado Marvel en modo administrador pulse el boton -Modo administrador-</h2>
        <form action="index2.jsp">
            <input id="IniciarSesión" type="submit" value="Modo administrador">
        </form>
    </body>
    <footer>Pagina realizada por Francisco Javier Sicilia Pérez</footer>
</html>
