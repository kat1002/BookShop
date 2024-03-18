<%-- 
    Document   : header
    Created on : Jan 12, 2024, 9:54:48 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
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
<html>
    <!-- HEADER -->
    <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                    <div class="container">
                            <ul class="header-links pull-left">
                                    <li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
                                    <li><a href="#"><i class="fa fa-envelope-o"></i> kat@gmail.com</a></li>
                                    <li><a href="#"><i class="fa fa-map-marker"></i> FPT University</a></li>
                            </ul>
                            <ul class="header-links pull-right">
                                    <li><a href="#"><i class="fa fa-dollar"></i> $</a></li>
                                    <c:if test="${sessionScope.account == null}">
                                        <li><a href="login.jsp"><i class="fa fa-user-o"></i> Login</a></li> 
                                    </c:if>
                                        
                                    <c:if test="${sessionScope.account != null}">
                                        <c:if test="${sessionScope.account.getRole() == 1}">
                                            <li><a href="admin"><i class="fa fa-user-o"></i> ${sessionScope.account.getUsername()}: Admin</a></li> 
                                        </c:if>  
                                        <c:if test="${sessionScope.account.getRole() == 0}">
                                            <li><a href="accountDetail.jsp"><i class="fa fa-user-o"></i> ${sessionScope.account.getUsername()}</a></li> 
                                        </c:if>
                                    </c:if>
                            </ul>
                    </div>
            </div>
            <!-- /TOP HEADER -->

            <!-- MAIN HEADER -->
            <div id="header">
                    <!-- container -->
                    <div class="container">
                            <!-- row -->
                            <div class="row">
                                    <!-- LOGO -->
                                    <div class="col-md-3">
                                            <div class="header-logo">
                                                    <a href="shop" class="logo">
                                                            <img src="media/LOGO.png" width="70" height="70" alt="">
                                                    </a>
                                            </div>
                                    </div>
                                    <!-- /LOGO -->

                                    <!-- SEARCH BAR -->
                                    <div class="col-md-6">
                                            <div class="header-search">
                                                    <form action="search" metthod="post">
<!--                                                            <select class="input-select">
                                                                    <option value="0">All Categories</option>
                                                                    <option value="1">Văn Học</option>
                                                                    <option value="2">Kinh Tế</option>
                                                                    <option value="3">Tâm Lý - KNS</option>
                                                                    <option value="4">Nuôi Dạy Con</option>
                                                                    <option value="5">Sách Thiếu Nhi</option>
                                                                    <option value="6">Tiểu Sử - Hồi Ký</option>
                                                                    <option value="7">Giáo Khoa</option>
                                                                    <option value="8">Ngoại Ngữ</option>
                                                            </select>-->
                                                            <input class="input" id="searchInput" name="searchInput" placeholder="Search here">
                                                            <button class="search-btn">Search</button>
                                                    </form>
                                            </div>
                                    </div>
                                    <!-- /SEARCH BAR -->

                                    <!-- ACCOUNT -->
                                    <div class="col-md-3 clearfix">
                                            <div class="header-ctn">

                                                    <!-- Cart -->
                                                    <div class="dropdown">
                                                            <a class="dropdown-toggle" href="cart">
                                                                    <i class="fa fa-shopping-cart"></i>
                                                                    <span`>Your Cart</span>
                                                            </a>
                                                    </div>
                                                    <!-- /Cart -->

                                                    <!-- Menu Toogle -->
                                                    <div class="menu-toggle">
                                                            <a href="#">
                                                                    <i class="fa fa-bars"></i>
                                                                    <span>Menu</span>
                                                            </a>
                                                    </div>
                                                    <!-- /Menu Toogle -->
                                            </div>
                                    </div>
                                    <!-- /ACCOUNT -->
                            </div>
                            <!-- row -->
                    </div>
                    <!-- container -->
            </div>
            <!-- /MAIN HEADER -->
    </header>
    <!-- /HEADER -->
    
</html>
