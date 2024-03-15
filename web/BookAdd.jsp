<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>KAT | BOOK</title>

            <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
            <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
            <link type="text/css" rel="stylesheet" href="css/slick.css"/>
            <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
            <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
            <link rel="stylesheet" href="css/font-awesome.min.css">
            <link type="text/css" rel="stylesheet" href="css/style.css"/>
            <link rel="stylesheet" href="css/login.css"/>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
    <h1>Edit Book</h1>
  	<hr>
	  <div class="row">
        <h3>Book info</h3>
        <form class="form-horizontal" action="bookManager?method=adddone" role="form" method="post">
          <div class="form-group">
            <label class="col-lg-3 control-label">Title: </label>
            <div class="col-lg-8">
                <input class="form-control" name ="title" type="text" placeholder="Title" value="" required>
            </div>
          </div>

          <div class="form-group">
            <label class="col-lg-3 control-label">Category: </label>
            <div class="col-lg-8">
              <div class="ui-select">
                <select id="category" name ="category" class="form-control">
                    <c:forEach items="${WebManager.getInstance().categoryDAO.getAll()}" var="category">
                        <option value="${category.getId()}">${category.getTitle()}</option>
                    </c:forEach>
                </select>
              </div>
            </div>
          </div>

            <div class="form-group">
                <label class="col-lg-3 control-label">Author: </label>
                        <div class="col-lg-8">
                            <input class="form-control" list="authors" placeholder="Select an author" name="author" required/>
                            <datalist id="authors">
                              <c:forEach items="${WebManager.getInstance().authorDAO.getAll()}" var="author">
                                    <option value="${author.getName()}">${author.getName()}</option>
                              </c:forEach>
                        </datalist>
                        </div>
                  </div>
                
                    <div class="form-group">
                <label class="col-lg-3 control-label">Publisher: </label>
                        <div class="col-lg-8">
                            <input class="form-control" list="publishers" placeholder="Select a publisher" name="publisher" required/>
                            <datalist id="publishers">
                            <c:forEach items="${WebManager.getInstance().publisherDAO.getAll()}" var="publisher">
                                      <option value="${publisher.getName()}">${publisher.getName()}</option>
                            </c:forEach>
                    </datalist>
              </div>
          </div>
            
          <div class="form-group">
            <label class="col-lg-3 control-label">Price: </label>
            <div class="col-lg-8">
                <input class="form-control" type="text" name="price" placeholder="price" value="" required="">
            </div>
          </div>
            
          <div class="form-group">
            <div class="col-md-8">
              <input type="submit" class="btn btn-primary" value="Add">
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>
        </form>
      </div>
  </div>
<hr>
        <%@include file="footer.jsp" %>
    </body>
</html>
