<%-- 
    Document   : quickview
    Created on : Apr 20, 2021, 2:06:47 PM
    Author     : saad
--%>

<%@page import="pk.models.Produit"%>
<%@page import="pk.models.Produit"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="/Store/css/theme.css">   
       
    </head>
    <body>
        <%
            Session s = HibernateUtil.getSession();
            int idp = Integer.parseInt(request.getParameter("idp"));
            Produit p = (Produit) s.get(Produit.class, idp);

        %>
        <div class="modal  fade"  id="ModalquickView" tabindex="-1" role="dialog" aria-label="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content ">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="tt-modal-quickview desctope">
                            <div class="row">
                                <div class="col-12 col-md-5 col-lg-6">
                                    <div class="tt-mobile-product-slider arrow-location-center">
                                        <div><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl()%>" alt=""></div>
                                        <div><img src="/Store/images/loader.svg" data-src="/Store/images/product/<%=p.getImages().get(0).getUrl2()%>" alt=""></div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-7 col-lg-6">
                                    <div class="tt-product-single-info">
                                        <div class="tt-add-info">
                                            <ul>
                                                <li><span>SKU:</span> 001</li>
                                                <li><span>Availability:</span> 40 in Stock</li>
                                            </ul>
                                        </div>
                                        <h2 class="tt-title"><%=p.getLibelle()%></h2>
                                        <div class="tt-price">
                                            <span class="new-price">$29</span>
                                            <span class="old-price"></span>
                                        </div>
                                        <div class="tt-review">
                                            <div class="tt-rating">
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star"></i>
                                                <i class="icon-star-half"></i>
                                                <i class="icon-star-empty"></i>
                                            </div>
                                            <a href="#">(1 Customer Review)</a>
                                        </div>
                                        <div class="tt-wrapper">
                                            Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
                                        </div>
                                       
                                        <div class="tt-wrapper">
                                            <div class="tt-row-custom-01">
                                                <div class="col-item">
                                                    <div class="tt-input-counter style-01">
                                                        <span class="minus-btn"></span>
                                                        <input type="text" value="1" size="5">
                                                        <span class="plus-btn"></span>
                                                    </div>
                                                </div>
                                                <div class="col-item">
                                                    <a href="#" class="btn btn-lg"><i class="icon-f-39"></i>ADD TO CART</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
        <script src="/Store/external/jquery/jquery.min.js"></script>
    <script src="/Store/external/bootstrap/js/bootstrap.min.js"></script>
    <script src="/Store/external/slick/slick.min.js"></script>
    <script src="/Store/external/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="/Store/external/panelmenu/panelmenu.js"></script>
    <script src="/Store/external/instafeed/instafeed.min.js"></script>
    <script src="/Store/external/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script src="/Store/external/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="/Store/external/countdown/jquery.plugin.min.js"></script>
    <script src="/Store/external/countdown/jquery.countdown.min.js"></script>
    <script src="/Store/external/lazyLoad/lazyload.min.js"></script>
    <script src="/Store/js/main.js"></script>
    <!-- form validation and sending to mail -->
    <script src="/Store/external/form/jquery.form.js"></script>
    <script src="/Store/external/form/jquery.validate.min.js"></script>
    <script src="/Store/external/form/jquery.form-init.js"></script>
</html>
