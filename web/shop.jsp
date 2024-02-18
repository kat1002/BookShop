<%-- 
    Document   : index
    Created on : Jan 23, 2024, 10:32:15 AM
    Author     : kat1002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>KAT | HOME</title>
	<link rel="stylesheet" href="css/shop.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<body>
        <%@include file="header.jsp" %>
	<main>
		<div class="slideshow-container">
			<div class="mySlides fade">
				<img src="media/slide1.webp" style="width: 100%" />
			</div>
			<div class="mySlides fade">
				<img src="media/slide2.webp" style="width: 100%" />
			</div>
			<div class="mySlides fade">
				<img src="media/slide3.webp" style="width: 100%" />
			</div>
			<a class="prev" onclick="plusSlides(-1)">❮</a>
			<a class="next" onclick="plusSlides(1)">❯</a>
		</div>
		<p class="title" id="first">Shop Popular Categories</p>
		<div class="img-list-mobile">
			<ul class="menu">
				<div class="img-row">
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/drums.png" alt="" /><br />Drum
						</a>
					</li>
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/guitar.png" alt="" /><br />Guitar
						</a>
					</li>
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/headphone.png" alt="" /><br />Headphone
						</a>
					</li>
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/microphone.png" alt="" /><br />Microphone
						</a>
					</li>
				</div>
				<div class="img-row">
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/keyboard.png" alt="" /><br />Keyboard
						</a>
					</li>
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/software.png" alt="" /><br />Software
						</a>
					</li>
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/speaker.png" alt="" /><br />Speaker
						</a>
					</li>
					<li class="list-item">
						<a class="menu-link" href="categories.html">
							<img src="media/synthesizer.png" alt="" /><br />Synthesizer
						</a>
					</li>
				</div>
			</ul>
		</div>
		<div class="img-list-desktop">
			<ul class="menu">
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/drums.png" alt="" /><br />Drum
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/guitar.png" alt="" /><br />Guitar
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/headphone.png" alt="" /><br />Headphone
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/microphone.png" alt="" /><br />Microphone
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/keyboard.png" alt="" /><br />Keyboard
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/software.png" alt="" /><br />Software
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/speaker.png" alt="" /><br />Speaker
					</a>
				</li>
				<li class="list-item">
					<a class="menu-link" href="categories.html">
						<img src="media/synthesizer.png" alt="" /><br />Synthesizer
					</a>
				</li>
			</ul>
		</div>
		<p class="title">Hot Deals</p>
		<div class="product">
			<ul>
				<li class="product-card">
					<a href="product.jsp"><img src="media/images/vh1.png" alt="" /></a>
					<a class="menu-link" href="product.jsp">ABC Black</a>
					<p class="stock">In stock</p>
					<p class="price">$383.99</p>
				</li>
				<li class="product-card">
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
		<p class="title">Best sellers</p>
		<div class="product">
			<ul>
				<li class="product-card">
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
		<p class="title">NEW ARRIVALS</p>
		<div class="product">
			<ul>
				<li class="product-card">
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
					<a href="product.html"><img src="media/guitar-img.webp" alt="" /></a>
					<a class="menu-link" href="product.html">Ibanez Artwood AW84CE-WK Acoustic Guitar, Weathered
						Black</a>
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
		<p class="title" id="f-ar">Featured Articles</p>
		<div class="f-ar2">
			<div class="card3">
				<a href=""><img class="pod"
						src="https://blog.sweelee.com/uploads/2023/08/The-Best-Pedalboards-2023@1200x630-480x237.jpg"
						alt="" /></a>
				<p>
					<a class="menu-link" href="#">The Best Pedalboards 2023</a>
				</p>
				<p class="cmt">
					There's no easier, neater way to o...<a class="menu-link fix2" href="#">Read more</a>
				</p>
			</div>
			<div class="card3">
				<a href=""><img class="pod"
						src="https://blog.sweelee.com/uploads/2023/08/The-Best-Pedalboards-2023@1200x630-480x237.jpg"
						alt="" /></a>
				<p>
					<a class="menu-link" href="#">The Best Pedalboards 2023</a>
				</p>
				<p class="cmt">
					There's no easier, neater way to o...<a class="menu-link fix2" href="#">Read more</a>
				</p>
			</div>
			<div class="card3">
				<a href=""><img class="pod"
						src="https://blog.sweelee.com/uploads/2023/08/The-Best-Pedalboards-2023@1200x630-480x237.jpg"
						alt="" /></a>
				<p>
					<a class="menu-link" href="#">The Best Pedalboards 2023</a>
				</p>
				<p class="cmt">
					There's no easier, neater way to o...<a class="menu-link fix2" href="#">Read more</a>
				</p>
			</div>
		</div>
		<div class="b-end">
			<div class="card2">
				<p class="icon">
					<i class="fa-solid fa-truck-ramp-box"></i>
				</p>
				<p class="title2">Reliable Deliveries</p>
				<p class="cmt">Safe and fast shipping</p>
			</div>
			<div class="card2">
				<p class="icon"><i class="fa-solid fa-wallet"></i></p>
				<p class="title2">many incentives</p>
				<p class="cmt">There are several active sales</p>
			</div>
			<div class="card2">
				<p class="icon"><i class="fa-solid fa-tags"></i></p>
				<p class="title2" id="fix">Tax Included</p>
				<p class="cmt">All prices are inclusive of tax</p>
			</div>
			<div class="card2">
				<p class="icon"><i class="fa-solid fa-repeat"></i></p>
				<p class="title2">WARRANTY 30 DAYS</p>
				<p class="cmt">Simple satisfied or refunded</p>
			</div>
		</div>
	</main>
        <%@include file="footer.jsp" %>

	<script src="../js/Slide.js"></script>
</body>

</html>
