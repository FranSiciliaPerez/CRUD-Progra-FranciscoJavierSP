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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto","root", "");
 Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM socio");
            while (listado.next()) {
                out.println(listado.getString("socioID") + " " + listado.getString("nombre") + "<br>");
            }
            conexion.close();
        %>
    </body>
</html>
