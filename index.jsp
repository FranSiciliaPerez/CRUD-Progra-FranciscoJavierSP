<%-- 
    Document   : index
    Created on : 17 may. 2021, 13:15:35
    Author     : Franky
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url('imagenes/progra.jpg');
                background-size: cover;
                background-position: 55%;
                padding-top: 50px;
                min-height: 400px;
            }
            #hero{
                margin-left: 50px;
                
            }
            h1{
                color: white;
            }
            input{
                background-color: green;
                font-style: italic;
                
            }
            #aceptar{
                font-style: normal;
            }
        </style>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel","root", "");
 Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM superheroes");
            while (listado.next()) {
                out.println(listado.getString("Alias") + " " + listado.getString("Nombre") + "<br>");
            }
            conexion.close();
        %>
            <section id="hero">
                <div>
                    <h1>Formulario</h1>
                    <input type="text" class="form-control" id="Alias" aria-describedby="Alias" placeholder="Alias">
                    <small id="superheroes" class="form-text text-muted">Introduce el alias</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="Nombre" aria-describedby="Nombre" placeholder="Nombre">
                    <small id="superheroes" class="form-text text-muted">Introduce el nombre</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="apellidos">Apellidos</label>
                    <input type="text" class="form-control" id="Apellidos" aria-describedby="Apellidos" placeholder="Apellidos">
                    <small id="superheroes" class="form-text text-muted">Introduce los apellidos</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="edad">Edad</label>
                    <input type="number" class="form-control" id="Edad" placeholder="Edad">
                    <small id="superheroes" class="form-text text-muted">Introduce la edad</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="superpoderes">Superpoderes</label>
                    <input type="text" class="form-control" id="Superpoder" aria-describedby="Superpoderes" placeholder="Fecha de nacimiento">
                    <small id="superheroes" class="form-text text-muted">Introduce las habilidades y poderes</small><br>
                </div>
                <br><input id="aceptar" type="submit" value="Aceptar">
            </section>  
    </body>
</html>
