<%-- 
    Document   : index
    Created on : Jan 23, 2024, 10:32:15 AM
    Author     : kat1002
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
             <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <title>KAT | HOME</title>

            <!-- Google font -->
            <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

            <!-- Bootstrap -->
            <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

            <!-- Slick -->
            <link type="text/css" rel="stylesheet" href="css/slick.css"/>
            <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

            <!-- nouislider -->
            <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
            
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	
            <!-- Font Awesome Icon -->
            <link rel="stylesheet" href="css/font-awesome.min.css">

            <!-- Custom stlylesheet -->
            <link type="text/css" rel="stylesheet" href="css/style.css"/>

            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
</head>

<body>
		<%@include file="header.jsp" %>

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="shop">Home</a></li>
						<li><a href="#">Hot Deals</a></li>
						<li><a href="categories?categoryId=0">Categories</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">New Products</h3>
                                                        
<!--							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab1">Laptops</a></li>
									<li><a data-toggle="tab" href="#tab1">Smartphones</a></li>
									<li><a data-toggle="tab" href="#tab1">Cameras</a></li>
									<li><a data-toggle="tab" href="#tab1">Accessories</a></li>
								</ul>
							</div>-->
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
                                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(5)}" var="book">
                                                                                <!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="345px" height="345px" alt="">
												<div class="product-label">
<!--													<span class="sale">-30%</span>-->
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">${book.getCategory().getTitle()}</p>
												<h3 class="product-name"><a href="product?id=${book.getId()}">${fn:substring(book.getTitle(), 0, 50)}</a></h3>
												<p>${book.getAuthor().getName()}</p>
												<h4 class="product-price">${book.getPrice()} VND </h4>
												<div class="product-btns">
<!--													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>-->
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
										<!-- /product -->
                                                                            </c:forEach>
                                                                                
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Top selling</h3>
<!--							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab2">Laptops</a></li>
									<li><a data-toggle="tab" href="#tab2">Smartphones</a></li>
									<li><a data-toggle="tab" href="#tab2">Cameras</a></li>
									<li><a data-toggle="tab" href="#tab2">Accessories</a></li>
								</ul>
							</div>-->
						</div>
					</div>
					<!-- /section title -->

                                        
					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
                                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(5)}" var="book">
                                                                                <!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="345px" height="345px" alt="">
												<div class="product-label">
<!--													<span class="sale">-30%</span>-->
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">${book.getCategory().getTitle()}</p>
												<h3 class="product-name"><a href="product?id=${book.getId()}">${fn:substring(book.getTitle(), 0, 50)}</a></h3>
												<p>${book.getAuthor().getName()}</p>
												<h4 class="product-price">${book.getPrice()} VND </h4>
												<div class="product-btns">
<!--													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>-->
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
										<!-- /product -->
                                                                            </c:forEach>
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div>
                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(3)}" var="book">
                                                                <!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="60px" height="60px" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">${book.getTitle()}</a></h3>
										<h4 class="product-price"> ${book.getPrice()} VND</h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>
							</div>
                                                    
                                                        <div>
                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(3)}" var="book">
                                                                <!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="60px" height="60px" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">${book.getTitle()}</a></h3>
										<h4 class="product-price"> ${book.getPrice()} VND</h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(3)}" var="book">
                                                                <!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="60px" height="60px" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">${book.getTitle()}</a></h3>
										<h4 class="product-price"> ${book.getPrice()} VND</h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>
							</div>
                                                    
                                                        <div>
                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(3)}" var="book">
                                                                <!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="60px" height="60px" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">${book.getTitle()}</a></h3>
										<h4 class="product-price"> ${book.getPrice()} VND</h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs"></div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(3)}" var="book">
                                                                <!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="60px" height="60px" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">${book.getTitle()}</a></h3>
										<h4 class="product-price"> ${book.getPrice()} VND</h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>
							</div>
                                                        <div>
                                                            <c:forEach items="${WebManager.getInstance().bookDAO.getRandomBooks(3)}" var="book">
                                                                <!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="60px" height="60px" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">${book.getTitle()}</a></h3>
										<h4 class="product-price"> ${book.getPrice()} VND</h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<%@include file="footer.jsp" %>
                
		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>

</html>
