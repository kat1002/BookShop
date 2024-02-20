<%-- 
    Document   : register
    Created on : Jan 12, 2024, 9:09:12 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KAT | REGISTER</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div>

            <div>
                <h1>Register Page</h1>
                <h1><a href="<c:url value="/login.jsp"/>">Login</a></h1>
            </div>

            <form action = "register" method = "post">
                <label for="user">Username</label><br/>
                <input type="text" name="username" id = "username" placeholder="Enter username" required autofocus> <br/>
                <label for="user">Password</label><br/>
                <input type="password" name="password" id="password" placeholder="Enter password" required><br/>
                <label for="user">Re-enter Password</label><br/>
                <input type="password" name="repassword" id="repassword" placeholder="Re-Enter password" required><br/>
                <label for="user">Fullname</label><br/>
                <input type="text" name="fullname" id="fullname" placeholder="Enter your fullname" required><br/>
                <label for="user">Email</label><br/>
                <input type="text" name="email" id="email" placeholder="Enter your email" required><br/>
                <button type="submit">Register</button>
                
                <c:if test="${requestScope.RegisterError != null}">
                    ${requestScope.RegisterError}
                </c:if>
            </form>

        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
