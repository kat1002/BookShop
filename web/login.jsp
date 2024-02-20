    <%-- 
    Document   : login
    Created on : Jan 12, 2024, 8:29:02 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KAT | LOGIN</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div>
            <h1>
                Login
            </h1>
            <form action="login" method="post">
                <label for="user">Username</label> <br/>
                <input type="text" name="username" id="username" placeholder="Enter your username" required autofocus><br/>
                <label for="user">Password</label><br/>
                <input type="password" name="password" id="password" placeholder="Enter your password" required>
                <div>
                    <input name="remember" value="1" type="checkbox">
                    <label for="exampleCheck1">Remember me</label>
                </div>
                
                <c:if test = "${requestScope.loginError != null}">
                    <label> ${requestScope.loginError} </label> </br>
                </c:if>
                <button type="submit">Login</button> </br>
                <a> Does not have an account? <a  href="register.jsp">Create one</a> </a>
            </form>
            
            <%@include file="footer.jsp" %>
    </body>
</html>
