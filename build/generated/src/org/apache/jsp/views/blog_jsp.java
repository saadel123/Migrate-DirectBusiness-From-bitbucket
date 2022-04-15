package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.ResultSet;
import pk.controllers.UtilConnexion;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.List;
import pk.models.Blog;

public final class blog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"tt-breadcrumb\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"/Store/views/index.jsp\">Home</a></li>\n");
      out.write("                        <li>Blog</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        ");

            List<Blog> arts = new ArrayList<Blog>();
            Connection con = UtilConnexion.seConnecter();
            String req = "select * from (select * from blog order by datepub desc) where rownum<=5 ";
            ResultSet rs = con.createStatement().executeQuery(req);
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
            while (rs.next()) {

                arts.add(new Blog(rs.getInt("idb"), rs.getString("titre"), rs.getString("text"), rs.getString("img"),
                        sdf.parse(rs.getDate("datepub").toString()), rs.getInt("idcat")));
            }
            con.close();
            int p = 1;
            if (request.getParameter("p") != null) {
                p = Integer.parseInt(request.getParameter("p"));
            }
            int nbrArtParPage = 3;
            int nbrPages = (arts.size() % nbrArtParPage == 0) ? arts.size() / nbrArtParPage : arts.size() / nbrArtParPage + 1;
            int indexTo = p * nbrArtParPage;
            if (arts.size() % nbrArtParPage != 0 && p == nbrPages) {
                indexTo = arts.size();
            }
            List<Blog> artsCur = arts.subList((p - 1) * nbrArtParPage, indexTo);
        
      out.write("\n");
      out.write("        ");
        if (arts.size() == 0) {
        
      out.write("\n");
      out.write("        <div class=\"alert alert-danger\" role=\"alert\">\n");
      out.write("            Aucun Resultat Trouvée!!\n");
      out.write("        </div>\n");
      out.write("        <div id=\"tt-pageContent\">\n");
      out.write("            <div class=\"container-indent\">\n");
      out.write("                <div class=\"container container-fluid-custom-mobile-padding\">\n");
      out.write("                    <h1 class=\"tt-title-subpages noborder\">THE BLOG</h1>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"tt-listing-post tt-half\">\n");
      out.write("\n");
      out.write("                                ");

                                    for (Blog a : artsCur) {
                                
      out.write("\n");
      out.write("                                <div class=\"tt-post\">\n");
      out.write("                                    <div class=\"tt-post-img\">\n");
      out.write("                                        <a href=\"blog-single-post.html\"><img src=\"/Store/images/loader.svg\" data-src=\"/Store/images/blog/");
      out.print(a.getImg());
      out.write("\" alt=\"");
      out.print(a.getTitre());
      out.write("\"></a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tt-post-content\">\n");
      out.write("                                        <div class=\"tt-tag\"><a href=\"#\">FASHION</a></div>\n");
      out.write("                                        <h2 class=\"tt-title\"><a href=\"/Store/views/blogDetails.jsp\">");
      out.print(a.getTitre());
      out.write("</a></h2>\n");
      out.write("                                        <div class=\"tt-description\">\n");
      out.write("                                            ");
      out.print(a.getText().substring(0, 200));
      out.write("...\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"tt-btn\">\n");
      out.write("                                            <a href=\"/Store/views/blogDetails.jsp?ida=");
      out.print(a.getIda());
      out.write("\" class=\"btn\">READ MORE</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div style=\"margin: auto;position: relative; width: 200px\">\n");
      out.write("                                    <nav aria-label=\"aller a la page\">\n");
      out.write("                                        <ul class=\"pagination pagination-sm\">\n");
      out.write("                                            ");
  for (int i = 1; i <= nbrPages; i++) {
                                                    if (i == p) {
                                            
      out.write("\n");
      out.write("                                            <li class=\"page-item active\" aria-current=\"page\">\n");
      out.write("                                                <span class=\"page-link\">\n");
      out.write("                                                    ");
      out.print(i);
      out.write("\n");
      out.write("                                                    <span class=\"sr-only\">(current)</span>\n");
      out.write("                                                </span>\n");
      out.write("                                            </li>\n");
      out.write("                                            ");
} 
      out.write("\n");
      out.write("                                            ");
}
      out.write("\n");
      out.write("\n");
      out.write("                                        </ul>\n");
      out.write("                                    </nav>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
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
