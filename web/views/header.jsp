<%-- 
    Document   : header.jsp
    Created on : Mar 14, 2021, 1:31:23 AM
    Author     : saad
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Session"%>
<%@page import="pk.models.Categorie"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="pk.models.Produit"%>
<%@page import="pk.models.LignePanier"%>
<%@page import="pk.models.LignePanier"%>
<%@page import="pk.models.Panier"%>
<%@page import="pk.models.Panier"%>
<%@page import="pk.models.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Header</title>
        <link rel="shortcut icon" href="favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/Store/css/theme.css">

    </head>
    <body>
        <% Client clt = null;
            if (session.getAttribute("clt") != null) {
                clt = (Client) session.getAttribute("clt");
            }
        %>
        <div id="loader-wrapper">
            <div id="loader">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
        <header>
            <!-- tt-mobile menu -->
            <nav class="panel-menu mobile-main-menu">
                <ul>
                    <li>
                        <a href="/Store/views/index.jsp">HOME</a>
                    </li>
                    <li>
                        <a href="/Store/views/listing-left-column.jsp">SHOP</a>
                    </li>
                    <li>
                        <a href="/Store/views/blog.jsp">BLOG</a>
                    </li>
                    <li>
                        <a href="/Store/views/portfolio.jsp">PORTFOLIO</a>
                    </li>
                    <%if (clt != null && clt.getCompte().getRole().equals("Admin")) {%>
                    <li>
                        <a href="#" >MANAGEMENT PANEL</a>
                        <ul>
                            <li>  
                            <li><a href="/Store/views/formAddProduit.jsp">Ajouter produit</a></li> 
                            <li><a href="/Store/views/formModifProduit.jsp">Ajouter produit</a></li> 
                            <li><a href="/Store/views/listeArticle.jsp">Gerer les promotions</a></li> 
                            <li><a href="/Store/views/AddBlog.jsp">Ajouter Blog</a></li> 
                            <li><a href="/Store/views/listecommandemanager.jsp">Gerer les commandes</a></li> 
                        </ul>   
                    </li>

                    <%}%>
                </ul>

            </nav>
            <!-- tt-mobile-header -->
            <div class="tt-mobile-header">
                <div class="container-fluid">
                    <div class="tt-header-row">
                        <div class="tt-mobile-parent-menu">
                            <div class="tt-menu-toggle">
                                <i class="icon-03"></i>
                            </div>
                        </div>
                        <!-- search -->
                        <div class="tt-mobile-parent-search tt-parent-box"></div>
                        <!-- /search -->
                        <!-- cart -->
                        <div class="tt-mobile-parent-cart tt-parent-box"></div>
                        <!-- /cart -->
                        <!-- account -->
                        <div class="tt-mobile-parent-account tt-parent-box"></div>
                        <!-- /account -->
                        <!-- currency -->
                        <div class="tt-mobile-parent-multi tt-parent-box"></div>
                        <!-- /currency -->
                    </div>
                </div>
                <div class="container-fluid tt-top-line">
                    <div class="row">
                        <div class="tt-logo-container">
                            <!-- mobile logo -->
                            <a class="tt-logo tt-logo-alignment" href="/Store/views/index.jsp"><img src="/Store/images/custom/logo_1.png" alt=""></a>
                            <!-- /mobile logo -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- tt-desktop-header -->
            <div class="tt-desktop-header">
                <div class="container">
                    <div class="tt-header-holder">
                        <div class="tt-col-obj tt-obj-logo">
                            <!-- logo -->
                            <a class="tt-logo tt-logo-alignment" href="/Store/views/index.jsp"><img src="/Store/images/custom/logo_1.png" alt=""></a>
                            <!-- /logo -->
                        </div>
                        <div class="tt-col-obj tt-obj-menu">
                            <!-- tt-menu -->
                            <div class="tt-desctop-parent-menu tt-parent-box">
                                <div class="tt-desctop-menu">
                                    <nav>
                                        <ul>
                                            <li class="dropdown tt-megamenu-col-02 ">
                                                <a href="/Store/views/index.jsp">HOME</a>

                                            </li>
                                            <li class="dropdown megamenu">
                                                <a href="/Store/views/listing-left-column.jsp">SHOP</a>

                                            </li>

                                            <%if (clt != null && clt.getCompte().getRole().equals("Admin")) {%>
                                            <li class="dropdown tt-megamenu-col-01">
                                                <a href="/Store/views/formAddProduit.jsp">MANAGEMENT PANEL</a>
                                                <div class="dropdown-menu">
                                                    <div class="row tt-col-list">
                                                        <div class="col">

                                                            <ul class="tt-megamenu-submenu">
                                                                <li><a href="/Store/views/formAddProduit.jsp">Add products</a></li>
                                                                <li><a href="/Store/views/SuppProduit.jsp">Delete products</a></li>
                                                                <li><a href="/Store/views/modifProduit.jsp">Update products</a></li> 
                                                                <li><a href="/Store/views/AddBlog.jsp">Add Blog</a></li> 
                                                                <!--<li><a href="/Store/views/listeArticle.jsp">Manage Sales</a></li>-->
                                                                <li><a href="/Store/views/listecommandemanger.jsp">Manage orders</a></li>


                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>
                                            </li>
                                            <%}%>
                                            <li class="dropdown megamenu">
                                                <a href="/Store/views/listing-collection.jsp">CATEGORIES</a>
                                                <div class="dropdown-menu">
                                                    <div class="row">
                                                        <div class="col-sm-8">
                                                            <div class="row tt-col-list">
                                                                <div class="col-sm-3">
                                                                    <a class="tt-title-submenu" href="#">
                                                                        TOPS
                                                                    </a>
                                                                    <%
                                                                        Session s = HibernateUtil.getSession();
                                                                        Query que = s.createQuery(" from Categorie");
                                                                        que.setFirstResult(0);
                                                                        que.setMaxResults(5);
                                                                        List<Categorie> lc = que.list();
                                                                        lc = que.list();
                                                                    %>
                                                                    <ul class="tt-megamenu-submenu"  href="#">
                                                                        <%for (Categorie c : lc) {%>
                                                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=c.getIdcat()%>&mot="><%=c.getLibelle()%></a></li>
                                                                            <%}%>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <a class="tt-title-submenu"  href="#">
                                                                        BOTTOMS
                                                                    </a>
                                                                    <%
                                                                        que.setFirstResult(5);
                                                                        que.setMaxResults(5);
                                                                        List<Categorie> lc2 = que.list();
                                                                    %>
                                                                    <ul class="tt-megamenu-submenu" >
                                                                        <%for (Categorie c : lc2) {%>
                                                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=c.getIdcat()%>&mot="><%=c.getLibelle()%></a></li>
                                                                            <%}%>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <a class="tt-title-submenu" href="#">
                                                                        ACCESSORIES
                                                                    </a>
                                                                    <%
                                                                        que.setFirstResult(10);
                                                                        que.setMaxResults(11);
                                                                        List<Categorie> lc3 = que.list();

                                                                    %>
                                                                    <ul class="tt-megamenu-submenu">
                                                                        <%for (Categorie c : lc3) {%>
                                                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=c.getIdcat()%>&mot="><%=c.getLibelle()%><span class="tt-badge tt-new">New</span></a></li>
                                                                            <%}%>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-sm-3">
                                                                    <a class="tt-title-submenu" href="/Store/views/listing-left-column.jsp">
                                                                        TOP BRANDS
                                                                    </a>
                                                                    <ul class="tt-listing-01">
                                                                        <li><a href="#" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/custom/brand-img-01.png" alt=""></a></li>
                                                                        <li><a href="#" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/custom/brand-img-02.png" alt=""></a></li>
                                                                        <li><a href="#" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/custom/brand-img-03.png" alt=""></a></li>
                                                                        <li><a href="#" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/custom/brand-img-04.png" alt=""></a></li>
                                                                        <li><a href="#" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/custom/brand-img-05.png" alt=""></a></li>
                                                                        <li><a href="#" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/custom/brand-img-06.png" alt=""></a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <a href="/Store/views/listing-left-column.jsp" class="tt-title-submenu">SPECIALS</a>
                                                            <div class="tt-menu-slider header-menu-product arrow-location-03 row">
                                                                <%

                                                                    Query qur = s.createQuery("Select p from Produit p order by p.datePub desc");

                                                                    qur.setFirstResult(1);
                                                                    qur.setMaxResults(4);
                                                                    List<Produit> lpro = qur.list();
                                                                    lpro = qur.list();
                                                                    for (Produit pr : lpro) {
                                                                %>
                                                                <div class="col-2">
                                                                    <div class="tt-product thumbprod-center">
                                                                        <a href="/Store/views/product.jsp?idp=<%=pr.getIdp()%>">
                                                                            <div class="tt-image-box">
                                                                                <span class="tt-img"><img src="/Store/images/product/<%=pr.getImages().get(0).getUrl()%>" alt=""></span>
                                                                                <span class="tt-img-roll-over"><img src="/Store/images/product/<%=pr.getImages().get(0).getUrl2()%>" alt=""></span>
                                                                            </div>
                                                                            <div class="tt-description">
                                                                                <h2 class="tt-title"><%=pr.getLibelle()%></h2>
                                                                                <div class="tt-price">
                                                                                    $<%=pr.getPrix()%>
                                                                                </div>
                                                                                <div class="tt-product-inside-hover">
                                                                                    <div class="tt-btn-addtocart" data-toggle="modal" data-target="#modalAddToCartProduct">ADD TO CART</div>
                                                                                    <div class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></div>
                                                                                </div>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <%}%>


                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </li>
                                            <li class="dropdown tt-megamenu-col-01">
                                                <a href="/Store/views/blog.jsp">BLOG</a>
                                            </li>
                                            <li class="dropdown tt-megamenu-col-01">
                                                <a href="/Store/views/portfolio.jsp">PORTFOLIO</a>

                                            </li>
                                            <li class="dropdown">
                                                <!--<a href="index-rtl.html">RTL</a>-->
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- /tt-menu -->
                        </div>
                        <div class="tt-col-obj tt-obj-options obj-move-right">
                            <!-- tt-search -->
                            <div class="tt-desctop-parent-search tt-parent-box">
                                <div class="tt-search tt-dropdown-obj">
                                    <button class="tt-dropdown-toggle" data-tooltip="Search" data-tposition="bottom">
                                        <i class="icon-f-85"></i>
                                    </button>
                                    <div class="tt-dropdown-menu">
                                        <div class="container">
                                            <form action="/Store/views/rechercher.jsp">
                                                <div class="tt-col">
                                                    <input type="text" class="tt-search-input" name="mot" placeholder="Search Products...">
                                                    <button class="tt-btn-search" type="submit"></button>
                                                </div>
                                                <div class="tt-col">
                                                    <button class="tt-btn-close icon-g-80"></button>
                                                </div>
                                                <div class="tt-info-text">
                                                    What are you Looking for?
                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /tt-search -->
                            <!-- tt-cart -->

                            <div class="tt-desctop-parent-cart tt-parent-box">
                                <div class="tt-cart tt-dropdown-obj" data-tooltip="Cart" data-tposition="bottom">
                                    <button class="tt-dropdown-toggle">
                                        <i class="icon-f-39"></i>

                                    </button>
                                    <div class="tt-dropdown-menu">
                                        <div class="tt-mobile-add">
                                            <h6 class="tt-title">SHOPPING CART</h6>
                                            <button class="tt-close">Close</button>
                                        </div>
                                        <div class="tt-dropdown-inner">
                                            <div class="tt-cart-layout">
                                                <!-- layout emty cart -->
                                                <!-- <a href="empty-cart.html" class="tt-cart-empty">
                                                        <i class="icon-f-39"></i>
                                                        <p>No Products in the Cart</p>
                                                </a> -->
                                                <div class="tt-cart-content">
                                                    <div class="tt-cart-list">
                                                        <%
                                                            if (session.getAttribute("panier") == null) {
                                                        %>
                                                        <h3 style="text-align:  center" class="tt-title">SHOPPING CART IS EMPTY</h3>
                                                        <p>You have no items in your shopping cart.</p>
                                                        <%
                                                        } else {
                                                            Panier panier = (Panier) session.getAttribute("panier");
                                                        %>
                                                        <%for (LignePanier lp : panier.getItems()) {

                                                                Produit p = lp.getProduit();
                                                        %>
                                                        <div class="tt-item">

                                                            <a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>">
                                                                <div class="tt-item-img">
                                                                    <img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt="">
                                                                </div>
                                                                <div class="tt-item-descriptions">
                                                                    <h2 class="tt-title"><%=p.getLibelle()%></h2>
                                                                    <ul class="tt-add-info">

                                                                        <li><%=p.getMarque()%></li>
                                                                    </ul>
                                                                    <div class="tt-quantity"></div> <div class="tt-price">$<%=p.getPrix()%></div>
                                                                </div>
                                                            </a>
                                                            <div class="tt-item-close">
                                                                <a href="/Store/GererPanier?action=supp&idp=<%=p.getIdp()%>" class="tt-btn-close"></a>
                                                            </div>
                                                        </div>
                                                        <%}%>
                                                    </div>
                                                    <div class="tt-cart-total-row">
                                                        <div class="tt-cart-total-title">SUBTOTAL:</div>
                                                        <div class="tt-cart-total-price"><%=panier.total()%></div>
                                                    </div>
                                                    <%}%> 
                                                    <%
                                                        if (session.getAttribute("panier") != null) {
                                                    %>
                                                    <div class="tt-cart-btn">
                                                        <div class="tt-item">
                                                            <a href="/Store/views/checkout.jsp" class="btn">PROCEED TO CHECKOUT</a>
                                                        </div>
                                                        <div class="tt-item">
                                                            <a href="/Store/views/panier.jsp" class="btn-link-02 tt-hidden-mobile">View Cart</a>
                                                            <a href="/Store/views/panier.jsp" class="btn btn-border tt-hidden-desctope">VIEW CART</a>
                                                        </div>
                                                    </div>
                                                    <%}%> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <!-- /tt-cart -->
                            <!-- tt-account -->
                            <div class="tt-desctop-parent-account tt-parent-box">
                                <div class="tt-account tt-dropdown-obj">
                                    <button class="tt-dropdown-toggle"  data-tooltip="My Account" data-tposition="bottom"><i class="icon-f-94"></i></button>
                                    <div class="tt-dropdown-menu">
                                        <div class="tt-mobile-add">
                                            <button class="tt-close">Close</button>
                                        </div>
                                        <div class="tt-dropdown-inner">
                                            <ul>
                                                <% if (clt != null) {%> 
                                                <li><a href="/Store/views/mescommandes.jsp"><i class="icon-f-94"></i>Hello:<%=clt.getPrenom()%></a></li>                 


                                                <%}%>
                                                <li><a href="/Store/views/wishlist.jsp"><i class="icon-n-072"></i>Wishlist</a></li>
                                                <!-- <li><a href="compare.html"><i class="icon-n-08"></i>Compare</a></li> -->

                                                <% if (clt == null) {%>
                                                <li><a href="/Store/views/formLogin.jsp"><i class="icon-f-76"></i>Sign In</a></li>
                                                <li><a href="/Store/views/formRegister.jsp"><i class="icon-f-94"></i>Register</a></li>
                                                    <%} else {%>
                                                <li><a href="/Store/Logout"><i class="icon-f-76"></i>Sign Out</a></li>
                                                    <%}%>



                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /tt-account -->
                            <!-- tt-langue and tt-currency 
                            <div class="tt-desctop-parent-multi tt-parent-box">
                                <div class="tt-multi-obj tt-dropdown-obj">
                                    <button class="tt-dropdown-toggle" data-tooltip="Settings" data-tposition="bottom"><i class="icon-f-79"></i></button>
                                    <div class="tt-dropdown-menu">
                                        <div class="tt-mobile-add">
                                            <button class="tt-close">Close</button>
                                        </div>
                                        <div class="tt-dropdown-inner">
                                            <ul>
                                                <li class="active"><a href="#">English</a></li>
                                                <li><a href="#">Deutsch</a></li>
                                                <li><a href="#">Español</a></li>
                                                <li><a href="#">Français</a></li>
                                            </ul>
                                            <ul>
                                                <li class="active"><a href="#"><i class="icon-h-59"></i>USD - US Dollar</a></li>
                                                <li><a href="#"><i class="icon-h-60"></i>EUR - Euro</a></li>
                                                <li><a href="#"><i class="icon-h-61"></i>GBP - British Pound Sterling</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            -->
                            <!-- /tt-langue and tt-currency -->
                        </div>
                    </div>
                </div>
            </div>

            <!-- stuck nav -->
            <div class="tt-stuck-nav">
                <div class="container">
                    <div class="tt-header-row ">
                        <div class="tt-stuck-parent-menu"></div>
                        <div class="tt-stuck-parent-search tt-parent-box"></div>
                        <div class="tt-stuck-parent-cart tt-parent-box"></div>
                        <div class="tt-stuck-parent-account tt-parent-box"></div>
                        <div class="tt-stuck-parent-multi tt-parent-box"></div>
                    </div>
                </div>
            </div>
        </header>
    </body>

</html>
