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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./styles/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Crud Marvel</title>
        <link rel="icon" type="image/x-icon" href="./images/logo.jpg">
    </head>
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
                session.setAttribute("error", "Lo siento, usuario o contraseña incorrectos se le redirigirá a la pagina en modo usuario");
                response.sendRedirect("index2.jsp");
            }
        %>
        
    </body>
</html>