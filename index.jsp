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
        <title>Login de acceso a pagina principal </title>
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
            HashMap<String, String> usuarioContrasena = new HashMap<String, String>();

            usuarioContrasena.put("usuario1@gmail.com", "@Alumno_1");
            usuarioContrasena.put("usuario2@gmail.com", "@Alumno_2");
            usuarioContrasena.put("profesor1@gmail.com", "@Profe_2");
            usuarioContrasena.put("profesor2@gmail.com", "@Profe_1");

            request.setCharacterEncoding("UTF-8");
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");

            if (usuarioContrasena.containsKey(usuario)) {

                if (usuarioContrasena.get(usuario).equals(contrasena)) {

                    response.sendRedirect("listado.jsp");
                } else {
                    out.print("El usuario o la contraseña introducida es incorrecta o no existe");
                }
            } else {
            }
        %>
        <form action="index.jsp" class="formulario">
            <h2>¡Bienvenido a la pagina de login! <br>Por favor logeate para acceder al listado de Marvel</h2>
            <div class="form-group usuario">
                <label for="exampleInputEmail1">Introduzca el nombre de usuario(en formato correo)
                </label>
                <input autocomplete="off" type="text" class="form-control" name="usuario" id="usuario" aria-describedby="user"/>
            </div>
            <div class="form-group contrasena">
                <label for="exampleInputPassword1">Introduce una contraseña (por su seguridad le recomendamos
                    alterne entre letras mayúsculas y minúsculas junto a numeros y carácteres especiales)
                </label>
                <input type="password" class="form-control" name="contrasena" id="Contrasena"/>
            </div>
            <input class="submit" type="submit">
        </form>
    </body>
</html>
