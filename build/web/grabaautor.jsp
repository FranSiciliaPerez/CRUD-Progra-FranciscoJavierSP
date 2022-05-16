<%-- 
    Document   : grabaautor.jsp
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
        <style>
            * {
                font-family: Arial;
            }
            body {
                background-image: url(./imagenes/stanlee.webp);
                background-size:cover;
                text-align: center;
                padding-top: 70px;
                overflow: auto;
                margin-right: 100px;
                margin-bottom: 100px;
                color: white;
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
                request.getParameter("Nombre"), // String
                request.getParameter("Apellidos"), // String
                request.getParameter("Edad"), // int
                request.getParameter("Superheroe") // String
            };

            int codigo = Integer.parseInt(params[0]);
            String nombre = params[1];
            String apellidos = params[2];
            int edad = Integer.parseInt(params[3]);
            String superheroe = params[4];

            final String INSERT_DATOS
                    = "INSERT INTO autores "
                    + "VALUES "
                    + "("
                    + "'" + codigo + "', "
                    + "'" + nombre + "', "
                    + "'" + apellidos + "', "
                    + edad + ", "
                    + "'" + superheroe + "'"
                    + ")";
            

            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

            Statement s = conexion.createStatement();

            s.execute(INSERT_DATOS);

            conexion.close();
        %>
        <h1>¡El autor ha sido añadido con exito!</h1>
        <form action="aniadeautor.jsp">
            <h3 class="form-text text-muted">Pulsa 'añadir' para insertar otro autor</h3>
            <input id="Añadir" type="submit" value="Añadir">
        </form>
        <form action="listado.jsp">
            <h3 class="form-text text-muted">Pulsa 'volver' para regresar al listado</h3>
            <input id="Volver" type="submit" value="Volver"> 
        </form>
    </body>
</html>
