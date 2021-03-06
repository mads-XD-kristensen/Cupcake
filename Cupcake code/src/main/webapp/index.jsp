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
    <%-- Denne "div class er noget bootstrap" --%>
    <div class="form-group col-lg-2">
        <%-- Vores dropdown menu --%>
        <select required class="form-control number-input" id="topMenu" name="top">
            <option value="" disabled selected>Vælg top</option>
            <%-- forEach henter vores cupcake tops via collectTopping --%>
            <c:forEach var="element" items="${DataMapper.collectTopping()}" varStatus="Count">
                <option value="${Count.index +1}">
                        ${element.getName()}
                </option>
            </c:forEach>
        </select>
    </div>

    <%-- Det samme men for cupcake bunde --%>
    <div class="form-group col-lg-2">
        <select required class="form-control number-input" id="botMenu" name="bot">
            <option value="" disabled selected>Vælg bund</option>
            <c:forEach var="element" items="${DataMapper.collectBotting()}" varStatus="Count">
                <option value="${Count.index +1}">
                        ${element.getName()}
                </option>
            </c:forEach>
        </select>
    </div>
    <%-- Her vælger customer antal af cupcakes --%>
    <div class="col-lg-1">
        <input class="form-control number-input" type="number" value="1" id="example-number-input" name="antal">
    </div>
    <%-- Submit button. Deres ordre bliver sat på sessionScope så vi kan bruge den i kurv --%>
    <div>
        <button class="btn btn-primary" type="submit" value="Submit">Føj til kurven</button>
    </div>

    ${sessionScope.basket}
</form>
</body>
</html>
