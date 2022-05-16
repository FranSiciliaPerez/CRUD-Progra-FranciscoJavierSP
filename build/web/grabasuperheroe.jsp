<%-- 
    Document   : grabasuperheroes.jsp
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
        <title>Confirmación añadir</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
        <style>
            * {
                font-family: Arial;
            }
            body {
                background-image: url(./imagenes/spiderman.png);
                background-size:cover;
                text-align: center;
                padding-top: 50px;
                overflow: auto;
                margin-right: 100px;
                margin-bottom: 100px;
                color: black;
            }
            #hero{
                margin-left: 50px;

            }
            #aceptar{
                font-style: normal;
            }

        </style>
    </head>
    <body>
        <%
            String[] params = {
                request.getParameter("Codigo"), // int
                request.getParameter("Alias"), // String
                request.getParameter("Nombre"), // String
                request.getParameter("Apellidos"), // String
                request.getParameter("Edad"), // int
                request.getParameter("Superpoder") // String
            };

            int codigo = Integer.parseInt(params[0]);
            String alias = params[1];
            String nombre = params[2];
            String apellidos = params[3];
            int edad = Integer.parseInt(params[4]);
            String superpoder = params[5];

            String INSERT_DATOS
                    = "INSERT INTO superheroes "
                    + "VALUES "
                    + "("
                    + "'" + nombre + "', "
                    + "'" + apellidos + "', "
                    + edad + ", "
                    + "'" + alias + "', "
                    + "'" + superpoder + "', "
                    + " " + codigo + ""
                    + ")";

            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

            Statement s = conexion.createStatement();

            s.execute(INSERT_DATOS);
            conexion.close();
        %>
        <h1>El superhéroe ha sido añadido con éxito</h1>
        <form action="aniadesuperheroe.jsp">
            <h3 class="form-text text-muted">Pulsa 'añadir' para insertar otro superheroe</h3>
            <input id="Añadir" type="submit" value="Añadir">
        </form>
        <form action="listado.jsp">
            <h3 class="form-text text-muted">Pulsa 'volver' para regresar al listado</h3>
            <input id="Volver" type="submit" value="Volver"> 
        </form>
    </body>
</html>
