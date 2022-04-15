<%-- 
    Document   : index
    Created on : Mar 13, 2021, 10:51:31 PM
    Author     : saad
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pk.models.Categorie"%>
<%@page import="java.util.List"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="pk.models.Produit"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="pk.controllers.UtilConnexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="pk.models.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="tt-pageContent">
                <div class="container-indent nomargin">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="slider-revolution revolution-default">
                                <div class="tp-banner-container">
                                    <div class="tp-banner revolution">
                                        <ul>
                                            <li data-thumb="/Store/images/slides/01/slide-02.jpg" data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-saveperformance="off"  data-title="Slide">
                                                <img src="/Store/images/slides/01/slide-02.jpg"  alt="slide1"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" >
                                                <div class="tp-caption tp-caption1 lft stb"
                                                     data-x="center"
                                                     data-y="center"
                                                     data-hoffset="0"
                                                     data-voffset="0"
                                                     data-speed="600"
                                                     data-start="900"
                                                     data-easing="Power4.easeOut"
                                                     data-endeasing="Power4.easeIn">
                                                    <div class="tp-caption1-wd-1 tt-white-color" style="color: #2879fe;">S-Store </div>
                                                    <div class="tp-caption1-wd-2 tt-white-color">Is here with new Items!</div>
                                                    <div class="tp-caption1-wd-3 tt-white-color"><b>Opening our new store for a new experience</b></div>
                                                    <div class="tp-caption1-wd-4"><a href="/Store/views/listing-left-column.jsp" target="_blank" class="btn btn-xl" data-text="SHOP NOW!">SHOP NOW!</a></div>
                                                </div>
                                            </li>
                                            <li data-thumb="/Store/images/slides/01/slide-01.jpg" data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-saveperformance="off"  data-title="Slide">
                                                <img src="/Store/images/slides/01/slide-01.jpg"  alt="slide1"  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" >
                                                <div class="tp-caption tp-caption1 lft stb"
                                                     data-x="center"
                                                     data-y="center"
                                                     data-hoffset="0"
                                                     data-voffset="0"
                                                     data-speed="600"
                                                     data-start="900"
                                                     data-easing="Power4.easeOut"
                                                     data-endeasing="Power4.easeIn">
                                                    <div class="tp-caption1-wd-1 tt-white-color">We are with a new</div>
                                                    <div class="tp-caption1-wd-2 tt-white-color">collection with our new store</div>
                                                    <div class="tp-caption1-wd-3 tt-white-color">The grand opening to make you fall in love with us</div>
                                                    <div class="tp-caption1-wd-4"><a href="/Store/views/listing-left-column.jsp" target="_blank" class="btn btn-xl" data-text="SHOP NOW!">SHOP NOW!</a></div>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-indent0">
                    <div class="container-fluid">
                        <div class="row tt-layout-promo-box">
                            <div class="col-sm-12 col-md-6">
                                <div class="row">

                                    <div class="col-sm-6">
                                        <a <a href="/Store/views/rechercher.jsp?mot=" class="tt-promo-box tt-one-child hover-type-2">
                                                <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-01.jpg" alt="">

                                                <div class="tt-description">
                                                    <div class="tt-description-wrapper">
                                                        <div class="tt-background"></div>
                                                        <div class="tt-title-small">SALE</div>
                                                    </div>
                                                </div>

                                            </a>
                                            <a href="/Store/views/rechercher.jsp?mot=" class="tt-promo-box tt-one-child hover-type-2">
                                                <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-02.jpg" alt="">
                                                <div class="tt-description">
                                                    <div class="tt-description-wrapper">
                                                        <div class="tt-background"></div>
                                                        <div class="tt-title-small">NEW</div>
                                                    </div>
                                                </div>
                                            </a>
                                    </div>

                                    <div class="col-sm-6">
                                        <a href="/Store/views/rechercher.jsp?mot=" class="tt-promo-box tt-one-child hover-type-2">
                                            <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-03.jpg" alt="">
                                            <div class="tt-description">
                                                <div class="tt-description-wrapper">
                                                    <div class="tt-background"></div>
                                                    <div class="tt-title-small">WOMEN</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="/Store/views/listing-left-column.jsp" class="tt-promo-box tt-one-child hover-type-2">
                                            <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-04.jpg" alt="">
                                            <div class="tt-description">
                                                <div class="tt-description-wrapper">
                                                    <div class="tt-background"></div>
                                                    <div class="tt-title-small">MEN</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-sm-6">
                                        <a href="/Store/views/listing-left-column.jsp" class="tt-promo-box tt-one-child hover-type-2">
                                            <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-05.jpg" alt="">
                                            <div class="tt-description">
                                                <div class="tt-description-wrapper">
                                                    <div class="tt-background"></div>
                                                    <div class="tt-title-small">ACCESSORIES</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-sm-12">
                                        <a href="/Store/views/rechercher.jsp?mot=Shoes" class="tt-promo-box tt-one-child">
                                            <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-06.jpg" alt="">
                                            <div class="tt-description">
                                                <div class="tt-description-wrapper">
                                                    <div class="tt-background"></div>
                                                    <div class="tt-title-small">SHOES</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-indent">
                    <div class="container container-fluid-custom-mobile-padding">
                        <div class="tt-block-title">
                            <h1 class="tt-title">BEST SELLER</h1>
                            <div class="tt-description">TOP SALE IN THIS WEEK</div>
                        </div>
                        <div class="row tt-layout-product-item">


                        <%
                            Session s = HibernateUtil.getSession();
                            Query q = s.createQuery("from Produit");
                            q.setFirstResult(0);
                            q.setMaxResults(8);
                            List<Produit> lp = q.list();
                            lp = q.list();
                            for (Produit p : lp) {
                        %>
                        <div class="col-6 col-md-4 col-lg-3">
                            <div class="tt-product thumbprod-center">
                                <div class="tt-image-box">
                                    <a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#quickView"	data-tooltip="Quick View" data-tposition="left" data-idp="<%=p.getIdp()%>"></a>
                                    <!--<a href="/Store/AddToWish?action=ajouter&idp=n&qte=1" class="tt-btn-wishlist"></a> -->
                                    <span onclick="location.href = '/Store/AddToWish?action=ajouter&idp=<%=p.getIdp()%>&qte=1'"  class="tt-btn-wishlist"></span>
                                    <!-- <a href="#" class="tt-btn-compare" data-tooltip="Add to Compare" data-tposition="left"></a> -->
                                    <a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>">
                                        <span class="tt-img"><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt=""></span>
                                        <span class="tt-img-roll-over"><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" alt=""></span>
                                    </a>
                                </div>
                                <div class="tt-description">
                                    <div class="tt-row">
                                        <ul class="tt-add-info">
                                            <li><a href="/Store/views/rechercher.jsp?idc=<%=p.getCategorie().getIdcat()%>&mot="><%=p.getCategorie().getLibelle()%></a></li>
                                        </ul>
                                    </div>
                                    <h2 class="tt-title"><a href="/Store/views/product.jsp?idp=<%=p.getIdp()%>"><%=p.getLibelle()%></a></h2>
                                    <div class="tt-price">
                                        $<%=p.getPrix()%>
                                    </div>
                                    <div class="tt-product-inside-hover">
                                        <div class="tt-row-btn">
                                            <a href="/Store/GererPanier?action=ajouter&idp=<%=p.getIdp()%>&qte=1" class="tt-btn-addtocart thumbprod-button-bg" >ADD TO CART</a>

                                        </div>
                                        <div class="tt-row-btn">
                                            <a href="/Store/views/footer.jsp?idp=<%=p.getIdp()%>" class="tt-btn-quickview" data-toggle="modal" data-target="#quickView" data-idp="<%=p.getIdp()%>"></a>
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
            

            <div class="container-indent">
                <div class="container">
                    <div class="tt-block-title">
                        <h2 class="tt-title">LATES FROM BLOG</h2>
                        <div class="tt-description">THE FRESHEST AND MOST EXCITING NEWS</div>
                    </div>
                    <div class="tt-blog-thumb-list">
                        <div class="row">
                            <%
                                List<Blog> arts = new ArrayList<Blog>();
                                Connection con = UtilConnexion.seConnecter();
                                String req = "select * from blog order by datepub desc";
                                ResultSet rs = con.createStatement().executeQuery(req);
                                SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
                                while (rs.next()) {

                                    arts.add(new Blog(rs.getInt("idb"), rs.getString("titre"), rs.getString("text"), rs.getString("img"),
                                            sdf.parse(rs.getDate("datepub").toString())));
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
                            %>
                            <%
                                for (Blog a : artsCur) {
                            %>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-4">
                                <div class="tt-blog-thumb">
                                    <div class="tt-img"><a href="/Store/views/blogDetails.jsp?ida=<%=a.getIda()%>" target="_blank"><img src="/Store/images/loader.svg" data-src="/Store/images/blog/<%=a.getImg()%>" alt="<%=a.getTitre()%>"></a></div>
                                    <div class="tt-title-description">
                                        <div class="tt-background"></div>

                                        <div class="tt-title">
                                            <a href="/Store/views/blogDetails.jsp?ida=<%=a.getIda()%>"><%=a.getTitre()%></a>
                                        </div>
                                        <p>
                                            <%=a.getText().substring(0, 100)%>...
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <%}%>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
                            <div class="container-indent">
                <div class="container-fluid-custom">
                    <div class="row tt-layout-promo-box">
                        <div class="col-sm-6 col-md-4">
                            <a href="/Store/views/listing-left-column.jsp" class="tt-promo-box">
                                <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-07.jpg" alt="">
                                <div class="tt-description">
                                    <div class="tt-description-wrapper">
                                        <div class="tt-background"></div>
                                        <div class="tt-title-small">FALL-WINTER CLEARANCE SALES</div>
                                        <div class="tt-title-large">GET UP TO <span class="tt-base-color">50% OFF</span></div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="/Store/views/listing-left-column.jsp" class="tt-promo-box">
                                <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-08.jpg" alt="">
                                <div class="tt-description">
                                    <div class="tt-description-wrapper">
                                        <div class="tt-background"></div>
                                        <div class="tt-title-small">SUMMER <span class="tt-base-color">2021</span></div>
                                        <div class="tt-title-large">NEW ARRIVALS</div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-sm-6 col-md-4">
                            <a href="/Store/views/listing-left-column.jsp" class="tt-promo-box">
                                <img src="/Store/images/loader.svg" data-src="/Store/images/promo/index-promo-img-09.jpg" alt="">
                                <div class="tt-description">
                                    <div class="tt-background"></div>
                                    <div class="tt-description-wrapper">
                                        <div class="tt-background"></div>
                                        <div class="tt-title-small">NEW COLLECTION</div>
                                        <div class="tt-title-large"><span class="tt-base-color">S-STORE</span></div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-indent">
                <div class="container-fluid">
                    <div class="tt-block-title">
                        <h2 class="tt-title"><a target="_blank" href="https://www.instagram.com/">@ FOLLOW</a> US ON</h2>
                        <div class="tt-description">INSTAGRAM</div>
                    </div>
                    <div class="row">
                        <div id="instafeed" class="instafeed-fluid"
                             data-accessToken="8626857013.dd09515.0fcd8351c65140d48f5a340693af1c3f"
                             data-clientId="dd095157744c4bd0a67181fc4906e5b6"
                             data-userId="8626857013"
                             data-limitImg="6">
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-indent">
                <div class="container">
                    <div class="row tt-services-listing">
                        <div class="col-xs-12 col-md-6 col-lg-4">
                            <a href="#" class="tt-services-block">
                                <div class="tt-col-icon">
                                    <i class="icon-f-48"></i>
                                </div>
                                <div class="tt-col-description">
                                    <h4 class="tt-title">FREE SHIPPING</h4>
                                    <p>Free shipping on all US order or order above $99</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4">
                            <a href="#" class="tt-services-block">
                                <div class="tt-col-icon">
                                    <i class="icon-f-35"></i>
                                </div>
                                <div class="tt-col-description">
                                    <h4 class="tt-title">SUPPORT 24/7</h4>
                                    <p>Contact us 24 hours a day, 7 days a week</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4">
                            <a href="#" class="tt-services-block">
                                <div class="tt-col-icon">
                                    <i class="icon-e-09"></i>
                                </div>
                                <div class="tt-col-description">
                                    <h4 class="tt-title">30 DAYS RETURN</h4>
                                    <p>Simply return it within 24 days for an exchange.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
