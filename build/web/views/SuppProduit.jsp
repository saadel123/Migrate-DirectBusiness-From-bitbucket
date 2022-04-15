<%-- 
    Document   : SuppProduit
    Created on : Apr 3, 2021, 10:47:14 PM
    Author     : saad
--%>

<%@page import="org.hibernate.Criteria"%>
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
         
        <div class="tt-breadcrumb">
            <div class="container">
                <ul>
                    <li><a href="/Store/views/index.jsp">Home</a></li>
                    <li>Listing</li>
                </ul>
            </div>
        </div>
         <% if(request.getAttribute("msg")!=null){ %>
         <h2 style="color:green; text-align: center;"><u><%=request.getAttribute("msg") %></u></h2>
        <%}%>
        <%
            Session s = HibernateUtil.getSession();

        %>
        <div id="tt-pageContent">
            <div class="container-indent">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-3 col-xl-3 leftColumn aside">
                            
                            
                            <div class="tt-collapse open ">
                                <br>
                                <br>
                            </div>
                            <%                                        List<Categorie> lc = s.createQuery("from Categorie").list();
                            %>
                            <div class="tt-collapse open">
                                <h3 class="tt-collapse-title">PRODUCT CATEGORIES</h3>
                                <%for (Categorie c : lc) {%>
                                <div class="tt-collapse-content">

                                    <ul class="tt-list-row">
                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=c.getIdcat()%>&mot="><%=c.getLibelle()%></a></li>
                                    </ul>
                                </div>
                                <%}%>
                            </div>
                            
                           
                            
                            <div class="tt-collapse open">
                               <!-- Query qu=s.createQuery("select distinct p.marque from Produit p");-->
                                <%  
                               Query qu=s.createQuery(" from Produit");
                               
                               List<Produit> listp = qu.list();
                               
                              
                            %>
                                <h3 class="tt-collapse-title">FILTER BY VENDOR</h3>
                                 <%for (Produit p : listp) {%>
                                <div class="tt-collapse-content">
                                    <ul class="tt-list-row">
                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=p.getCategorie().getIdcat()%>&mot="><%=p.getMarque()%></a></li>
                                        
                                    </ul>
                                    
                                </div>
                                <%}%>
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
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Fashion</a></li>
                                        
                                        
                                    </ul>
                                </div>
                            </div>
                           
                        </div>
                        <div class="col-md-12 col-lg-9 col-xl-9">
                            <div class="content-indent container-fluid-custom-mobile-padding-02">
                                <div class="tt-filters-options">
                                    <h1 class="tt-title">
                                        PRODUCTS <span class="tt-title-total"></span>
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

                                        Query q = s.createQuery("Select p from Produit p order by p.datePub desc");
                                        
                                        q.setFirstResult(0);
                                        q.setMaxResults(12);
                                        List<Produit> lp = q.list();
                                        lp = q.list();
                                        for (Produit p : lp) {
                                    %>
                                    <div class="col-6 col-md-4 tt-col-item">
                                        <div class="tt-product thumbprod-center">
                                            <div class="tt-image-box">
                                                
                                                
                                                
                                                <a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>">
                                                    <span class="tt-img"><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt="" ></span>
                                                    <span class="tt-img-roll-over"><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" alt=""></span>
                                                </a>
                                            </div>
                                            <div class="tt-description">
                                                <div class="tt-row">
                                                    <ul class="tt-add-info">
                                                        <li><a href="#"><%=p.getCategorie().getLibelle()%></a></li>
                                                    </ul>
                                                    <div class="tt-rating">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-half"></i>
                                                        <i class="icon-star-empty"></i>
                                                    </div>
                                                </div>
                                                <h2 class="tt-title"><a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>"></a><%=p.getLibelle()%></h2>
                                                <div class="tt-price">
                                                    $<%=p.getPrix()%>
                                                </div>
                                                <a href="/Store/SuppProduit?idp=<%=p.getIdp()%>" class="tt-btn-addtocart thumbprod-button-bg" >Delete Product</a>
                                                <div class="tt-product-inside-hover">
                                                    <div class="tt-row-btn">
                                                        <!--data-toggle="modal"-->
                                                        
                                                        
                                                       
                                                    </div>
                                                    <div class="tt-row-btn">
                                                        <a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></a>
                                                        <a href="#" class="tt-btn-wishlist"></a>
                                                        <a href="#" class="tt-btn-compare"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>
                                </div>
                                <div class="text-center tt_product_showmore">
                                    <a href="#" class="btn btn-border">LOAD MORE</a>
                                    <div class="tt_item_all_js">
                                        <a href="#" class="btn btn-border01">NO MORE ITEM TO SHOW</a>
                                    </div>
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
