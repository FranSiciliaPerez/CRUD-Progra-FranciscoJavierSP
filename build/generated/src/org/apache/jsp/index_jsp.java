package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Listado de super heroes</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        th{text-align:left}\n");
      out.write("        table th,td{border: 1px solid black;}\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <div>Listado de super heroes:</div><br>\n");
      out.write("        ");
  try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/marvel", "root", "");

            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM superheroes");
        
      out.write("\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <th>Codigo</th>\n");
      out.write("                <th>Nombre</th>\n");
      out.write("                <th>Apellidos</th>\n");
      out.write("                <th>Edad</th>\n");
      out.write("                <th>Alias</th>\n");
      out.write("                <th>Superpoder</th>\n");
      out.write("            </tr>\n");
      out.write("                    ");

                        while ( listado.next() ) {
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( listado.getString("Codigo") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( listado.getString("Nombre") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( listado.getString("Apellidos") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( listado.getString("Edad") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( listado.getString("Alias") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( listado.getString("Superpoder") );
      out.write("</td>\n");
      out.write("                         <td>\n");
      out.write("                            <a href=\"modificarsuperheroe.jsp?Codigo=");
      out.print( listado.getString("Codigo") + listado.getString("nombre") + listado.getString("Apellidos") + listado.getString("Edad") + listado.getString("Alias") + listado.getString("Superpoder") );
      out.write("\">\n");
      out.write("                            <input id=\"Editar\" type=\"submit\" value=\"Editar\">\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"borrasuperheroe.jsp?Codigo=");
      out.print( listado.getString("Codigo") );
      out.write("\">\n");
      out.write("                            <input id=\"Borrar\" type=\"submit\" value=\"Borrar\">\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    ");

                        } 
                    
      out.write("\n");
      out.write("            <td>\n");
      out.write("                <form action=\"aniadesuperheroe.jsp\">\n");
      out.write("                    <small class=\"form-text text-muted\">Pulsa añadir para insertar superheroes</small>\n");
      out.write("                    <br><input id=\"Añadir\" type=\"submit\" value=\"Añadir\"> \n");
      out.write("                </form>\n");
      out.write("            </td>\n");
      out.write("           \n");
      out.write("       \n");
      out.write("        ");

            conexion.close();
            
            } catch(Exception e) {
                
        
      out.write("\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            console.error( '");
      out.print( e );
      out.write("' )\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
