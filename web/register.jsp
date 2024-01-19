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
        <title>Register</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div>

            <div>
                <h1>Register Page</h1>
                <h1><a href="<c:url value="/login.jsp"/>">Login</a></h1>
            </div>

            <form>
                <label for="user">Username</label><br/>
                <input type="text" name="username" id = "username" placeholder="Enter username" required autofocus> <br/>
                <label for="user">Password</label><br/>
                <input type="text" name="pass" id="pass" placeholder="Enter password" required><br/>
                <label for="user">Re-enter Password</label><br/>
                <input type="text" name="pass" id="pass" placeholder="Enter password" required><br/>
                <button type="submit">Register</button>
            </form>

        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
