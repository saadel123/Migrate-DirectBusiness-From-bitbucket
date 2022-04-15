<%-- 
    Document   : rechercher
    Created on : Mar 22, 2021, 1:45:37 AM
    Author     : saad
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="pk.models.Produit"%>
<%@page import="org.hibernate.Session"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="pk.models.Categorie"%>
<%@page import="pk.models.Categorie"%>
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
            Session s = HibernateUtil.getSession();
        %>
        <div class="tt-breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="/Store/views/index.jsp">Home</a></li>
                    <li>Search</li>
                </ul>
            </div>
        </div>
        <div id="tt-pageContent">
            <div class="container-indent">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-3 col-xl-3 leftColumn aside">
                            <div class="tt-btn-col-close">
                                <a href="#">Close</a>
                            </div>
                            <div class="tt-collapse open tt-filter-detach-option">
                                <div class="tt-collapse-content">
                                    <div class="filters-mobile">
                                        <div class="filters-row-select">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tt-collapse open ">
                                <br>
                                <br>
                            </div>
                            <%                                        List<Categorie> lc = s.createQuery("from Categorie").list();
                            %>
                            <div class="tt-collapse open">
                                <h3 class="tt-collapse-title">PRODUCT CATEGORIES</h3>
                                
                                <div class="tt-collapse-content">

                                    <ul class="tt-list-row">
                                        <%for (Categorie c : lc) {%>
                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=c.getIdcat()%>&mot="><%=c.getLibelle()%></a></li>
                                         <%}%>

                                    </ul>

                                </div>
                               
                            </div>

                            <div class="tt-collapse open">
                               <!-- Query qu=s.createQuery("select distinct p.marque from Produit p");-->
                                <%  
                               Query qu=s.createQuery(" from Produit");
                               qu.setFirstResult(5);
                               qu.setMaxResults(5);
                               List<Produit> listp = qu.list();
                               
                              
                            %>
                                <h3 class="tt-collapse-title">FILTER BY VENDOR</h3>
                                 
                                <div class="tt-collapse-content">
                                    <ul class="tt-list-row">
                                        <%for (Produit p : listp) {%>
                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=p.getCategorie().getIdcat()%>&mot="><%=p.getMarque()%></a></li>
                                        <%}%>
                                    </ul>
                                    
                                </div>
                                
                            </div>
                            
                            <div class="tt-collapse open">
                                <h3 class="tt-collapse-title">TAGS</h3>
                                <div class="tt-collapse-content">
                                    <ul class="tt-list-inline">
                                        <li><a href="#">Dresses</a></li>
                                        <li><a href="#">Shirts &amp; Tops</a></li>
                                        <li><a href="#">Polo Shirts</a></li>
                                        <li><a href="#">Sweaters</a></li>
                                        <li><a href="#">Blazers</a></li>
                                        <li><a href="#">Vests</a></li>
                                        <li><a href="#">Jackets</a></li>
                                        <li><a href="#">Outerwear</a></li>
                                        <li><a href="#">Activewear</a></li>
                                        <li><a href="#">Pants</a></li>
                                        <li><a href="#">Jumpsuits</a></li>
                                        <li><a href="#">Shorts</a></li>
                                        <li><a href="#">Jeans</a></li>
                                        <li><a href="#">Skirts</a></li>
                                        <li><a href="#">Swimwear</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                        <div class="col-md-12 col-lg-9 col-xl-9">
                            <div class="content-indent container-fluid-custom-mobile-padding-02">
                                <div class="tt-filters-options">
                                    <h1 class="tt-title">
                                        Search Result <span class="tt-title-total"></span>
                                    </h1>
                                    <div class="tt-btn-toggle">
                                        <a href="#">FILTER</a>
                                    </div>
                                   
                                    <div class="tt-quantity">
                                        <a href="#" class="tt-col-one" data-value="tt-col-one"></a>
                                        <a href="#" class="tt-col-two" data-value="tt-col-two"></a>
                                        <a href="#" class="tt-col-three" data-value="tt-col-three"></a>
                                        <a href="#" class="tt-col-four" data-value="tt-col-four"></a>
                                        <a href="#" class="tt-col-six" data-value="tt-col-six"></a>
                                    </div>
                                </div>


                                <div class="tt-product-listing row">
                                    <%
                                        String mot = request.getParameter("mot");
                                        if (mot == null) {
                                            mot = "";
                                        }
                                        String req = "Select p from Produit p where lower(p.libelle) like '%" + mot.toLowerCase() + "%'";
                                        if (request.getParameter("idc") != null) {
                                            int idc = Integer.parseInt(request.getParameter("idc"));
                                            req += " and p.categorie.idcat=" + idc;

                                        }
                                        Query q = s.createQuery(req);
                                        q.setFirstResult(0);
                                        q.setMaxResults(16);
                                        List<Produit> l = q.list();
                                        if (l.size() == 0) {
                                    %>

                                    <div class="tt-empty-search" style="margin: auto;">
                                        <span class="tt-icon icon-f-85"></span>
                                        <h1 class="tt-title">YOUR SEARCH RETURNS NO RESULTS.</h1>
                                        
                                        <p>Search results for <span class="tt-base-dark-color"><%=mot%></span></p>
                                      
                                    </div>

                                    <%
                                    } else {
                                        for (Produit p : l) {
                                    %>
                                    <div class="col-6 col-md-4 tt-col-item">
                                        <div class="tt-product thumbprod-center">
                                            <div class="tt-image-box">
                                                <a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#quickView"	data-tooltip="Quick View" data-tposition="left" data-idp="<%=p.getIdp()%>"></a>
                                                <span onclick="location.href = '/Store/AddToWish?action=ajouter&idp=<%=p.getIdp()%>&qte=1'"  class="tt-btn-wishlist"></span>
                                                
                                                <a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>">
                                                    <span class="tt-img"><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt=""></span>
                                                    <span class="tt-img-roll-over"><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" alt=""></span>
                                                </a>
                                            </div>
                                            <div class="tt-description">
                                                <div class="tt-row">
                                                    <ul class="tt-add-info">
                                                        <li><a href="#"><%=p.getCategorie().getLibelle()%></a></li>
                                                    </ul>
                                                    
                                                </div>
                                                <h2 class="tt-title"><a href="/Store/views/product.jsp"></a><%=p.getLibelle()%></h2>
                                                <div class="tt-price">
                                                    $<%=p.getPrix()%>
                                                </div>
                                                <div class="tt-product-inside-hover">
                                                    <div class="tt-row-btn">
                                                        <a  href="/Store/GererPanier?action=ajouter&idp=<%=p.getIdp()%>&qte=1" class="tt-btn-addtocart thumbprod-button-bg"  data-target="#modalAddToCartProduct">ADD TO CART</a>
                                                    </div>
                                                    <div class="tt-row-btn">
                                                        <a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#quickView"	data-tooltip="Quick View" data-tposition="left" data-idp="<%=p.getIdp()%>"></a>
                                                        <a href="#" class="tt-btn-wishlist"></a>
                                                        <a href="#" class="tt-btn-compare"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}

                                        }%>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
