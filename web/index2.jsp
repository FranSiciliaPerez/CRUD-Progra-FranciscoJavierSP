<%-- 
    Document   : index(login)
    Author     : Francisco Javier Sicilia Pérez
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login cambio acceso a modo administrador  </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            min-width: 100%;
            width: var(--fit-content);
            min-height: 100vh;
            height: var(--fit-content);
            background-image: url(./imagenes/fondo2.jpg);
            background-size: cover;
            overflow: auto;
        }
        body {
            /*padding: 2rem;*/
            display: flex;
        }
        h2{
            text-align: center
        }
        .formulario {
            color: white;
            width: 80vw;
            margin: auto;
            padding: 1rem;
            border:rgb(145, 145, 151) 2px solid;
            border-radius: 20px;
            background-color: #6C88A3;
        }
        .form-group {
            width: 90%;
            margin: auto;
        }

        input {
            margin-bottom: 1rem;
        }

    </style>
    <body>

        <%            
            if (session.getAttribute("error") != null) { //compruebo si hay algún error
                if (session.getAttribute("error").equals("Lo siento, usuario o contraseña incorrectos")) { 
                    session.setAttribute("error", "null");
                    out.print("<script type=\"text/javascript\">alert(\"Lo siento, acceso denegado, usuario o contraseña incorrectos\");</script>");
                }
            }
        %>
        <form method="get" action="confirmalogin.jsp" class="formulario">
            <h2>¡Bienvenido a la pagina de login! <br>Identifiquese para poder acceder al listado Marvel en modo administrador</h2>
            <div class="form-group usuario">
                <label for="exampleInputEmail1">Introduzca el nombre de usuario</label>
                <input autocomplete="off" type="text" class="form-control" name="usuario" id="usuario" aria-describedby="user"/>
            </div>
            <div class="form-group contrasena">
                <label for="exampleInputPassword1">Introduzca la contraseña</label>
                <input type="password" class="form-control" name="contrasena" id="contrasena"/>
            </div>
            <input class="submit" type="submit">
            <input id="Salir" type="submit" value="Volver al inicio">
        </form>
        <form action="index.jsp">
            <input id="Salir" type="submit" value="Volver al inicio">
        </form>
    </body>
</html>
