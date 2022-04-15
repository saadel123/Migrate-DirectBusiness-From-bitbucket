<%-- 
    Document   : checkout
    Created on : Mar 23, 2021, 10:29:51 PM
    Author     : saad
--%>

<%@page import="pk.models.Produit"%>
<%@page import="pk.models.LignePanier"%>
<%@page import="pk.models.Panier"%>
<%@page import="pk.models.Panier"%>
<%@page import="pk.models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <% if (session.getAttribute("clt") != null) {
                Client c = (Client) session.getAttribute("clt");
        %>
        <div class="tt-breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="Store/views/panier.jsp">Panier</a></li>
                    <li>Checkout</li>
                </ul>
            </div>
        </div>
        <form action="/Store/views/paiement.jsp" method="post">
            <div id="tt-pageContent">
                <div class="container-indent">
                    <div class="container">
                        <h1 class="tt-title-subpages noborder">Revision de votre panier & paiment</h1>
                        <div class="row">
                            <div class="col-sm-12 col-xl-8">
                                <div class="tt-shopcart-table">
                                    <table>
                                        <tbody>
                                            <%
                                                Panier panier = (Panier) session.getAttribute("panier");
                                                for (LignePanier lp : panier.getItems()) {

                                                    Produit p = lp.getProduit();
                                            %>
                                            <tr>
                                                <td>
                                                    <div class="tt-product-img">
                                                        <img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt="">
                                                    </div>
                                                </td>
                                                <td>
                                                    <h2 class="tt-title">
                                                        <a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>"><%=p.getLibelle()%></a>
                                                    </h2>

                                                    <ul class="tt-list-parameters">
                                                        <li>
                                                            <div class="tt-price">
                                                                $<%=p.getPrix()%>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="detach-quantity-mobile"></div>
                                                        </li>
                                                        <li>
                                                            <div class="tt-price subtotal">
                                                                $<%=p.getPrix()%>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <div class="tt-price">
                                                        $<%=p.getPrix()%>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="detach-quantity-desctope">
                                                        <div class="tt-input-counter style-01">
                                                            <input class="cart_quantity_input" hidden type="text" name="quantity" value="<%=lp.getQte()%>" autocomplete="off" size="2">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="tt-price subtotal">
                                                        $<%=lp.getQte() * p.getPrix()%>
                                                    </div>
                                                </td>

                                            </tr>
                                            <%}%>

                                        </tbody>
                                    </table>

                                </div>
                            </div>
                            <div class="col-sm-12 col-xl-4">
                                <div class="tt-shopcart-wrapper">
                                    <div class="tt-shopcart-box">
                                        <h4 class="tt-title">
                                            ESTIMATE SHIPPING AND TAX
                                        </h4>
                                        <p>Enter your destination to get a shipping estimate.</p>
                                        <form class="form-default">

                                            <div class="form-group">

                                                <label for="address_zip">FIRST NAME <sup>*</sup></label>
                                                <input type="text"  class="form-control" value="<%=c.getPrenom()%>">


                                                <label for="address_zip">LAST NAME <sup>*</sup></label>
                                                <input type="text"  class="form-control" value="<%=c.getNom()%>">                               

                                                <label for="address_zip">Address 1 <sup>*</sup></label>
                                                <input type="text" class="form-control" placeholder="Address 1 *" required name="adresse1"> 

                                                <label for="address_zip">Address 2 <sup>*</sup></label>
                                                <input type="text" class="form-control" placeholder="Address 2 *" required name="adresse2"> 

                                                <label for="address_country">COUNTRY <sup>*</sup></label>
                                                <select name="pays" class="form-control">
                                                    <option>Austria</option>
                                                    <option>Belgium</option>
                                                    <option>Morocco</option>
                                                    <option>Croatia</option>
                                                    <option>Czech Republic</option>
                                                    <option>Denmark</option>
                                                    <option>Finland</option>
                                                    <option>France</option>
                                                    <option>Germany</option>
                                                    <option>Greece</option>
                                                    <option>Hungary</option>
                                                    <option>Ireland</option>
                                                    <option>France</option>
                                                    <option>Italy</option>
                                                    <option>Luxembourg</option>
                                                    <option>Netherlands</option>
                                                    <option>Poland</option>
                                                    <option>Portugal</option>
                                                    <option>Slovakia</option>
                                                    <option>Slovenia</option>
                                                    <option>Spain</option>
                                                    <option>United Kingdom</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="address_province">STATE/PROVINCE <sup>*</sup></label>
                                                <select id="address_province" class="form-control" name="ville">
                                                    <option  hidden="">State/Province</option>
                                                    <option value="Casablanca">Casablanca</option>
                                                    <option value="Rabat">Bangladesh</option>
                                                    <option value="Fes">UK</option>
                                                    <option value="Tanger">Tanger</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="address_zip">ZIP/POSTAL CODE <sup>*</sup></label>
                                                <input type="text" name="codepostale" class="form-control" id="address_zip" placeholder="Zip/Postal Code">
                                            </div>
                                    </div>
                                    <div class="tt-shopcart-box">
                                        <h4 class="tt-title">
                                            NOTE
                                        </h4>
                                        <p>Add special instructions for your order...</p>

                                        <textarea class="form-control" rows="7" name="message"></textarea>
                                        </form>
                                    </div>
                                    <div class="tt-shopcart-box tt-boredr-large">
                                        <table class="tt-shopcart-table01">

                                            <tfoot>
                                                <tr>
                                                    <th>GRAND TOTAL</th>
                                                    <td>$<%=panier.total()%></td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <button type="submit" class="btn btn-primary" href="">Continue</button>
                                        <!--  <a href="/Store/views/paiement.jsp" class="btn btn-lg"><span class="icon icon-check_circle"></span>PROCEED TO CHECKOUT</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    } else {%>
                <div id="tt-pageContent" >
                    <div class="container-indent nomargin">
                        <div class="tt-empty-cart">
                            <span class="tt-icon icon-f-39"></span>
                            <h1 class="tt-title">SIGN IN TO CHECKOUT</h1>
                            <p>Please click on the button below to sign in.</p>
                            <a href="/Store/views/formLogin.jsp" class="btn">Login</a>
                        </div>
                    </div>
                </div>
                <%}%>
                <jsp:include page="footer.jsp"></jsp:include>
                </body>
                </html>
