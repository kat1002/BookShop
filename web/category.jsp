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
	<title>KAT | CATEGORIES</title>
	<link rel="stylesheet" href="css/categories.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<body>
    <%@include file="header.jsp" %>
	<main>
		<p class="title">CATEGORIES</p>
		<div class="row">
			<div class="column1">
				<div id="categories-refinement-list" class="refinement-list">
					<h3>Categories</h3>
					<ul class="list">
						<li>
							<label class="container">
								Drum <input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Guitar <input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Headphone
								<input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Microphone
								<input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Keyboard <input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Software <input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Speaker <input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Synthesizer
								<input type="radio" name="radio" />
								<span class="checkmark"></span>
							</label>
						</li>
					</ul>
				</div>
				<div id="price-refinement-list" class="refinement-list">
					<h3>Price</h3>
					<ul class="list">
						<li>
							<label class="container">
								Option 1 <input type="checkbox" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Option 2 <input type="checkbox" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Option 3 <input type="checkbox" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Option 4 <input type="checkbox" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Option 5 <input type="checkbox" />
								<span class="checkmark"></span>
							</label>
						</li>
						<li>
							<label class="container">
								Option 6 <input type="checkbox" />
								<span class="checkmark"></span>
							</label>
						</li>
					</ul>
				</div>
			</div>
			<div class="column2">
				<div class="product">
					<ul>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
					</ul>
				</div>
				<div class="product">
					<ul>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
					</ul>
				</div>
				<div class="product">
					<ul>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
						<li class="product-card">
							<a href="product.html"><img src="/media/guitar-img.webp" alt="" /></a>
							<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar,
								Weathered Black</a>
							<p class="star">
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								<i class="fa-solid fa-star" style="color: #9f8a46"></i>
								(1)
							</p>
							<p class="stock">In stock</p>
							<p class="price">$383.99</p>
						</li>
					</ul>
				</div>
				<div class="page-btn">
					<a href="#" class="previous">Previous</a>
					<a href="#" class="next1">Next</a>
				</div>
				<div class="center">
					<div class="pagination">
						<a href="#">&#8249;</a>
						<a href="#">&laquo;</a>
						<a href="#">1</a>
						<a href="#" class="active">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a href="#">6</a>
						<a href="#">&raquo;</a>
						<a href="#">&#8250;</a>
					</div>
				</div>
			</div>
		</div>
	</main>
        <%@include file="footer.jsp" %>
	<script src="${pageContext.request.contextPath}/js/uncheck.js"></script>
</body>

</html>