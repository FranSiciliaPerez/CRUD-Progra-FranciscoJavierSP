<%-- 
    Document   : modificarsuperheroe
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
        <title>Modificar Superheroes</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
        <style>
            body {
                background-image: url(./imagenes/54081-wolverine.jpg);
                background-size:cover;
                padding-top: 50px;
                overflow: auto;
                margin-top: 30px;
                margin-left:300px;
                margin-right: 800px;
                margin-bottom: 90px;
            }
            #hero{
                margin-left: 50px;
                border: 1px solid white;
                background-color: #0099ff;
                margin-rigth: 50px;

            }
            h1{
                text-align: left
            }
            input{
                border: 1px solid black;
                color: black;
                background-color: white;

            }
            #aceptar{
                font-style: normal;
            }

        </style>
    </head>
    <body>
    <body>
        <h1>Modificar Superheroe</h1>
        <section id="hero">

            <%

                try {
            %>   
            <form action="actualizasuperheroe.jsp">
                <div>
                    <input type="hidden" class="form-control" required value="<%= request.getParameter("Codigo")%>" required name="Codigo" aria-describedby="Codigo" placeholder="Codigo">
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="nombre">Nombre</label>
                    <input type="text" class="form-control" required value="<%= request.getParameter("Nombre")%>" name="Nombre" aria-describedby="Nombre" placeholder="Nombre">
                    <small id="superheroes" class="form-text text-muted">Introduce el nombre</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="apellidos">Apellidos</label>
                    <input type="text" class="form-control" required value="<%= request.getParameter("Apellidos")%>" name="Apellidos" aria-describedby="Apellidos" placeholder="Apellidos">
                    <small id="superheroes" class="form-text text-muted">Introduce los apellidos</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="edad">Edad</label>
                    <input type="number" class="form-control" required value="<%= request.getParameter("Edad")%>" name="Edad" placeholder="Edad">
                    <small id="superheroes" class="form-text text-muted">Introduce la edad</small><br>
                </div>
                <div>
                    <input type="text" class="form-control" required value="<%= request.getParameter("Alias")%>" name="Alias" aria-describedby="Alias" placeholder="Alias">
                    <small id="superheroes" class="form-text text-muted">Introduce el alias</small><br>
                </div>
                <div class="form-group mx-auto col-sm-6">
                    <br><label for="superpoderes">Superpoderes</label>
                    <input type="text" class="form-control" required value="<%= request.getParameter("Superpoder")%>" name="Superpoder" aria-describedby="Superpoderes" placeholder="Fecha de nacimiento">
                    <small id="superheroes" class="form-text text-muted">Introduce las habilidades y poderes</small><br>
                </div>
                <br><input id="aceptar" type="submit" value="Aceptar">

            </form>
            <form action="listado.jsp">
                <input id="Cancelar" type="submit" value="Cancelar"> 
            </form>
            <%

                } catch (Exception e) {
                }
            %>

        </section>  
    </body>
</body>
</html>
