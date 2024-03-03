<%-- 
    Document   : cart
    Created on : Jan 23, 2024, 11:06:43 AM
    Author     : kat1002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
             <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <title>KAT | CART</title>

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
            <link rel="stylesheet" href="css/shoppingCart.css">

            <!-- Custom stlylesheet -->
            <link type="text/css" rel="stylesheet" href="css/style.css"/>
            <link rel="stylesheet" href="css/login.css"/>

            <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="shopping-cart">
            <div class="title">
                Shopping Bag
            </div>
            <c:forEach items="${requestScope.items}" var="item">
                <div class="item">
                    <div class="buttons">
                      <span class="delete-btn"></span>
                    </div>

                    <div class="image">
                        <img src="media/images/${requestScope.WebManager.getInstance().bookDAO.getBookImageById(item.getBook().getId())[0]}" width="50px" height="80px" alt="" />
                    </div>

                    <div class="description">
                      <span>${item.getBook().getTitle()}${fn:substring(book.getTitle(), 0, 50)}</span>
                      <!--<span>${item.getBook().getCategory().getTitle()}</span>-->
                      <span>${item.getBook().getCategory().getTitle()}</span>
                    </div>

                    <div class="quantity">
                      <button class="plus-btn" type="button" name="button">
                          <a>+</a>
                      </button>
                      <input type="text" name="name" value="${item.getAmount()}">
                      <button class="minus-btn" type="button" name="button">
                          <a>-</a>
                      </button>
                    </div>

                    <div class="total-price">${item.getAmount() * item.getBook().getPrice()} VND</div>
                  </div>
            </c:forEach>
            
            
            
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
