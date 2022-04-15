<%-- 
    Document   : panier
    Created on : Mar 15, 2021, 6:01:30 PM
    Author     : saad
--%>

<%@page import="pk.models.Produit"%>
<%@page import="pk.models.LignePanier"%>
<%@page import="pk.models.Panier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>     
            <div class="tt-breadcrumb">
                <div class="container">
                    <ul>
                        <li><a href="/Store/views/index.jsp">Home</a></li>
                        <li>Shopping Cart</li>
                    </ul>
                </div>
            </div>

            <div id="tt-pageContent">
                <div class="container-indent">
                    <div class="container">
                        

                    <%
                        if (session.getAttribute("panier") == null) {
                    %>

                    
                        
                            <div class="tt-empty-cart">
                                <span class="tt-icon icon-f-39"></span>
                                <h1 class="tt-title">SHOPPING CART IS EMPTY</h1>
                                <p>You have no items in your shopping cart.</p>
                                <a href="/Store/views/listing-left-column.jsp" class="btn">CONTINUE SHOPPING</a>
                            </div>
                       
                
                    <%
                    } else {
                        Panier panier = (Panier) session.getAttribute("panier");

                    %>
                    <h1 class="tt-title-subpages noborder">SHOPPING CART</h1>
                    <div class="tt-shopcart-table-02">
                        <table>
                            <tbody>
                                <%for (LignePanier lp : panier.getItems()) {

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
                                        <ul class="tt-list-description">

                                            <li>Size: 22</li>
                                            <li>Color: Green</li>
                                        </ul>
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
                                                <a style="float: right;" href="/Store/GererPanier?action=augqte&idp=<%=p.getIdp()%>"> + </a>
                                                <input class="cart_quantity_input" type="text" name="quantity" value="<%=lp.getQte()%>" autocomplete="off" size="2">
                                                <a href="/Store/GererPanier?action=dimqte&idp=<%=p.getIdp()%>"> - </a>
                                            </div>
                                        </div>

                                    </td>
                                    <td>
                                        <div class="tt-price subtotal">
                                            $<%=lp.getQte() * p.getPrix()%>
                                        </div>
                                    </td>
                                    <td>
                                        <a href="/Store/GererPanier?action=supp&idp=<%=p.getIdp()%>" class="tt-btn-close"></a>
                                    </td>
                                </tr>
                                <%}%>

                            </tbody>
                        </table>
                        <div class="tt-shopcart-btn">
                            <div class="col-left">
                                <a class="btn-link" href="/Store/views/listing-left-column.jsp"><i class="icon-e-19"></i>CONTINUE SHOPPING</a>
                            </div>

                        </div>
                    </div>
                    <%
                        if (session.getAttribute("panier") != null) {
                    %>
                    <div class="tt-shopcart-col">
                        <div class="row">
                            <div class="col-md-6 col-lg-4">

                            </div>

                            <div class="col-md-6 col-lg-4" style="margin-top: -135px;">
                                <div class="tt-shopcart-box tt-boredr-large">
                                    <table class="tt-shopcart-table01">
                                        <tbody>
                                            <tr>
                                                <th>SUBTOTAL</th>
                                                <td>$<%=panier.total()%></td>
                                            </tr>
                                            <tr>
                                                <th>SHIPPING COST</th>
                                                <td>$<%=panier.fraisexpadition()%></td>
                                            </tr>

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>GRAND TOTAL</th>
                                                <td>$<%=panier.fraisexpadition() + panier.total()%></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                    <a href="/Store/views/checkout.jsp" class="btn btn-lg"><span class="icon icon-check_circle"></span>CHECK OUT</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
                <%}%>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
