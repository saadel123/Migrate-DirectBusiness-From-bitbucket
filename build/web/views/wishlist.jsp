<%-- 
    Document   : wishlist
    Created on : Mar 16, 2021, 7:32:25 PM
    Author     : saad
--%>
<%@page import="pk.models.Client"%>
<%@page import="pk.models.ItemWishlist"%>
<%@page import="pk.models.Wish"%>
<%@page import="pk.models.Wishlist"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="pk.models.Produit"%>
<%@page import="pk.models.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%

            Client c = (Client) session.getAttribute("clt");
        %>
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
                        if (session.getAttribute("wishlist") != null) {
                    %>
                    <h1 class="tt-title-subpages noborder">WISHLIST</h1>
                    <%
                        }

                    %>
                    <%                            if (session.getAttribute("wishlist") == null) {
                    %>
                    <div id="tt-pageContent" >
                        <div class="container-indent nomargin">
                            <div class="tt-empty-cart">
                                <span class="tt-icon icon-n-072"></span>
                                <h1 class="tt-title">WISHLIST IS EMPTY</h1>
                                <p>No products were added to the wishlist.</p>
                                <a href="/Store/views/listing-left-column.jsp" class="btn">ADD ITEMS TO WISHLIST</a>
                            </div>
                        </div>
                    </div>
                    <%
                    } else {
                        Wish wishlist = (Wish) session.getAttribute("wishlist");

                    %>
                    <div class="tt-wishlist-box" id="js-wishlist-removeitem">
                        <div class="tt-wishlist-list">
                            <%for (ItemWishlist lp : wishlist.getItems()) {

                                    Produit p = lp.getProduit();
                            %>
                            <div class="tt-item">
                                <div class="tt-col-description">
                                    <div class="tt-img">
                                        <img src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt="">
                                    </div>
                                    <div class="tt-description">
                                        <h2 class="tt-title"><a href="product.html"><%=p.getLibelle()%></a></h2>
                                        <div class="tt-price">

                                            <span class="tt-price">$<%=p.getPrix()%></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="tt-col-btn">
                                    <a href="/Store/GererPanier?action=ajouter&idp=<%=p.getIdp()%>&qte=1" class="tt-btn-addtocart"  ><i class="icon-f-39"></i>ADD TO CART</a>
                                    <a class="btn-link" href="#" data-toggle="modal" data-target="#quickView" data-idp="<%=p.getIdp()%>"> <i class="icon-f-73"></i>SEE PRODUCT</a>
                                    <a class="btn-link js-removeitem" href="/Store/AddToWish?action=supp&idp=<%=p.getIdp()%>"><i class="icon-h-02"></i>REMOVE</a>
                                </div>
                            </div>

                            <%}%>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
