<%-- 
    Document   : listado.jsp
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
        <title>Listado administrador</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        body {
            background-image: url(./imagenes/fondo3.jpg);
            background-size:cover;
            overflow: auto;
            overflow: auto;
            color: white;
            margin-top: 120px;
            margin-left: 180px;
        }
        h1,h2{
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
        <%         
          try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

                Statement s = conexion.createStatement();
                ResultSet listado = s.executeQuery("SELECT * FROM superheroes");
                Statement d = conexion.createStatement();
                ResultSet listado2 = d.executeQuery("SELECT * FROM autores");
        %>
        <h1>Bienvenido al modo administrador</h1>
        <h2>Listado de superheroes:</h2>
        <table>

            <tr>
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
                            + " <td>" + listado.getString("Nombre") + "</td>"
                            + " <td>" + listado.getString("Apellidos") + "</td>"
                            + " <td>" + listado.getString("Edad") + "</td>"
                            + " <td>" + listado.getString("Alias") + "</td>"
                            + " <td>" + listado.getString("Superpoder") + "</td>"
                            + " <td>"
                            + "        <a href='modificarsuperheroe.jsp?Nombre=" + listado.getString("Nombre") + "&Apellidos=" + listado.getString("Apellidos") + "&Edad=" + listado.getString("Edad") + "&Alias=" + listado.getString("Alias") + "&Superpoder=" + listado.getString("Superpoder") + "'>"
                            + "         <input id='Editar' type='submit' value='Editar'>"
                            + " </td>"
                            + " <td>"
                            + "      <a href='borrasuperheroe.jsp?Codigo=" + listado.getString("Codigo") + "'>"
                            + "      <input id='Borrar' type='submit' value='Borrar'>"
                            + " </td>"
                            + " </tr>"
                    );

                }
                for (int i = 0; i < filas.size(); i++) {
                    out.println(filas.get(i));
                }

            %>
            <td>
                <form action="aniadesuperheroe.jsp">
                    <input id="Añadir" type="submit" value="Añadir"> 
                </form>
            </td>
        </table>
        <h2>Listado de autores:</h2>

        <table>
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th>Superheroe</th>
            </tr>
            <%                    ArrayList<String> filas2 = new ArrayList<String>();
                while (listado2.next()) {

                    filas2.add(
                            "<tr>"
                            + " <td>" + listado2.getString("Nombre") + "</td>"
                            + " <td>" + listado2.getString("Apellidos") + "</td>"
                            + " <td>" + listado2.getString("Edad") + "</td>"
                            + " <td>" + listado2.getString("Superheroe") + "</td>"
                            + " <td>"
                            + "        <a href='modificaautor.jsp?Codigo=" + listado2.getString("Codigo") + "&Nombre=" + listado2.getString("Nombre") + "&Apellidos=" + listado2.getString("Apellidos") + "&Edad=" + listado2.getString("Edad") + "&Superheroe=" + listado2.getString("Superheroe") + "'>"
                            + "         <input id='Editar' type='submit' value='Editar'>"
                            + " </td>"
                            + " <td>"
                            + "      <a href='borraautor.jsp?Codigo=" + listado2.getString("Codigo") + "'>"
                            + "      <input id='Borrar' type='submit' value='Borrar'>"
                            + " </td>"
                            + " </tr>"
                    );

                }
                for (int i = 0; i < filas2.size(); i++) {
                    out.println(filas2.get(i));
                }

            %>
            <td>
                <form action="aniadeautor.jsp">
                    <input id="Añadir" type="submit" value="Añadir"> 
                </form>
            </td>
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
        
        <form action="index2.jsp">
            <input id="Cerrar sesión" type="submit" value="Cerrar sesión">
        </form>
    </body>
    <footer>Pagina realizada por Francisco Javier Sicilia Pérez</footer>
</html>






<%
             //if (session.getAttribute(request.getParameter("usuario")) == null) {
             //  session.setAttribute("error",  "Debe iniciar sesión para acceder al modo adminstrador.");
             //   response.sendRedirect("index2.jsp");
             //}
        %>