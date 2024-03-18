<%-- 
    Document   : category
    Created on : Jan 12, 2024, 9:27:21 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
             <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <title>KAT | CATEGORIES</title>

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
        
	<main>
               <!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class><a href="shop">Home</a></li>
						<li><a href="#">Hot Deals</a></li>
						<li class="active"><a href="categories?categoryId=0">Categories</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="shop.jsp">Home</a></li>
							<li><a href="categories?categoryId=0">Categories</a></li>
                                                        <li><a href="categories?categoryId=${WebManager.getInstance().categoryDAO.get(categoryId).getId()}">${WebManager.getInstance().categoryDAO.get(categoryId).getTitle()}</a></li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
							
                                                    <h3 class="aside-title">Categories</h3>
                                                        <div class="checkbox-filter">
                                                                <div class="input-checkbox">
									<div></div>
                                                                        <label for="0">
                                                                            <span>    
                                                                            <a href="categories?categoryId=0">
                                                                                <span><span>
                                                                                    All
                                                                            </a>
                                                                            </span>
									</label>
								</div>
                                                            
                                                                <c:forEach items="${WebManager.getInstance().categoryDAO.all}" var="category">
                                                                    <div class="input-checkbox">
                                                                        <div></div>
                                                                        <label for="${category.getId()}">
                                                                            <span>    
                                                                            <a href="categories?categoryId=${category.getId()}">
                                                                                <span><span>
                                                                                    ${category.getTitle()}
                                                                            </a>
                                                                            </span>
									</label>
                                                                    </div>
                                                                </c:forEach>
							</div>
						</div>
						<!-- /aside Widget -->
<!--
						 aside Widget 
						<div class="aside">
							<h3 class="aside-title">Price</h3>
							<div class="price-filter">
								<div id="price-slider"></div>
								<div class="input-number price-min">
									<input id="price-min" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
								<span>-</span>
								<div class="input-number price-max">
									<input id="price-max" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
							</div>
						</div>
						 /aside Widget -->
					</div>
					<!-- /ASIDE -->

					<!-- STORE -->
					<div id="store" class="col-md-9">
<!--						 store top filter 
						<div class="store-filter clearfix">
							 <div class="store-sort">
								<label>
									Sort By:
									<select class="input-select">
										<option value="0">Popular</option>
										<option value="1">Position</option>
									</select>
								</label>

								<label>
									Show:
									<select class="input-select">
										<option value="0">20</option>
										<option value="1">50</option>
									</select>
								</label>
							</div> 
							<ul class="store-grid">
								<li class="active"><i class="fa fa-th"></i></li>
								<li><a href="#"><i class="fa fa-th-list"></i></a></li>
							</ul>
						</div>
						 /store top filter -->

						<!-- store products -->
						<div class="row">
                                                    <c:forEach items = "${requestScope.list}" var="book">
                                                        <!-- product -->
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
                                                                            <img src="media/images/${WebManager.getInstance().bookDAO.getBookImageById(book.getId())[0]}" width="263px" height="345px" alt="">
										<div class="product-label">
<!--											<span class="sale">-30%</span>-->
											<!--<span class="new">NEW</span>-->
										</div>
									</div>
									<div class="product-body">
										<p class="product-category">${book.getCategory().getTitle()}</p>
										<h3 class="product-name"><a href="product?id=${book.getId()}">
                                                                                        <span class="title" length="5"> ${fn:substring(book.getTitle(), 0, 50)}</span>
                                                                                </a></h3>
										<h4 class="product-price">${book.getPrice()} VND</h4>
										
										<div class="product-btns">
<!--											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>-->
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button id="add-to-cart" class="add-to-cart-btn" onclick="location.href = 'cartInsert?method=insert&link=categories?method=search&str=${requestScope.str}&bookid=${book.getId()}&qty=1'"><i class="fa fa-shopping-cart"></i> add to cart</button>
									</div>
								</div>
							</div>
							<!-- /product -->
                                                    </c:forEach>
							<div class="clearfix visible-sm visible-xs"></div>

						</div>
						<!-- /store products -->

<!--						 store bottom filter 
						<div class="store-filter clearfix">
							<span class="store-qty">Showing 20-100 products</span>
							<ul class="store-pagination">
								<li class="active">1</li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
							</ul>
						</div>
						 /store bottom filter -->
					</div>
					<!-- /STORE -->
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
	</main>
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