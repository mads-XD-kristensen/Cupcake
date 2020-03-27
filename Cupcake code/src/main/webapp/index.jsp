<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DBAccess.DataMapper" %>
<html>
<head>

    <title>Olsker cupcakes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>

<body>
<%@include file="includes/header.inc" %>



<div style="background-color: #c6c8d1; border-radius: 20px; width: auto; height: auto; margin-top: 50px">
    <h1 style="margin-left: 15px">Velkommen ${sessionScope.email} til Olsker cupcakes</h1>
    <h2 style="margin-left: 15px">Her kan du bestille cupcakes</h2>
</div>



<form action="FrontController" method="post">
    <input type="hidden" name="taget" value="addToBasket">


    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="topMenu" name="top">
            <option value="" disabled selected>Vælg top</option>
            <c:forEach var="i" items="${DataMapper.collectTopping()}" varStatus="Count">
                <option value="${Count.index +1}">
                        ${i.getName()}
                </option>
            </c:forEach>
        </select>
    </div>

    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="botMenu" name="bot">
            <option value="" disabled selected>Vælg bund</option>
            <c:forEach var="i" items="${DataMapper.collectBotting()}" varStatus="Count">
                <option value="${Count.index +1}">
                        ${i.getName()}
                </option>
            </c:forEach>
        </select>
    </div>

    <div class="col-lg-1">
        <input class="form-control number-input" type="number" value="1" id="example-number-input" name="antal">
    </div>


    <div>
        <button class="btn btn-primary" type="submit" value="Submit">Føj til kurven</button>
    </div>


    ${sessionScope.basket}
</form>
</body>
</html>
