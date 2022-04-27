<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body class="table_dark">
<h1 class="table_dark top" >LOG IN</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
    <input style="text-align: start" type="text" name="login" required placeholder="login">
    <br>
    <input style="text-align: start" type="password" name="password" required placeholder="password">
    <br>
    <h4 style="color:firebrick; font-size: 16px">${errorMsg}</h4>
    <button style="font-size: 20px" type="submit">
        <a>
            Log in
        </a>
    </button>
    <br>
    <h4 style="color:#1e1a14; font-size: 14px">Don't have an account?</h4>
    <button style="font-size: 12px; min-height: 20px; min-width: 100px;" type="submit">
        <a href="${pageContext.request.contextPath}/drivers/add">
            Sign in
        </a>
    </button>
</form>
</body>
</html>
