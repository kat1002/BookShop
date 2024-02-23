    <%-- 
    Document   : login
    Created on : Jan 12, 2024, 8:29:02 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
             <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <title>KAT | LOGIN</title>

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
            <div class="container">
                <div class="screen">
                    <div class="form">
                        <form class="login-form" action = "login" method="post">
                                    <div class="login__field">
                                        <i class="login__icon fas fa-user"></i> 
                                            <input type="text" class="login__input" id="username" name = "username" placeholder="Username">
                                    </div>
                                    <div class="login__field">
                                        <i class="login__icon fas fa-lock"></i> 
                                            <input type="password" class="login__input" id="password" name = "password" placeholder="Password">
                                    </div>

                                    <c:if test = "${requestScope.loginError != null}">
                                        <label> ${requestScope.loginError} </label> </br>
                                    </c:if>
                                    <button class="button login__submit">
                                            <span class="button__text">Log In Now</span>
                                            <i class="button__icon fas fa-chevron-right"></i>
                                    </button>				
                            </form> 
                        
                        Does not have an account? <a href="register.jsp"> Create one </a>
                        
                            
<!--                            <div class="social-login">
                                    <h3>log in via</h3>
                                    <div class="social-icons">
                                            <a href="#" class="social-login__icon fab fa-instagram"></a>
                                            <a href="#" class="social-login__icon fab fa-facebook"></a>
                                            <a href="#" class="social-login__icon fab fa-twitter"></a>
                                    </div>
                            </div>-->
                    </div>		
                </div>
            </div>
            
            <%@include file="footer.jsp" %>
    </body>
</html>
