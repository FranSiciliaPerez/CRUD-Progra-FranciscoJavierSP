<%-- 
    Document   : login
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
        <title>Formulario de entrada </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        * {
            box-sizing: border-box;
        }
        html, body {
            margin: 0;
            padding: 0;
            min-width: 100%;
            width: var(--fit-content);
            min-height: 100vh;
            height: var(--fit-content);
            background-image: url(./imagenes/Fondo.png);
            background-size: cover;
            overflow: auto;
        }

        body {
            /*padding: 2rem;*/
            display: flex;
        }

        .formulario {
            color: white;
            width: 80vw;
            margin: auto;
            padding: 1rem;
            border:rgb(145, 145, 151) 2px solid;
            border-radius: 20px;
            background-color: #ff6666;
        }

        .form-group {
            width: 90%;
            margin: auto;
        }

        input {
            margin-bottom: 1rem;
        }


        .info {
            display: none;
            color: #f00;
        }

    </style>
    <body>
        <form action="index.jsp" onsubmit ="return validarFormulario()" class="formulario">
            <div class="form-group usuario">
                <label for="exampleInputEmail1">Introduzca un usuario
                </label>
                <input autocomplete="off" type="text" class="form-control" id="Usuario" aria-describedby="user"/>
            </div>
            <div class="form-group contraseña">
                <label for="exampleInputPassword1">Introduce una contraseña (por su seguridad le recomendamos
                    alterne entre letras mayúsculas y minúsculas junto a numeros y carácteres especiales)
                </label>
                <input type="password" class="form-control" id="Contraseña"/>
            </div>
            <input class="submit" type="submit">


            <%
                try {
                    HashMap cuentas = new HashMap<String, String>();

                    cuentas.put("usuario", "usuario");

                    String[] params = {
                        request.getParameter("usuario"),
                        request.getParameter("contraseña")
                    };

                    boolean PARAMS_NOT_NULL = true;

                    for (String param : params) {
                        if (param == null) {
                            PARAMS_NOT_NULL = false;
                            break;
                        }
                    }
                    String usuario = params[0];
                    String contraseña = params[1];

                    if (PARAMS_NOT_NULL) {
                        if (cuentas.containsKey(usuario)) {
                            if (cuentas.get(usuario).equals(contraseña)) {
                                session.setAttribute("usuraio", usuario);
                                session.setAttribute("contraseña", contraseña);
                            }
                        }
                    } 

            %>
            <%               
                if (request.getParameter("reset") != null) {
                    if (request.getParameter("reset").equals("true")) {
                        session.setAttribute("usuario", null);
                        session.setAttribute("contraseña", null);
                    }
                }
                
                if (session.getAttribute("usuario") != null) {
                    response.sendRedirect("index.jsp");
                }
            %>
            <script>
            console.log("%cSession Usuario: " + "%c<%= session.getAttribute("usuario")%>", "color: #ff0", "");
            console.log("%cSession Contraseña: " + "%c<%= session.getAttribute("contraseña")%>", "color: #ff0", "");
            </script>

            <script>
            const paramUsuario = "<%= usuario%>";
            const paramContraseñad = "<%= contraseña%>";
            console.log({paramUser, paramPassword});
            </script>


            <%
            } catch (Exception e) {
            %>

            <script>
            console.error("<%= e%>");
            </script>

            <%
                }
            %>

        </form>
    </body>
</html>
