package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class modificarsuperheroe_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-position: 55%;\n");
      out.write("                padding-top: 50px;\n");
      out.write("                min-height: 400px;\n");
      out.write("            }\n");
      out.write("            #hero{\n");
      out.write("                margin-left: 50px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            h1{text-align: left}\n");
      out.write("            input{\n");
      out.write("                background-color: greenyellow;\n");
      out.write("                font-style: italic;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            #aceptar{\n");
      out.write("                font-style: normal;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <body>\n");
      out.write("        <h1>Añadir Superheroe</h1>\n");
      out.write("            <section id=\"hero\">\n");
      out.write("                <form action=\"grabasuperheroe.jsp\">\n");
      out.write("                 <div>\n");
      out.write("                    <input type=\"number\" class=\"form-control\" required name=\"Codigo\" aria-describedby=\"Codigo\" placeholder=\"Codigo\">\n");
      out.write("                    <small id=\"superheroes\" class=\"form-text text-muted\">Codigo Superheroe</small><br>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" required name=\"Alias\" aria-describedby=\"Alias\" placeholder=\"Alias\">\n");
      out.write("                    <small id=\"superheroes\" class=\"form-text text-muted\">Introduce el alias</small><br>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group mx-auto col-sm-6\">\n");
      out.write("                    <br><label for=\"nombre\">Nombre</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" required name=\"Nombre\" aria-describedby=\"Nombre\" placeholder=\"Nombre\">\n");
      out.write("                    <small id=\"superheroes\" class=\"form-text text-muted\">Introduce el nombre</small><br>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group mx-auto col-sm-6\">\n");
      out.write("                    <br><label for=\"apellidos\">Apellidos</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" required name=\"Apellidos\" aria-describedby=\"Apellidos\" placeholder=\"Apellidos\">\n");
      out.write("                    <small id=\"superheroes\" class=\"form-text text-muted\">Introduce los apellidos</small><br>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group mx-auto col-sm-6\">\n");
      out.write("                    <br><label for=\"edad\">Edad</label>\n");
      out.write("                    <input type=\"number\" class=\"form-control\" required name=\"Edad\" placeholder=\"Edad\">\n");
      out.write("                    <small id=\"superheroes\" class=\"form-text text-muted\">Introduce la edad</small><br>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group mx-auto col-sm-6\">\n");
      out.write("                    <br><label for=\"superpoderes\">Superpoderes</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" required name=\"Superpoder\" aria-describedby=\"Superpoderes\" placeholder=\"Fecha de nacimiento\">\n");
      out.write("                    <small id=\"superheroes\" class=\"form-text text-muted\">Introduce las habilidades y poderes</small><br>\n");
      out.write("                </div>\n");
      out.write("                <br><input id=\"aceptar\" type=\"submit\" value=\"Aceptar\">\n");
      out.write("                </form>\n");
      out.write("            </section>  \n");
      out.write("    </body>\n");
      out.write("    </body>\n");
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
