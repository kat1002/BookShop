<%-- 
    Document   : header
    Created on : Jan 12, 2024, 9:54:48 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
	<link rel="stylesheet" href="css/shop.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<html>
    <header>
		<div class="row-menu1">
			<ul class="menu">
				<li class="menu-item">
                                    <a href = "cart.jsp">
					<button class="open-button menu-link" onclick="">
						<i class="fa-solid fa-cart-shopping"></i> My Cart
					</button>
                                    </a>
				</li>
				<li>
					<a href="login.jsp">
						<button class="open-button menu-link" onclick="">
							<i class="fa-solid fa-user"></i> Login
						</button>
					</a>
				</li>
			</ul>
			
		</div>
		<div class="row-menu2">
			<a href="shop.jsp"><img class="logo" src="media/LOGO.png" alt="logo" /></a>
			<ul class="menu">
				<li class="menu-item">
					<a class="menu-link" href="shop.jsp">HOME</a>
				</li>
				<li class="menu-item">
					<a class="menu-link" href="contact.jsp">CONTACT</a>
				</li>
				<li class="menu-item">
					<a class="menu-link" href="faq.jsp">HELP / FAQ</a>
				</li>
				<li class="menu-item">
					<a class="menu-link" href="category.jsp">CATEGORIES</a>
				</li>
				<li class="menu-item">
					<a class="menu-link" href="about.jsp">ABOUT US</a>
				</li>
			</ul>
			<form class="search-button">
				<input type="text" placeholder="Search..." />
				<button><i class="fa fa-search"></i></button>
			</form>
		</div>
	</header>
</html>
