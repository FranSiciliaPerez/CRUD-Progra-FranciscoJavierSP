<%-- 
    Document   : añadirsuperheroe.jsp
    Author     : Francisco Javier Sicilia Pérez
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Añadir Superheroe</title>
        <style>
            body{
                background-position: 55%;
                padding-top: 50px;
                min-height: 400px;
            }
            #hero{
                margin-left: 50px;
                
            }
            h1{text-align: left}
            input{
                background-color: greenyellow;
                font-style: italic;
                
            }
            #aceptar{
                font-style: normal;
            }
        </style>
    </head>
    <body>
        <h1>Añadir Superheroe</h1>
            <section id="hero">
                <form action="grabasuperheroes.jsp">
                 <div>
                    <input type="number" class="form-control" required name="Codigo" aria-describedby="Codigo" placeholder="Codigo">
                    <small id="superheroes" class="form-text text-muted">Codigo Superheroe</small><br>
                </div>
                <div>
                    <input type="text" class="form-control" required name="Alias" aria-describedby="Alias" placeholder="Alias">
                    <small id="superheroes" class="form-text text-muted">Introduce el alias</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="nombre">Nombre</label>
                    <input type="text" class="form-control" required name="Nombre" aria-describedby="Nombre" placeholder="Nombre">
                    <small id="superheroes" class="form-text text-muted">Introduce el nombre</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="apellidos">Apellidos</label>
                    <input type="text" class="form-control" required name="Apellidos" aria-describedby="Apellidos" placeholder="Apellidos">
                    <small id="superheroes" class="form-text text-muted">Introduce los apellidos</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="edad">Edad</label>
                    <input type="number" class="form-control" required name="Edad" placeholder="Edad">
                    <small id="superheroes" class="form-text text-muted">Introduce la edad</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="superpoderes">Superpoderes</label>
                    <input type="text" class="form-control" required name="Superpoder" aria-describedby="Superpoderes" placeholder="Fecha de nacimiento">
                    <small id="superheroes" class="form-text text-muted">Introduce las habilidades y poderes</small><br>
                </div>
                <br><input id="aceptar" type="submit" value="Aceptar">
                </form>
            </section>  
    </body>
</html>
