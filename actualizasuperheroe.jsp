<%-- 
    Document   : acualizasuperheroe
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
    </head>
    <style>
        body {background-image: url(./imagenes/Fondo.png);
          background-size:cover;
          background-position: 55%;
          padding-top: 50px;
          overflow: auto;
          margin-top: 80px;
          margin-left:300px;
          margin-right: 100px;
          margin-bottom: 100px;
          color: white;}
    </style>
        <body>
            <h1>Superheroe modificado</h1>
            <%

                String modificadatos = "";

                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

                    Statement s = conexion.createStatement();

                    modificadatos
                      = "UPDATE Superheroes"
                      + " SET Nombre = '" + request.getParameter("Nombre") + "'"
                      + ", Apellidos = '" + request.getParameter("Apellidos") + "'"
                      + ", Edad = " + request.getParameter("Edad")
                      + ", Alias = '" + request.getParameter("Alias") + "'"
                      + ", Superpoder = '" + request.getParameter("Superpoder") + "'"
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


            <form action="index.jsp">
                <small class="form-text text-muted">Pulsa volver para regresar al listado de superheroes</small>
            <br><input id="Volver" type="submit" value="Volver"> 
        </form>
    </body>
</html>
