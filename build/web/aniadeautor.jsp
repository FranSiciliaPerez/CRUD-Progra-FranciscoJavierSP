<%-- 
    Document   : añadirautor.jsp
    Author     : Francisco Javier Sicilia Pérez
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Añadir autores</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
        <style>
            body {
                background-image: url(./imagenes/Fondo.png);
                background-size:cover;
                padding-top: 50px;
                overflow: auto;
                margin-top: 60px;
                margin-left:300px;
                margin-right: 100px;
                margin-bottom: 50px;
                color: white;
            }
            #hero{
                margin-left: 50px;

            }
            h1{
                text-align: left;
            }
            input{
                background-color: orange;
                border-color: white;
                font-style: italic;

            }
            #aceptar{
                font-style: normal;
            }

        </style>
    </head>
    <body>
        <h1>Añadir Autor</h1>
        <section id="hero">
            <form action="grabaautor.jsp">
                <div>
                    <input type="hidden"class="form-control"  value=NULL aria-describedby="Codigo">
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="nombre">Nombre</label>
                    <input type="text" class="form-control" required name="Nombre" aria-describedby="Nombre" placeholder="Nombre">
                    <small id="autores" class="form-text text-muted">Introduce el nombre</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="apellidos">Apellidos</label>
                    <input type="text" class="form-control" required name="Apellidos" aria-describedby="Apellidos" placeholder="Apellidos">
                    <small id="autores" class="form-text text-muted">Introduce los apellidos</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="edad">Edad</label>
                    <input type="number" class="form-control" required name="Edad" placeholder="Edad">
                    <small id="autores" class="form-text text-muted">Introduce la edad</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="superheroe">Superheroe</label>
                    <input type="text" class="form-control" required name="Superheroe" aria-describedby="Superheroe" placeholder="Alias o nombre del superheroe">
                    <small id="autores" class="form-text text-muted">Introduce el superheroe</small><br>
                </div>
                <br><input id="aceptar" type="submit" value="Aceptar">
            </form>
            <form action="listado.jsp">
                <input id="Cancelar" type="submit" value="Cancelar">
            </form>
        </section>  
    </body>
</html>
