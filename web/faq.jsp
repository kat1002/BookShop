<%-- 
    Document   : faq
    Created on : Jan 23, 2024, 11:18:53 AM
    Author     : kat1002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>KAT | FAQ</title>
	<link rel="stylesheet" href="css/faq.css" />
	<link rel="stylesheet" href="css/shop.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<body>
        <%@include file="header.jsp" %>

	<main>
		<p class="title">FAQ'S</p>
		<section class="faq-container">
			<div class="faq-one">
				<h3 class="faq-page">What is an FAQ Page?</h3>
				<div class="faq-body">
					<p>
						Lorem ipsum dolor, sit amet consectetur adipisicing
						elit. Velit saepe sequi, illum facere necessitatibus
						cum aliquam id illo omnis maxime, totam soluta
						voluptate amet ut sit ipsum aperiam. Perspiciatis,
						porro!
					</p>
				</div>
			</div>
			<hr class="hr-line" />
			<div class="faq-two">
				<h3 class="faq-page">Why do you need an FAQ page?</h3>
				<div class="faq-body">
					<p>
						Lorem ipsum dolor, sit amet consectetur adipisicing
						elit. Velit saepe sequi, illum facere necessitatibus
						cum aliquam id illo omnis maxime, totam soluta
						voluptate amet ut sit ipsum aperiam. Perspiciatis,
						porro!
					</p>
				</div>
			</div>
			<hr class="hr-line" />
			<div class="faq-three">
				<h3 h3 class="faq-page">
					Does it improves the user experience of a website?
				</h3>
				<div class="faq-body">
					<p>
						Lorem ipsum dolor, sit amet consectetur adipisicing
						elit. Velit saepe sequi, illum facere necessitatibus
						cum aliquam id illo omnis maxime, totam soluta
						voluptate amet ut sit ipsum aperiam. Perspiciatis,
						porro!
					</p>
				</div>
			</div>
		</section>
	</main>
        
        <%@include file="footer.jsp" %>

	<script src="/js/Login.js"></script>
	<script src="${pageContext.request.contextPath}/js/faq.js"></script>
	<script src="/js/Cart.js"></script>
</body>

</html>
