package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pk.models.ItemWishlist;
import pk.models.Wish;
import pk.models.Wishlist;
import java.util.List;
import org.hibernate.Query;
import pk.dao.HibernateUtil;
import org.hibernate.Session;
import pk.models.Produit;
import pk.models.Produit;

public final class wishlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                        <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                        <li>Shopping Cart</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"tt-pageContent\">\n");
      out.write("                <div class=\"container-indent\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                    ");

                        if (session.getAttribute("wishlist") != null) {
                    
      out.write("\n");
      out.write("                    <h1 class=\"tt-title-subpages noborder\">WISHLIST</h1>\n");
      out.write("                    ");

                        }

                    
      out.write("\n");
      out.write("                    ");
                            if (session.getAttribute("wishlist") == null) {
                    
      out.write("\n");
      out.write("                    <div id=\"tt-pageContent\" >\n");
      out.write("                        <div class=\"container-indent nomargin\">\n");
      out.write("                            <div class=\"tt-empty-cart\">\n");
      out.write("                                <span class=\"tt-icon icon-f-39\"></span>\n");
      out.write("                                <h1 class=\"tt-title\">SHOPPING CART IS EMPTY</h1>\n");
      out.write("                                <p>You have no items in your shopping cart.</p>\n");
      out.write("                                <a href=\"#\" class=\"btn\">CONTINUE SHOPPING</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    ");

                    } else {
                        Wish wishlist = (Wish) session.getAttribute("wishlist");

                    
      out.write("\n");
      out.write("                    <div class=\"tt-wishlist-box\" id=\"js-wishlist-removeitem\">\n");
      out.write("                        <div class=\"tt-wishlist-list\">\n");
      out.write("                            ");
for (ItemWishlist lp : wishlist.getItems()) {

                                        Produit p = lp.getProduit();
                                
      out.write("\n");
      out.write("                            <div class=\"tt-item\">\n");
      out.write("                                <div class=\"tt-col-description\">\n");
      out.write("                                    <div class=\"tt-img\">\n");
      out.write("                                        <img src=\"/Store/images/product/");
      out.print(p.getImages().get(0).getUrl());
      out.write("\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tt-description\">\n");
      out.write("                                        <h2 class=\"tt-title\"><a href=\"product.html\">");
      out.print(p.getLibelle());
      out.write("</a></h2>\n");
      out.write("                                        <div class=\"tt-price\">\n");
      out.write("\n");
      out.write("                                            <span class=\"tt-price\">$");
      out.print(p.getPrix());
      out.write("</span>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"tt-col-btn\">\n");
      out.write("                                    <a href=\"#\" class=\"tt-btn-addtocart\" data-toggle=\"modal\" data-target=\"#modalAddToCartProduct\" ><i class=\"icon-f-39\"></i>ADD TO CART</a>\n");
      out.write("                                    <a class=\"btn-link\" href=\"#\" data-toggle=\"modal\" data-target=\"#quickView\" data-idp=\"");
      out.print(p.getIdp());
      out.write("\"> <i class=\"icon-f-73\"></i>SEE PRODUCT</a>\n");
      out.write("                                    <a class=\"btn-link js-removeitem\" href=\"#\"><i class=\"icon-h-02\"></i>REMOVE</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                        ");
}
      out.write("\n");
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
