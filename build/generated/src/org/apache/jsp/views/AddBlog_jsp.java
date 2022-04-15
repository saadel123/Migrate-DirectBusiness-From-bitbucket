package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pk.models.Client;
import pk.models.Categorie;
import java.util.List;
import pk.dao.HibernateUtil;
import org.hibernate.Session;

public final class AddBlog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        ");

            if (session.getAttribute("clt") != null) {
        
      out.write("\n");
      out.write("        <div class=\"tt-breadcrumb\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"/Store/views/index.jsp\">Home</a></li>\n");
      out.write("                    <li>Add Product</li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"tt-pageContent\">\n");
      out.write("            <div class=\"container-indent\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"container container-fluid-custom-mobile-padding\">\n");
      out.write("                        <h1 class=\"tt-title-subpages noborder\">ADD A NEW PRODUCT</h1>\n");
      out.write("                    </div>\n");
      out.write("                    ");
                        if (request.getAttribute("msg") != null) {
                    
      out.write("\n");
      out.write("                    <h3 style=\"color: green; text-align: center;\">");
      out.print(request.getAttribute("msg"));
      out.write("</h3>  \n");
      out.write("                </div>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                <div class=\"form-default\">\n");
      out.write("                    <form class=\"customer_login\" action=\"/Store/AddProduit\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\" class=\"control-label\">Libelle</label>\n");
      out.write("                            <input type=\"text\" name=\"libelle\" required=\"\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\">Marque</label>\n");
      out.write("                            <input type=\"text\" name=\"marque\" required=\"\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\">Prix</label>\n");
      out.write("                            <input type=\"number\" name=\"prix\" required=\"\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\">Frais d'expedition</label>\n");
      out.write("                            <input type=\"number\" name=\"frais\" required=\"\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\">Description</label>\n");
      out.write("                            <textarea class=\"form-control\" name=\"description\" id=\"validationTextarea\" placeholder=\"Required example textarea\" required></textarea>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"custom-control custom-checkbox mb-3\">\n");
      out.write("                            <input type=\"checkbox\" class=\"custom-control-input\" checked=\"\" disabled=\"\" name=\"disponible\">\n");
      out.write("                            <label class=\"custom-control-label\" for=\"customControlValidation1\"><strong>Disponible</strong></label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\">Quantite en stock</label>\n");
      out.write("                            <input type=\"number\" name=\"qte\" required=\"\" class=\"form-control\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"validationTextarea\">Categorie</label>\n");
      out.write("                            <select class=\"form-control\" required name=\"cat\">\n");
      out.write("                                <option value=\"\">Choisir une categorie</option>\n");
      out.write("                                ");

                                    Session s = HibernateUtil.getSession();
                                    List<Categorie> cats = s.createQuery("From Categorie").list();
                                    for (Categorie c : cats) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(c.getIdcat());
      out.write('"');
      out.write('>');
      out.print(c.getLibelle());
      out.write("</option>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"custom-file-label\" for=\"validatedCustomFile\">Choisir l'image principale de votre produit</label>\n");
      out.write("                            <input type=\"file\" class=\"form-control\" name=\"img1\" id=\"validatedCustomFile\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label class=\"custom-file-label\" for=\"validatedInputGroupCustomFile\">Choisir Image2</label>\n");
      out.write("                            <input type=\"file\" class=\"form-control\" id=\"validatedInputGroupCustomFile\" name=\"img2\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-group-append\">\n");
      out.write("                            <button class=\"btn btn-outline-secondary\" type=\"submit\">Ajouter</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
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
