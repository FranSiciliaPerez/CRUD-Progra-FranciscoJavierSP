<%-- 
    Document   : login
    Created on : 15 may. 2022, 17:04:32
    Author     : Franky
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmar Login</title>
    <link rel="icon" href="./imagenes/favicon.jpeg">
    <body>


        <%request.setCharacterEncoding("UTF-8");%>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");
            Statement s = conexion.createStatement();
            Statement u = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM usuario");
            boolean correcto = false;
            
            while (listado.next()) {
                if (request.getParameter("usuario").toString().equals(listado.getString("nomUsuario")) && request.getParameter("contrasena").toString().equals(listado.getString("contrasena"))) {
                    correcto = true;
                    String name = request.getParameter("usuario");
                    ResultSet crudmarvel = u.executeQuery("SELECT * FROM usuario");
                    crudmarvel.next();
                    response.sendRedirect("listado.jsp");
                    
                }
            }
            if (!correcto) {
                session.setAttribute("error", "Lo siento, usuario o contraseña incorrectos");
                response.sendRedirect("index2.jsp");
            }
        %>

    </body>
</html>