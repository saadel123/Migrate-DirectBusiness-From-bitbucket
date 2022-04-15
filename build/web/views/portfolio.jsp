<%-- 
    Document   : portfolio
    Created on : Mar 18, 2021, 5:06:42 PM
    Author     : saad
--%>

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
			<li><a href="index.html">Home</a></li>
			<li>Portfolio</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container-fluid-custom container-fluid-custom-mobile-padding">
			<h1 class="tt-title-subpages noborder">PORTFOLIO</h1>
			<div class="tt-portfolio-masonry">
				<div class="tt-filter-nav">
					<div class="button active" data-filter="*">ALL</div>
					<div class="button" data-filter=".sort-value-01">WOMEN</div>
					<div class="button" data-filter=".sort-value-02">MEN </div>
				</div>
				<div class="tt-portfolio-content layout-default tt-grid-col-4  tt-add-item">
					<div class="element-item sort-value-01">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-01.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-01.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-02">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-02.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-02.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-02">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-03.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-03.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-01">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-04.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-04.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-02">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-05.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-05.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-02">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-07.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-07.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-01">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-08.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-08.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
					<div class="element-item sort-value-01">
						<figure>
							<img src="/Store/images/portfolio/portfolio-col-grid-four-img-06.jpg" alt="">
							<figcaption>
								<h6 class="tt-title"><a href="#">TITLE</a></h6>
								<p>
									Lorem ipsum dolor sit amet cons.
								</p>
								<a href="/Store/images/portfolio/portfolio-col-grid-four-img-06.jpg" class="tt-btn-zomm"></a>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
        
     
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
									<img src="images/loader.svg" data-src="images/product/product-01.jpg" alt="">
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
								<div><img src="images/loader.svg" data-src="images/product/product-01.jpg" alt=""></div>
								<div><img src="images/loader.svg" data-src="images/product/product-01-02.jpg" alt=""></div>
								<div><img src="images/loader.svg" data-src="images/product/product-01-03.jpg" alt=""></div>
								<div><img src="images/loader.svg" data-src="images/product/product-01-04.jpg" alt=""></div>
								<div>
									<div class="tt-video-block">
										<a href="#" class="link-video"></a>
										<video class="movie" src="video/video.mp4" poster="video/video_img.jpg"></video>
									</div>
								</div>
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
								<h2 class="tt-title">Cotton Blend Fleece Hoodie</h2>
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
								<div class="tt-swatches-container">
									<div class="tt-wrapper">
										<div class="tt-title-options">SIZE</div>
										<form class="form-default">
											<div class="form-group">
												<select class="form-control">
													<option>21</option>
													<option>25</option>
													<option>36</option>
												</select>
											</div>
										</form>
									</div>
									<div class="tt-wrapper">
										<div class="tt-title-options">COLOR</div>
										<form class="form-default">
											<div class="form-group">
												<select class="form-control">
													<option>Red</option>
													<option>Green</option>
													<option>Brown</option>
												</select>
											</div>
										</form>
									</div>
									<div class="tt-wrapper">
										<div class="tt-title-options">TEXTURE:</div>
										<ul class="tt-options-swatch options-large">
											<li><a class="options-color" href="#">
												<span class="swatch-img">
													<img src="images/loader.svg" data-src="images/custom/texture-img-01.jpg" alt="">
												</span>
												<span class="swatch-label color-black"></span>
											</a></li>
											<li class="active"><a class="options-color" href="#">
												<span class="swatch-img">
													<img src="images/loader.svg" data-src="images/custom/texture-img-02.jpg" alt="">
												</span>
												<span class="swatch-label color-black"></span>
											</a></li>
											<li><a class="options-color" href="#">
												<span class="swatch-img">
													<img src="images/loader.svg" data-src="images/custom/texture-img-03.jpg" alt="">
												</span>
												<span class="swatch-label color-black"></span>
											</a></li>
											<li><a class="options-color" href="#">
												<span class="swatch-img">
													<img src="images/loader.svg" data-src="images/custom/texture-img-04.jpg" alt="">
												</span>
												<span class="swatch-label color-black"></span>
											</a></li>
											<li><a class="options-color" href="#">
												<span class="swatch-img">
													<img src="images/loader.svg" data-src="images/custom/texture-img-05.jpg" alt="">
												</span>
												<span class="swatch-label color-black"></span>
											</a></li>
										</ul>
									</div>
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
<script src="/Store/external/jquery/jquery.min.js"></script>
<script src="/Store/external/bootstrap/js/bootstrap.min.js"></script>
<script src="/Store/external/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<script src="/Store/external/slick/slick.min.js"></script>
<script src="/Store/external/panelmenu/panelmenu.js"></script>
<script src="/Store/external/isotope/imagesloaded.js"></script>
<script src="/Store/external/isotope/isotope.pkgd.min.js"></script>
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
