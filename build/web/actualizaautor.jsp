<%-- 
    Document   : acualizaautor.jsp
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
        <title>Confirmación modificacion/es</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        body {
            background-image: url(./imagenes/stanlee.webp);
            background-size:cover;
            padding-top: 50px;
            overflow: auto;
            margin-top: 80px;
            margin-right: 100px;
            margin-bottom: 100px;
            color: white;
            text-align: center
        }
    </style>
    <body>
        <h1>Autor modificado correctamente</h1>
        <%

            String modificadatos = "";

            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

                Statement s = conexion.createStatement();

                modificadatos
                        = "UPDATE Autores"
                        + " SET Nombre = '" + request.getParameter("Nombre") + "'"
                        + ", Apellidos = '" + request.getParameter("Apellidos") + "'"
                        + ", Edad = " + request.getParameter("Edad")
                        + ", Superheroe = '" + request.getParameter("Superheroe") + "'" 
                        + " WHERE Codigo = " + request.getParameter("Codigo");
                        

                s.execute(modificadatos);
        %>

        <%            conexion.close();

        } catch (Exception e) {

        %>

        <script>
            console.error('<%= e%>')
        </script>

        <%
            }
        %>

        <script>
            console.log(`%cComando SQL de Modificación de fila: %c<%= modificadatos%>`, 'color: #ff0', '')
        </script>


        <form action="listado.jsp">
            <small class="form-text text-muted">Pulsa volver para regresar al listado</small>
            <br><input id="Volver" type="submit" value="Volver"> 
        </form>
    </body>
</html>
