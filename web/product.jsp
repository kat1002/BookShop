<%-- 
    Document   : product
    Created on : Jan 12, 2024, 9:59:54 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="sidebar.jsp" %>
        
        <div>
            <c:forEach items="${requestScope.data}" var="p">
                <c:set var="id" value = "${p.ID}"/>
                <div>
                    <img src="${p.image}" alt="img"/>
                    <div>${p.title}</div>
                    <div>${p.outPrice}</div>
                    <div>${p.inPrice}</div>
                    <div>${p.review}</div>
                </div>
            </c:forEach>
        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>
