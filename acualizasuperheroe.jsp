<%-- 
    Document   : acualizasuperheroe
    Created on : 26 may. 2021, 10:46:36
    Author     : Franky
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        try {
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

            Statement s = conexion.createStatement();
            
            
            String modificadatos =
            "UPDATE "
            + "SET" 
            + "Codigo"
            + "WHERE Codigo = "
            ;

//            s.execute();
        
        %>
        
        <%
            conexion.close();
            
            } catch(Exception e) {
                
        %>
        
        <script>
            console.error( '<%= e %>' )
        </script>

        <%
            }
        %>
        
        
         <form action="index.jsp">
            <small class="form-text text-muted">Pulsa volver para regresar al listado de superheroes</small>
            <br><input id="Volver" type="submit" value="Volver"> 
        </form>
    </body>
</html>
