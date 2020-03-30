<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DBAccess.DataMapper" %>
<%@ page import="FunctionLayer.CupcakeTopBot.order" %>
<%@ page import="FunctionLayer.CupcakeTopBot.Bot" %>
<%@ page import="FunctionLayer.CupcakeTopBot.Top" %>
<%@ page import="PresentationLayer.UdregnBeloeb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <title>Kurv</title>


</head>

<body>
<%@include file="../includes/header.inc" %>
<div style="background-color: #c6c8d1; border-radius: 20px; width: auto; height: auto; margin-top: 50px">
    <h1 style="margin-left: 15px">Velkommen til Olsker cupcakes</h1>
    <h2 style="margin-left: 15px">Her kan du se din kurv</h2>

</div>

<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Top</th>
            <th>Bund</th>
            <th>Antal</th>
            <th>Pris</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="element" items="${sessionScope.basket} " varStatus="count">
            <tr>
                <th>${count.index+1}</th>
                <th>${DataMapper.collectTopping().get(element.top)}</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </c:forEach>

        <tr>
            <th>IALT:</th>
            <th>
                <c:forEach items="${sessionScope.basket}" varStatus="Count">

                </c:forEach>
            </th>
        </tr>
        </tbody>
    </table>
</div>

<div class="col-lg-6>">
    <form action="FrontController" method="post">
        <input type="hidden" name="taget" value="koeb">
        <div class="text-center">
            <button class="btn btn-success " type="submit">Køb</button>
        </div>
    </form>
</div>
</body>
</html>


