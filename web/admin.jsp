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

            <title>KAT | ADMIN</title>

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
            <div class="form">
            
                <h1>ADMIN PAGE</h1>
                            
                     
                    <button class="button login__submit" href="AdminBook.jsp" onclick="location.href = 'bookManager?method=view'"
>
                            <span class="button__text"> Book Manager</span>
                            <i class="button__icon fas fa-chevron-right"></i>
                    </button>				           
                    <button class="button login__submit" href="AdminAccount.jsp" onclick="location.href = 'accountManager?method=view'"
                            <span class="button__text">Account Manager</span>
                            <i class="button__icon fas fa-chevron-right"></i>
                    </button>				
                    <form class="login-form" action = "logout" method="post">            
                                <button class="button login__submit">
                                        <span class="button__text">Logout</span>
                                        <i class="button__icon fas fa-chevron-right"></i>
                                </button>				
                    </form>

                </div>
            </main>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
