<%-- 
    Document   : product
    Created on : Jan 12, 2024, 9:59:54 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KAT | PRODUCT</title>
	<link rel="stylesheet" href="css/product.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    </head>
    <body>
        <%@include file="header.jsp" %>	
        <main>
		<div class="board">
			<div class="container">
                            <c:forEach items="${requestScope.images}" var="image">
				<img class="imgGallery" src="media/images/${image}" alt="" onclick="myFunction()" />
                            </c:forEach>
                        </div>
			<div class="content">
                            <c:forEach items="${requestScope.images}" var="image">
                                <div id = "img">
                                    <img class="imgcontent" src="media/images/${requestScope.image}" />
                                </div>
                            </c:forEach>
				
			</div>
		</div>
		<div class="row">
			<div class="column1">
                                <p class="product-name content-product-h3">
                                        ${requestScope.book.getTitle()}
                                </p>
				<p class="product-name fix3">Details</p>
				<table>
					<tr>
						<th>Category:</th>
						<td>${requestScope.book.getCategory().getName()}</td>
					</tr>
					<tr>
						<th>Publisher:</th>
						<td>${requestScope.book.getPublisher().getName()}</td>
					</tr>
					<tr>
						<th>Author:</th>
						<td>${requestScope.book.getAuthor().getName()}</td>
					</tr>
					<tr>
						<th>In stock:</th>
						<td>${requestScope.book.getStock()}</td>
					</tr>
				</table>
			</div>
			<div class="column2">
				<div class="background">
					<div style="display: flex">
						<p class="price-product price">${requestScope.book.getPrice()} VND</p>
					</div>
					<p class="qty">
						Qty:
						<input class="qty-value" type="number" min="1" value="1" />
					</p>
					<button class="button-12 btn-cart" role="button">
						<i class="fa-solid fa-cart-shopping"></i> Add to Cart
					</button>
				</div>
				<div class="background">
					<p class="product-name">About This Product</p>
					<p class="cmt2">
						Ibanez's Artwood line has a lot of fantastic
						features at a reasonable cost. The guitar is made
						with contemporary features while retaining classic
						elements and utilizing the most recent advancements
						in guitar building technology. The AW84CE boasts the
						distinctive dreadnought cutaway body with binding
						around the guitar's edge, giving it a stunning
						aesthetic. It is made to the highest Ibanez
						standards using only the finest materials. Rosewood
						back and sides, a mahogany neck with a light gloss
						finish, and a mahogany top provide an organic feel
						and sound. The Ibanez Advantage Bridge string stop
						is simple to use, keeps the stop and strings in
						place by preventing the pin from being pulled out
						too far. includes a lock set and Fishman's AEQ-S2
						electronics.
					</p>
				</div>
			</div>
		</div>
	</main>
        <script src="${pageContext.request.contextPath}/js/product.js"></script>
        <%@include file="footer.jsp" %>
    </body>
</html>
