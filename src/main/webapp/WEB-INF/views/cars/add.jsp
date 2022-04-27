<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<a style="margin-right: 20px; font-size: 24px" href="${pageContext.request.contextPath}/index">To main page</a>
<a style="margin-right: 20px; font-size: 24px" href="${pageContext.request.contextPath}/manufacturers/add">Add new Manufacturer</a>
<a style="font-size: 24px" href="${pageContext.request.contextPath}/cars/drivers/add">Connect to a car</a>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h1 class="table_dark">Add car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <select class="clazz" name="manufacturer_id" required form="car">
                <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option class="clazz" value="${manufacturer.id}">
                            ${manufacturer.name}
                    </option>
                </c:forEach>
            </select>
        </td>
        <td>
            <input type="submit" class="submit-button" value="Submit" name="add" form="car">
        </td>
    </tr>
</table>
</body>
</html>
