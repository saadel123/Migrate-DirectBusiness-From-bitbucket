<%-- 
    Document   : product
    Created on : Mar 16, 2021, 8:32:37 PM
    Author     : saad
--%>

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

            <div class="tt-breadcrumb">
                <div class="container">
                    <ul>
                        <li><a href="/Store/views/index.jsp">Home</a></li>
                        <li><a href="/Store/views/listing-left-column.jsp">Shop</a></li>
                        <li>T-Shirt</li>
                    </ul>
                </div>
            </div>
        <%
            Session s = HibernateUtil.getSession();
            int idp = Integer.parseInt(request.getParameter("idp"));
            Produit p = (Produit) s.get(Produit.class, idp);

        %>
        <div id="tt-pageContent">
            <div class="container-indent">
                <!-- mobile product slider  -->
                <div class="tt-mobile-product-layout visible-xs">
                    <div class="tt-mobile-product-slider arrow-location-center slick-animated-show-js">
                        <div><img src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt=""></div>
                        <div><img src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" alt=""></div>

                    </div>
                </div>
                <!-- /mobile product slider  -->
                <div class="container container-fluid-mobile">
                    <div class="row">
                        <div class="col-6 hidden-xs">
                            <div class="tt-product-vertical-layout">
                                <div class="tt-product-single-img">
                                    <div>
                                        <button class="tt-btn-zomm tt-top-right"><i class="icon-f-86"></i></button>
                                        <img class="zoom-product" src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" data-zoom-image="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt="">
                                    </div>
                                </div>
                                <div class="tt-product-single-carousel-vertical">
                                    <ul id="smallGallery" class="tt-slick-button-vertical  slick-animated-show-js">
                                        <li><a class="zoomGalleryActive" href="#" data-image="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" data-zoom-image="/Store/images/product/<%=p.getImages().get(0).getUrl()%>"><img src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt=""></a></li>
                                        <li><a href="#" data-image="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" data-zoom-image="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>"><img src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" alt=""></a></li>	
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="tt-product-single-info">
                                <div class="tt-add-info">
                                    <ul>

                                        <li><span>Availability:</span><%=p.getQtestck()%></li>
                                    </ul>
                                </div>
                                <h1 class="tt-title"><%=p.getLibelle()%></h1>
                                <div class="tt-price">
                                    <span class="new-price">$<%=p.getPrix()%></span>
                                </div>

                                <div class="tt-wrapper">
                                    <%=p.getLibelle()%>
                                </div>

                                <div class="tt-wrapper">
                                    <form action="/Store/GererPanier" method="get">
                                        <div class="tt-row-custom-01">
                                            <div class="col-item">
                                                <div class="tt-input-counter style-01">
                                                    <span class="minus-btn"></span>
                                                    <input type="text" name="qte" value="1" size="5">
                                                    <span class="plus-btn"></span>
                                                </div>
                                            </div>

                                            <div class="col-item">
                                                <button type="submit" class="btn btn-lg" ><i class="icon-f-39"></i>
                                                    ADD TO CART
                                                </button>

                                            </div>
                                        </div>
                                        <input type="hidden" name="idp" value="<%=p.getIdp()%>">
                                        <input type="hidden" name="action" value="ajouter">
                                    </form>
                                </div>
                                <div class="tt-wrapper">
                                    <ul class="tt-list-btn">
                                        <li><a class="btn-link" href="/Store/AddToWish?action=ajouter&idp=<%=p.getIdp()%>&qte=1"><i class="icon-n-072"></i>ADD TO WISH LIST</a></li>

                                    </ul>
                                </div>
                                <div class="tt-wrapper">
                                    <div class="tt-add-info">
                                        <ul>
                                            <li><span>Vendor:</span> <%=p.getMarque()%></li>
                                            <li><span>Product Categorie:</span> <%=p.getCategorie().getLibelle()%></li>
                                            <li><span>Tag:</span> <a href="#">Clothing</a>, <a href="#">Fashion</a>, <a href="#">Top</a>,<a href="#">Style</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <br>
                                <div class="tt-collapse-block">
                                    <div class="">
                                        <div class="">DESCRIPTION</div>
                                        <div class="">
                                            <%=p.getDescription()%>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-indent wrapper-social-icon">
                <div class="container">
                    <ul class="tt-social-icon justify-content-center">
                        <li><a class="icon-g-64" href="http://www.facebook.com/"></a></li>
                        <li><a class="icon-h-58" href="http://www.facebook.com/"></a></li>
                        <li><a class="icon-g-66" href="http://www.twitter.com/"></a></li>
                        <li><a class="icon-g-67" href="http://www.google.com/"></a></li>
                        <li><a class="icon-g-70" href="https://instagram.com/"></a></li>
                    </ul>
                </div>
            </div>
            <div class="container-indent">
                <div class="container container-fluid-custom-mobile-padding">
                    <div class="tt-block-title text-left">
                        <h3 class="tt-title-small">Recommendations</h3>

                    </div>
                    <div class="tt-carousel-products row arrow-location-right-top tt-alignment-img tt-layout-product-item slick-animated-show-js">
                        <%

                            Query q = s.createQuery("Select p from Produit p order by p.datePub desc");
                            q.setFirstResult(0);
                            q.setMaxResults(9);
                            List<Produit> lp = q.list();
                            lp = q.list();
                            for (Produit pe : lp) {
                        %>
                        <div class="col-2 col-md-4 col-lg-3">
                            <div class="tt-product thumbprod-center">
                                <div class="tt-image-box">
                                    <a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#quickView"	data-tooltip="Quick View" data-tposition="left" data-idp="<%=pe.getIdp()%>"></a>
                                    <span onclick="location.href = '/Store/AddToWish?action=ajouter&idp=<%=p.getIdp()%>&qte=1'"  class="tt-btn-wishlist"></span>
                                    <a href="/Store/views/product.jsp?idp=<%=pe.getIdp()%>">
                                        <span class="tt-img"><img src="/Store/images/product/<%=pe.getImages().get(0).getUrl()%>" alt=""></span>
                                        <span class="tt-img-roll-over"><img src="/Store/images/product/<%=pe.getImages().get(0).getUrl2()%>" alt=""></span>
                                    </a>
                                </div>
                                <div class="tt-description">
                                    <div class="tt-row">
                                        <ul class="tt-add-info">
                                            <li><a href="#"><%=pe.getCategorie().getLibelle()%></a></li>
                                        </ul>                                        
                                    </div>
                                    <h2 class="tt-title"><a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>"></a><%=p.getLibelle()%></h2>
                                    <div class="tt-price">
                                        $<%=pe.getPrix()%>
                                    </div>
                                    <div class="tt-product-inside-hover">
                                        <div class="tt-row-btn">
                                            <a href="/Store/GererPanier?action=ajouter&idp=<%=p.getIdp()%>&qte=1" class="tt-btn-addtocart thumbprod-button-bg"   data-target="#modalAddToCartProduct">ADD TO CART</a>
                                        </div>
                                        <div class="tt-row-btn">
                                            <a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#quickView"	data-tooltip="Quick View" data-tposition="left" data-idp="<%=pe.getIdp()%>"></a>
                                            <span onclick="location.href = '/Store/AddToWish?action=ajouter&idp=<%=p.getIdp()%>&qte=1'"  class="tt-btn-wishlist"></span>             
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
        <a href="#" class="tt-back-to-top">BACK TO TOP</a>

        <script src="/Store/external/jquery/jquery.min.js"></script>
        <script src="/Store/external/elevatezoom/jquery.elevatezoom.js"></script>
        <script src="/Store/external/slick/slick.min.js"></script>
        <script src="/Store/external/panelmenu/panelmenu.js"></script>
        <script src="/Store/external/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="/Store/external/lazyLoad/lazyload.min.js"></script>
        <script src="/Store/js/main.js"></script>
        <!-- form validation and sending to mail -->
        <script src="/Store/external/form/jquery.form.js"></script>
        <script src="/Store/external/form/jquery.validate.min.js"></script>
        <script src="/Store/external/form/jquery.form-init.js"></script>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
