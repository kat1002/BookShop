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

            <title>KAT | BOOK</title>

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
        <h1>Edit Book</h1>
  	<hr>
	<div class="row">

            <div class="col-md-9 personal-info">
                <!-- edit form column -->
                <c:if test="${requestScope.msg != null}">

                    <div class="alert alert-info alert-dismissable">
                      <a class="panel-close close" data-dismiss="alert">×</a> 
                      <i class="fa fa-coffee"></i>
                      ${requestScope.msg}
                    </div>
                </c:if>

      
                <h3>Book info</h3>
        
                <form class="form-horizontal" action="bookManager?method=done&bookid=${requestScope.book.getId()}" method="post" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Title: </label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" name="title" placeholder="Title" value="${requestScope.book.getTitle()}">
                        </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-3 control-label">Category: </label>
                      <div class="col-lg-8">
                        <div class="ui-select">
                            
                          <select id="category" name="category" class="form-control">
                              <c:forEach items="${requestScope.WebManager.getInstance().categoryDAO.getAll()}" var="item">
                                  <c:if test="${requestScope.book.getCategory().getTitle() == item.getTitle()}">
                                      <option value="${item.getId()}" selected="selected"> ${item.getTitle()} </option>
                                  </c:if>
                                      
                                  <c:if test="${requestScope.book.getCategory().getTitle() != item.getTitle()}">
                                     <option value="${item.getId()}"> ${item.getTitle()} </option>
                                  </c:if>
                              </c:forEach>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-lg-3 control-label">Price: </label>
                      <div class="col-lg-8">
                        <input class="form-control" type="text" name ="price" placeholder="price" value="${requestScope.book.getPrice()}">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-md-3 control-label"></label>
                      <div class="col-md-8">
                        <input type="submit" class="btn btn-primary" value="Save Changes">
                        <span></span>
                        <input type="reset" class="btn btn-default" value="Cancel">
                      </div>
                    </div>
                  </form>
            </div>
      </div>
  </div>
</div>
<hr>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
