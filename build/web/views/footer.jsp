<%-- 
    Document   : footer
    Created on : Mar 14, 2021, 2:51:36 PM
    Author     : saad
--%>

<%@page import="pk.models.Categorie"%>
<%@page import="java.util.List"%>
<%@page import="pk.models.Produit"%>
<%@page import="org.hibernate.Query"%>
<%@page import="pk.dao.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <footer>
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
            
            <div class="tt-footer-col tt-color-scheme-01">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-2 col-xl-3">
                            <div class="tt-mobile-collapse">
                                <h4 class="tt-collapse-title">
                                    CATEGORIES
                                </h4>
                                <div class="tt-collapse-content">
                                    <%
                                        Session s = HibernateUtil.getSession();
                                        Query que = s.createQuery(" from Categorie");
                                        que.setFirstResult(0);
                                        que.setMaxResults(6);
                                        List<Categorie> lc = que.list();
                                        lc = que.list();
                                    %>
                                    <ul class="tt-list">
                                        <%for (Categorie c : lc) {%>
                                        <li><a href="/Store/views/rechercher.jsp?idc=<%=c.getIdcat()%>&mot="><%=c.getLibelle()%></a></li>
                                         <%}%>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-2 col-xl-3">
                            <div class="tt-mobile-collapse">
                                <h4 class="tt-collapse-title">
                                    MY ACCOUNT
                                </h4>
                                <div class="tt-collapse-content">
                                    <ul class="tt-list">
                                        <li><a href="/Store/views/panier.jsp">Shopping Cart</a></li>
                                        <li><a href="/Store/views/wishlist.jsp">Wishlist</a></li>
                                        <li><a href="/Store/views/formLogin.jsp">Log In</a></li>
                                        <li><a href="/Store/views/formRegister.jsp">Register</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="tt-mobile-collapse">
                                <h4 class="tt-collapse-title">
                                    ABOUT
                                </h4>
                                <div class="tt-collapse-content">
                                    <p>
                                        Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore. Lorem ipsum dolor sit amet conse ctetur adipisicing elit, seddo eiusmod tempor incididunt ut labore etdolore.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div class="tt-newsletter">
                                <div class="tt-mobile-collapse">
                                    <h4 class="tt-collapse-title">
                                        CONTACTS
                                    </h4>
                                    <div class="tt-collapse-content">
                                        <address>
                                            <p><span>Address:</span> ISTA Ntic2 ofpppt , Marocco casablanca</p>
                                            <p><span>Phone:</span> +212 6005 70107</p>
                                            <p><span>Hours:</span> 7 Days a week from 10 am to 6 pm</p>
                                            <p><span>E-mail:</span> <a href="mailto:elghanemysaad@gmail.com">elghanemysaad@gmail.com</a></p>
                                        </address>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tt-footer-custom">
                <div class="container">
                    <div class="tt-row">
                        <div class="tt-col-left">
                            <div class="tt-col-item tt-logo-col">
                                <!-- logo -->
                                <a class="tt-logo tt-logo-alignment" href="index.html">
                                    <img  src="/Store/images/custom/logo.png" alt="">
                                </a>
                                <!-- /logo -->
                            </div>
                            <div class="tt-col-item">
                                <!-- copyright -->
                                <div class="tt-box-copyright">
                                    &copy; Saad 2021. All Rights Reserved
                                </div>
                                <!-- /copyright -->
                            </div>
                        </div>
                        <div class="tt-col-right">
                            <div class="tt-col-item">
                                <!-- payment-list -->
                                <ul class="tt-payment-list">
                                    <li><a href="page404.html"><span class="icon-Stripe"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span>
                                            </span></a></li>
                                    <li><a href="page404.html"> <span class="icon-paypal-2">
                                                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span>
                                            </span></a></li>
                                    <li><a href="page404.html"><span class="icon-visa">
                                                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span>
                                            </span></a></li>
                                    <li><a href="page404.html"><span class="icon-mastercard">
                                                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span>
                                            </span></a></li>
                                    <li><a href="page404.html"><span class="icon-discover">
                                                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span><span class="path15"></span><span class="path16"></span>
                                            </span></a></li>
                                    <li><a href="page404.html"><span class="icon-american-express">
                                                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span>
                                            </span></a></li>
                                </ul>
                                <!-- /payment-list -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <a href="#" class="tt-back-to-top">BACK TO TOP</a>
        <!-- modal (AddToCartProduct) -->
        <div class="modal  fade"  id="modalAddToCartProduct" tabindex="-1" role="dialog" aria-label="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content ">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="tt-modal-addtocart mobile">
                            <div class="tt-modal-messages">
                                <i class="icon-f-68"></i> Added to cart successfully!
                            </div>
                            <a href="#" class="btn-link btn-close-popup">CONTINUE SHOPPING</a>
                            <a href="shopping_cart_02.html" class="btn-link">VIEW CART</a>
                            <a href="page404.html" class="btn-link">PROCEED TO CHECKOUT</a>
                        </div>
                        <div class="tt-modal-addtocart desctope">
                            <div class="row">
                                <div class="col-12 col-lg-6">
                                    <div class="tt-modal-messages">
                                        <i class="icon-f-68"></i> Added to cart successfully!
                                    </div>
                                    <div class="tt-modal-product">
                                        <div class="tt-img">
                                            <img src="/Store/images/loader.svg" data-src="/Store/images/product/product-01.jpg" alt="">
                                        </div>
                                        <h2 class="tt-title"><a href="product.html">Flared Shift Dress</a></h2>
                                        <div class="tt-qty">
                                            QTY: <span>1</span>
                                        </div>
                                    </div>
                                    <div class="tt-product-total">
                                        <div class="tt-total">
                                            TOTAL: <span class="tt-price">$324</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-6">
                                    <a href="#" class="tt-cart-total">
                                        There are 1 items in your cart
                                        <div class="tt-total">
                                            TOTAL: <span class="tt-price">$324</span>
                                        </div>
                                    </a>
                                    <a href="#" class="btn btn-border btn-close-popup">CONTINUE SHOPPING</a>
                                    <a href="shopping_cart_02.html" class="btn btn-border">VIEW CART</a>
                                    <a href="#" class="btn">PROCEED TO CHECKOUT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal (quickViewModal) -->





        <div class="modal  fade"  id="quickView" tabindex="-1" role="dialog" aria-label="myModalLabel" aria-hidden="true">

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
                                        <div><img   alt="" id="url"></div>
                                        <div><img  alt="" id="url2"></div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-7 col-lg-6">
                                    <div class="tt-product-single-info">
                                        <div class="tt-add-info">
                                            <ul>

                                                <li>Id:<span id="idp"></span></li>
                                                <li>Brand:<span id="marque"></span></li>
                                                <li >Availability:<span id="qtestock"></span>in Stock</li>
                                            </ul>
                                        </div>
                                        <h2 class="tt-title" id="libelle"></h2>
                                        <div class="tt-title-options" id="categorie"></div>
                                        <div class="tt-price">
                                            <span class="new-price" id="prix"></span>$
                                            <span class="old-price"></span>
                                        </div>

                                        <div class="tt-wrapper" id="description">

                                        </div>



                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>



        <!-- modalVideoProduct -->
        <div class="modal fade"  id="modalVideoProduct" tabindex="-1" role="dialog" aria-label="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-video">
                <div class="modal-content ">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-video-content">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal (ModalSubsribeGood) -->
        <div class="modal  fade"  id="ModalSubsribeGood" tabindex="-1" role="dialog" aria-label="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xs">
                <div class="modal-content ">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="icon icon-clear"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="tt-modal-subsribe-good">
                            <i class="icon-f-68"></i> You have successfully signed!
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>

    <script src="/Store/js/jquery-3.6.0.min.js"></script>
    <script src="/Store/js/jquery-3.6.0.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
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
    <script >



        $('#quickView').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget)
            var id = button.data('idp')
            var modal = $(this)


            $.ajax({
                url: '/Store/LoadQuickViewData',
                type: 'GET',
                dataType: 'json',
                data: 'idp=' + id,
                success: function (data) {
                    $("#idp").html(id);
                    $("#qtestock").html(data.qtestock);
                    $("#libelle").html(data.libelle);
                    $("#description").html(data.description);
                    $("#marque").html(data.marque);
                    $("#prix").html(data.prix);
                    $("#categorie").html(data.categorie);
                    $('#url').attr('src', '/Store/images/product/' + data.url);
                    $('#url2').attr('src', '/Store/images/product/' + data.url2);
                    console.log(data);
                },
                error: function (html, erreur, code) {
                    alert(erreur);
                }
            })

        });

    </script>

</html>
