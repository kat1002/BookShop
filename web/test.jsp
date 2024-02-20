<%-- 
    Document   : test
    Created on : Feb 19, 2024, 8:37:06 PM
    Author     : kat1002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id = "bookData" class = "com.model.book.BookDAO" scope="request"></jsp:useBean>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ul>
                            <c:forEach items="${bookData.getAll()}" var="book">
                                <li class="product-card">
                                    <a href="product.jsp"><img src="media/images/${bookData.getBookImageById(book.getId())}" alt="" /></a>
					<a class="menu-link" href="product.jsp">${book.getTitle()}</a>
					<p class="stock">In stock: ${book.getStock()}</p>
					<p class="price">${book.getPrice()} đ</p>
                                </li>
                            </c:forEach>
                        </ul>
    </body>
</html>
