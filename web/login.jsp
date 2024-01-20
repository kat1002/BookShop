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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div>
            <div>
            <h1>Login Page</h1>
            <h1><a href="<c:url value="/register.jsp"/>">Register</a></h1>
            </div>
            <form>
                <label for="user">Phone/Email</label> <br/>
                <input type="text" name="user" id="user" placeholder="username" required autofocus><br/>
                <label for="user">Password</label><br/>
                <input type="password" name="pass" id="pass" placeholder="password" required>
                <div>
                    <input name="remember" value="1" type="checkbox">
                    <label for="exampleCheck1">Remember me</label>
                </div>

                <button type="submit">Login</button>
            </form>
    </body>
</html>
