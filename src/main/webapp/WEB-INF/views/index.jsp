<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Welcome!</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Choose your option:</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Show All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars">Show All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Show All Manufacturers</a></td></tr>
</table>
</body>
</html>
