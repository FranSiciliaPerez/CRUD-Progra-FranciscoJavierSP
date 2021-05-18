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
        <title>Listado de super heroes</title>
    </head>
    <body>
        <div>Listado de super heroes:</div><br>
          <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel","root", "");
            
            
            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM superheroes");
            while (listado.next()) {
                out.println(listado.getString("Codigo") + " " + listado.getString("Nombre") + " " + listado.getString("Apellidos")  +" " + listado.getString("Alias") + " " + listado.getString("Superpoder") + " " + listado.getString("Edad") + "<br>");
            }
            conexion.close();
        %>
    </body>
</html>