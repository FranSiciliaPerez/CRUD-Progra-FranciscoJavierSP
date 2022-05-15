<%-- 
    Document   : borraautor
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
        <title>Borra superheroes</title>
    </head>
    <body>
        <%
            int codigo = Integer.parseInt(request.getParameter("Codigo"));
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");
            String borrado = "DELETE FROM autores WHERE Codigo =" + codigo;
            Statement s = conexion.createStatement();
            s.execute(borrado);
            response.sendRedirect("listado.jsp");

        %>

    </body>
</html>
