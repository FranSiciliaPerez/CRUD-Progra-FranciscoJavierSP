<%-- 
    Document   : grabasuperheroes
    Created on : 18 may. 2021, 10:04:11
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
        <title>JSP Page</title>
        <style>
            * {
                font-family: Arial;
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
            int codigo =Integer.parseInt(params[0]);
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
              + "'" +apellidos + "', "
              +      edad + ", "
              + "'" +alias + "', "
              + "'" + superpoder + "', "
              +  " "+ codigo + ""
              + ")";

            out.println("<h1>Fila añadida con exito</h1>");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

            Statement s = conexion.createStatement();

            s.execute(INSERT_DATOS);
            

            out.println(INSERT_DATOS);

            conexion.close();
        %>
    </body>
</html>
