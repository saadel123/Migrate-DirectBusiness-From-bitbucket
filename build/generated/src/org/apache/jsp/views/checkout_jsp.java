package org.apache.jsp.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pk.models.Produit;
import pk.models.LignePanier;
import pk.models.Panier;
import pk.models.Panier;
import pk.models.Client;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        ");
 if (session.getAttribute("clt") != null) {
                Client c = (Client) session.getAttribute("clt");
        
      out.write("\n");
      out.write("        <div class=\"tt-breadcrumb\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"Store/views/panier.jsp\">Panier</a></li>\n");
      out.write("                    <li>Checkout</li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <form action=\"/Store/views/paiement.jsp\" method=\"post\">\n");
      out.write("            <div id=\"tt-pageContent\">\n");
      out.write("                <div class=\"container-indent\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <h1 class=\"tt-title-subpages noborder\">Revision de votre panier & paiment</h1>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-12 col-xl-8\">\n");
      out.write("                                <div class=\"tt-shopcart-table\">\n");
      out.write("                                    <table>\n");
      out.write("                                        <tbody>\n");
      out.write("                                            ");

                                                Panier panier = (Panier) session.getAttribute("panier");
                                                for (LignePanier lp : panier.getItems()) {

                                                    Produit p = lp.getProduit();
                                            
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"tt-product-img\">\n");
      out.write("                                                        <img src=\"/Store/images/loader.svg\" data-src=\"/Store/images/product/");
      out.print(p.getImages().get(0).getUrl());
      out.write("\" alt=\"\">\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <h2 class=\"tt-title\">\n");
      out.write("                                                        <a href=\"/Store/views/product.jsp?idp=");
      out.print(p.getIdp());
      out.write('"');
      out.write('>');
      out.print(p.getLibelle());
      out.write("</a>\n");
      out.write("                                                    </h2>\n");
      out.write("\n");
      out.write("                                                    <ul class=\"tt-list-parameters\">\n");
      out.write("                                                        <li>\n");
      out.write("                                                            <div class=\"tt-price\">\n");
      out.write("                                                                $");
      out.print(p.getPrix());
      out.write("\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </li>\n");
      out.write("                                                        <li>\n");
      out.write("                                                            <div class=\"detach-quantity-mobile\"></div>\n");
      out.write("                                                        </li>\n");
      out.write("                                                        <li>\n");
      out.write("                                                            <div class=\"tt-price subtotal\">\n");
      out.write("                                                                $");
      out.print(p.getPrix());
      out.write("\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"tt-price\">\n");
      out.write("                                                        $");
      out.print(p.getPrix());
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"detach-quantity-desctope\">\n");
      out.write("                                                        <div class=\"tt-input-counter style-01\">\n");
      out.write("                                                            <input class=\"cart_quantity_input\" hidden type=\"text\" name=\"quantity\" value=\"");
      out.print(lp.getQte());
      out.write("\" autocomplete=\"off\" size=\"2\">\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"tt-price subtotal\">\n");
      out.write("                                                        $");
      out.print(lp.getQte() * p.getPrix());
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
}
      out.write("\n");
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-sm-12 col-xl-4\">\n");
      out.write("                                <div class=\"tt-shopcart-wrapper\">\n");
      out.write("                                    <div class=\"tt-shopcart-box\">\n");
      out.write("                                        <h4 class=\"tt-title\">\n");
      out.write("                                            ESTIMATE SHIPPING AND TAX\n");
      out.write("                                        </h4>\n");
      out.write("                                        <p>Enter your destination to get a shipping estimate.</p>\n");
      out.write("                                        <form class=\"form-default\">\n");
      out.write("\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                                <label for=\"address_zip\">FIRST NAME <sup>*</sup></label>\n");
      out.write("                                                <input type=\"text\"  class=\"form-control\" value=\"");
      out.print(c.getPrenom());
      out.write("\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                <label for=\"address_zip\">LAST NAME <sup>*</sup></label>\n");
      out.write("                                                <input type=\"text\"  class=\"form-control\" value=\"");
      out.print(c.getNom());
      out.write("\">                               \n");
      out.write("\n");
      out.write("                                                <label for=\"address_zip\">Address 1 <sup>*</sup></label>\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" placeholder=\"Address 1 *\" required name=\"adresse1\"> \n");
      out.write("\n");
      out.write("                                                <label for=\"address_zip\">Address 2 <sup>*</sup></label>\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" placeholder=\"Address 2 *\" required name=\"adresse2\"> \n");
      out.write("\n");
      out.write("                                                <label for=\"address_country\">COUNTRY <sup>*</sup></label>\n");
      out.write("                                                <select name=\"pays\" class=\"form-control\">\n");
      out.write("                                                    <option>Austria</option>\n");
      out.write("                                                    <option>Belgium</option>\n");
      out.write("                                                    <option>Morocco</option>\n");
      out.write("                                                    <option>Croatia</option>\n");
      out.write("                                                    <option>Czech Republic</option>\n");
      out.write("                                                    <option>Denmark</option>\n");
      out.write("                                                    <option>Finland</option>\n");
      out.write("                                                    <option>France</option>\n");
      out.write("                                                    <option>Germany</option>\n");
      out.write("                                                    <option>Greece</option>\n");
      out.write("                                                    <option>Hungary</option>\n");
      out.write("                                                    <option>Ireland</option>\n");
      out.write("                                                    <option>France</option>\n");
      out.write("                                                    <option>Italy</option>\n");
      out.write("                                                    <option>Luxembourg</option>\n");
      out.write("                                                    <option>Netherlands</option>\n");
      out.write("                                                    <option>Poland</option>\n");
      out.write("                                                    <option>Portugal</option>\n");
      out.write("                                                    <option>Slovakia</option>\n");
      out.write("                                                    <option>Slovenia</option>\n");
      out.write("                                                    <option>Spain</option>\n");
      out.write("                                                    <option>United Kingdom</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"address_province\">STATE/PROVINCE <sup>*</sup></label>\n");
      out.write("                                                <select id=\"address_province\" class=\"form-control\" name=\"ville\">\n");
      out.write("                                                    <option  hidden=\"\">State/Province</option>\n");
      out.write("                                                    <option value=\"Casablanca\">Casablanca</option>\n");
      out.write("                                                    <option value=\"Rabat\">Bangladesh</option>\n");
      out.write("                                                    <option value=\"Fes\">UK</option>\n");
      out.write("                                                    <option value=\"Tanger\">Tanger</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"address_zip\">ZIP/POSTAL CODE <sup>*</sup></label>\n");
      out.write("                                                <input type=\"text\" name=\"codepostale\" class=\"form-control\" id=\"address_zip\" placeholder=\"Zip/Postal Code\">\n");
      out.write("                                            </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tt-shopcart-box\">\n");
      out.write("                                        <h4 class=\"tt-title\">\n");
      out.write("                                            NOTE\n");
      out.write("                                        </h4>\n");
      out.write("                                        <p>Add special instructions for your order...</p>\n");
      out.write("\n");
      out.write("                                        <textarea class=\"form-control\" rows=\"7\" name=\"message\"></textarea>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"tt-shopcart-box tt-boredr-large\">\n");
      out.write("                                        <table class=\"tt-shopcart-table01\">\n");
      out.write("\n");
      out.write("                                            <tfoot>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th>GRAND TOTAL</th>\n");
      out.write("                                                    <td>$");
      out.print(panier.total());
      out.write("</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </tfoot>\n");
      out.write("                                        </table>\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-primary\" href=\"\">Continue</button>\n");
      out.write("                                        <!--  <a href=\"/Store/views/paiement.jsp\" class=\"btn btn-lg\"><span class=\"icon icon-check_circle\"></span>PROCEED TO CHECKOUT</a> -->\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");

                    } else {
      out.write("\n");
      out.write("                <div id=\"tt-pageContent\" >\n");
      out.write("                    <div class=\"container-indent nomargin\">\n");
      out.write("                        <div class=\"tt-empty-cart\">\n");
      out.write("                            <span class=\"tt-icon icon-f-39\"></span>\n");
      out.write("                            <h1 class=\"tt-title\">SIGN IN TO CHECKOUT</h1>\n");
      out.write("                            <p>Please click on the button below to sign in.</p>\n");
      out.write("                            <a href=\"/Store/views/formLogin.jsp\" class=\"btn\">Login</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("                </body>\n");
      out.write("                </html>\n");
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
