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
        

        <main role="main">
                <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
                <div class="container mt-4">
                    
                    <a></a>
                    
                    <h1 class="text-center">Shopping Cart</h1>
                    <div class="row">
                        <div class="col col-md-12">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Title</th>
                                        <th>Amount</th>
                                        <th>Book's Price</th>
                                        <th>Price</th>
                                        <th>Increase</th>
                                        <th>Decrease</th>
                                        <th>Remove</th>
                                    </tr>
                                </thead>
                                <tbody id="datarow">
                                    <c:forEach items="${requestScope.items}" var="item">
                                        <tr>
                                            <td>
                                                <img src="media/images/${requestScope.WebManager.getInstance().bookDAO.getBookImageById(item.getBook().getId())[0]}" height="40px" width="40px" class="hinhdaidien">
                                            </td>
                                            <td>${item.getBook().getTitle()}${fn:substring(book.getTitle(), 0, 50)}</td>
                                            <td class="text-right">${item.getAmount()}</td>
                                            <td class="text-right">$${item.getBookPrice()}</td>
                                            <td class="text-right">$${item.getTotalPrice()}</td>
                                            <td>
                                                <a id="delete_1" class="btn btn-danger btn-delete-sanpham" onclick="location.href = 'cartInsert?method=insert&link=cart&bookid=${item.getBook().getId()}&qty=1'">
                                                    <i class="fa fa-minus-circle" aria-hidden="true"></i> Increase
                                                </a>
                                            </td>
                                            <td>
                                                <a id="delete_1" class="btn btn-danger btn-delete-sanpham" onclick="location.href = 'cartInsert?method=decrease&link=cart&bookid=${item.getBook().getId()}&qty=1'">
                                                    <i class="fa fa-minus-circle" aria-hidden="true"></i> Decrease
                                                </a>
                                            </td>
                                            <td>
                                                <a id="delete_1" class="btn btn-danger btn-delete-sanpham" onclick="location.href = 'cartInsert?method=remove&link=cart&bookid=${item.getBook().getId()}&qty=1'">
                                                    <i class="fa fa-trash" aria-hidden="true"></i> Remove
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tr>
                                </tbody>
                            </table>

                            <a href="checkout?method=view" class="btn btn-primary btn-md">
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Check out
                            </a>
                        </div>
                    </div>
                </div>
                <!-- End block content -->
            </main>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
