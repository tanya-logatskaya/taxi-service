<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<a style="margin-right: 20px; font-size: 24px" href="${pageContext.request.contextPath}/index">To main page</a>
<a style="font-size: 24px" href="${pageContext.request.contextPath}/drivers/cars">Show my cars</a>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Connect to car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Car</th>
        <th>Driver</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <select class="clazz" name="car_id" form="car">
                <c:forEach items="${cars}" var="car">
                    <option class="clazz" value="${car.id}" form="car">${car.model}</option>
                </c:forEach>
            </select>
        </td>
        <td>
            <select class="clazz" name="driver_id" form="car" required>
                <c:forEach items="${drivers}" var="driver">
                    <option class="clazz" form="car" value="${driver.id}">${driver.name}</option>
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
