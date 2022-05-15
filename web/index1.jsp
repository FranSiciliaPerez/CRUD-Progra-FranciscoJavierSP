
<%-- 
    Document   : index2
    Created on : 15 may. 2022, 20:50:46
    Author     : Franky
--%>
<%-- 
    Document   : index.jsp
    Author     : Francisco Javier Sicilia Pérez
--%>
<%@page import="java.util.ArrayList"%>
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Listado</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        body {
            background-image: url(./imagenes/fondo3.jpg);
            background-size:cover;
            overflow: auto;
            overflow: auto;
            color: white;
            margin-top: 180px;
            margin-left: 180px;
        }
        h1{
            background-color: #0099ff;
            border: 1px solid white;
            margin-right: 80px;
            margin-left: 6px;
            text-align:center;
        }
        h2{
            background-color: #0099ff;
            border: 1px solid white;
            margin-right: 70%;
            overflow: auto;
        }
        table th,td{
            border: 1px solid white;
            color: black;
            background-color: #0099ff;
        }
        footer{
            border: 1px solid white;
            overflow: auto;
            margin-top: 5%;
            margin-left: 30%;
            margin-right: 45%;
            color: black;
            background-color: #0099ff;
        }
    </style>
    <body>
        <%  try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

                Statement s = conexion.createStatement();
                ResultSet listado = s.executeQuery("SELECT * FROM superheroes");
                Statement d = conexion.createStatement();
                ResultSet listado2 = d.executeQuery("SELECT * FROM autores");
        %>
        <h1>Bienvenido al listado de superheroes y autores de Marvel</h1>
        <h2>Listado de superheroes:</h1>
        <table>
            
            <tr>
                <th>Codigo</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th>Alias</th>
                <th>Superpoder</th>
            </tr>
            <%
                ArrayList<String> filas = new ArrayList<String>();
                while (listado.next()) {

                    filas.add(
                            "<tr>"
                            + " <td>" + listado.getString("Codigo") + "</td>"
                            + " <td>" + listado.getString("Nombre") + "</td>"
                            + " <td>" + listado.getString("Apellidos") + "</td>"
                            + " <td>" + listado.getString("Edad") + "</td>"
                            + " <td>" + listado.getString("Alias") + "</td>"
                            + " <td>" + listado.getString("Superpoder") + "</td>"
                            + " </tr>"
                    );

                }
                for (int i = 0; i < filas.size(); i++) {
                    out.println(filas.get(i));
                }

            %>
            </table>
            <h2>Listado de autores:</h1>

            <table>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Edad</th>
                    <th>Superheroe</th>
                </tr>
                <%
                ArrayList<String> filas2 = new ArrayList<String>();
                while (listado2.next()) {

                    filas2.add(
                            "<tr>"
                            + " <td>" + listado2.getString("Codigo") + "</td>"
                            + " <td>" + listado2.getString("Nombre") + "</td>"
                            + " <td>" + listado2.getString("Apellidos") + "</td>"
                            + " <td>" + listado2.getString("Edad") + "</td>"
                            + " <td>" + listado2.getString("Superheroe") + "</td>"
                            + " <td>"
                            + " </tr>"
                    );

                }
                for (int i = 0; i < filas2.size(); i++) {
                    out.println(filas2.get(i));
                }

            %>
            </table>
            <%                conexion.close();

            } catch (Exception e) {

            %>

            <script>
                console.error('<%= e%>');
            </script>

            <%
                }
            %>
        
        <form action="index.jsp">
            <input id="Salir" type="submit" value="Volver al inicio">
        </form>
    </body>
    <footer>Pagina realizada por Francisco Javier Sicilia Pérez</footer>
</html>