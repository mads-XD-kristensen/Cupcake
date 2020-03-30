<%--
  Created by IntelliJ IDEA.
  User: madsa
  Date: 26-03-2020
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Admin</title>
</head>
<body>
<%@include file="../includes/header.inc" %>
<h3>Her kan du tilføje saldo til en kunde</h3>
<div>
    <form action="FrontController" method="post">
        <input type="hidden" name="taget" value="addSaldo">
        <div class="form-group">
            <input type="text" name="email" placeholder="email">
        </div>
        <div class="form-group">
            <input type="number" name="saldo" placeholder="saldo">
        </div>
        <input type="submit" value="opdater saldo">
    </form>
</div>

</body>
</html>
