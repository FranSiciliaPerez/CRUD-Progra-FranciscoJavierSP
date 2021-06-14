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
        <title>Listado de superheroes</title>
        <link rel="icon" href="./imagenes/favicon.jpeg">
    </head>
    <style>
        th{text-align:left}
        table th,td{border: 1px solid white;
                    color: white;
                    background-color: #ff6666;
                    }
        body {background-image: url(./imagenes/Fondo.png);
              background-size:cover;
              background-position: 55%;
              overflow: auto;
              color: white;
              margin-top: 180px;
              margin-left:180px;}
        </style>
        <body>
            <h1>Listado de superheroes:</h1><br>
            <%  try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT * FROM superheroes");
            %>
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
                          + " <td>"
                          + "        <a href='modificarsuperheroe.jsp?Codigo=" + listado.getString("Codigo") + "&Nombre=" + listado.getString("Nombre") + "&Apellidos=" + listado.getString("Apellidos") + "&Edad=" + listado.getString("Edad") + "&Alias=" + listado.getString("Alias") + "&Superpoder=" + listado.getString("Superpoder") + "'>"
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
                        <small class="form-text text-muted">Pulsa añadir para insertar superheroes</small>
                    <br><input id="Añadir" type="submit" value="Añadir"> 
                </form>
            </td>


            <%                conexion.close();

            } catch (Exception e) {

            %>

            <script>
                console.error('<%= e%>')
            </script>

            <%
                }
            %>


        </table>
    </body>
</html>