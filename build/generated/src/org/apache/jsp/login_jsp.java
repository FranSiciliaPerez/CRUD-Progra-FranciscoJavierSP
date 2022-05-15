package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 request.setCharacterEncoding("UTF-8");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Login de acceso a pagina principal </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\" integrity=\"sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"icon\" href=\"./imagenes/favicon.jpeg\">\n");
      out.write("    </head>\n");
      out.write("    * {\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    }\n");
      out.write("    html, body {\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    min-width: 100%;\n");
      out.write("    width: var(--fit-content);\n");
      out.write("    min-height: 100vh;\n");
      out.write("    height: var(--fit-content);\n");
      out.write("    background-image: url(./imagenes/Fondo.png);\n");
      out.write("    background-size: cover;\n");
      out.write("    overflow: auto;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    body {\n");
      out.write("    /*padding: 2rem;*/\n");
      out.write("    display: flex;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .formulario {\n");
      out.write("    color: white;\n");
      out.write("    width: 80vw;\n");
      out.write("    margin: auto;\n");
      out.write("    padding: 1rem;\n");
      out.write("    border:rgb(145, 145, 151) 2px solid;\n");
      out.write("    border-radius: 20px;\n");
      out.write("    background-color: #ff6666;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .form-group {\n");
      out.write("    width: 90%;\n");
      out.write("    margin: auto;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    input {\n");
      out.write("    margin-bottom: 1rem;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("    .info {\n");
      out.write("    display: none;\n");
      out.write("    color: #f00;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("    <form action=\"login.jsp\" class=\"formulario\">\n");
      out.write("        <div class=\"form-group usuario\">\n");
      out.write("            <label for=\"exampleInputEmail1\">Introduzca un usuario(en formato correo)\n");
      out.write("            </label>\n");
      out.write("            <input autocomplete=\"off\" type=\"text\" class=\"form-control\" id=\"usuario\" aria-describedby=\"user\"/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group contraseña\">\n");
      out.write("            <label for=\"exampleInputPassword1\">Introduce una contraseña (por su seguridad le recomendamos\n");
      out.write("                alterne entre letras mayúsculas y minúsculas junto a numeros y carácteres especiales)\n");
      out.write("            </label>\n");
      out.write("            <input type=\"password\" class=\"form-control\" id=\"Contraseña\"/>\n");
      out.write("        </div>\n");
      out.write("        <input class=\"submit\" type=\"submit\">\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    ");

        HashMap<String, String> usuarioContrasena = new HashMap<String, String>();

        usuarioContrasena.put("usuario1@gmail.com", "@Alumno_1");
        usuarioContrasena.put("usuario2@gmail.com", "@Alumno_2");
        usuarioContrasena.put("profesor1@gmail.com", "@Profe_2");
        usuarioContrasena.put("profesor2@gmail.com", "@Profe_1");

        request.setCharacterEncoding("UTF-8");
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        if (usuarioContrasena.containsKey(usuario)) {

            if (usuarioContrasena.get(usuario).equals(contrasena)) {

                response.sendRedirect("index.jsp");
            } else {
                out.print("<script> alert('Contraseña incorrecta');</script>");
            }
        } else {
            out.print("<script> alert('El usuario introducido no existe');</script>");
        }
    
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
