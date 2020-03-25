<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DBAccess.DataMapper" %>
<html>
<head>

    <title>Olster cupcakes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>

<body>
<div style="width: 100%; height: auto;"><img style="width: 100%; height: auto;" src="images/olskercupcakes.png"></div>
<div>
    <div style="background-color: #c6c8d1; width: 100%; height: 50px; margin-top: 10px">

        <form action="FrontController" method="post"
              style="margin-right: 15px; margin-left: 15px; float: left; clear: right;">
            <input type="hidden" name="taget" value="ordrer">
            <input type="submit" value="Ordrer">
        </form>
        <form action="FrontController" method="post" style="float: left; clear: right; margin-right: 15px;">
            <input type="hidden" name="taget" value="kunder">
            <input type="submit" value="Kunder">
        </form>
        <form action="FrontController" method="post" style="float: left; clear: right; margin-right: 15px;">
            <input type="hidden" name="taget" value="opretlogin">
            <input type="submit" value="Opret/Login">
        </form>
        <form action="FrontController" method="post" style="float: left; clear: right; margin-right: 15px;">
            <input type="hidden" name="taget" value="kurv">
            <input type="image" src="images/basket.png"
                   style="border: 0; width: 40px; height: 40px; alignment: right; margin-right: 15px;">
        </form>

    </div>
</div>

<div style="background-color: #c6c8d1; border-radius: 20px; width: auto; height: auto; margin-top: 50px">
    <h1 style="margin-left: 15px">Velkommen ${sessionScope.email} til Olsker cupcakes</h1>
    <h2 style="margin-left: 15px">Her kan du bestille cupcakes</h2>
</div>


<%-- todo man kan ikke lægge noget i kurv   --%>

<form name="føjTilKurv" action="FrontController" method="post">
    <input type="hidden" name="taget" value="føjTilKurv">

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

<div class="col-lg-1">
    <input class="form-control number-input" type="number" value="1" id="example-number-input" name="antal">
</div>



    <div style="margin-left: 5px; margin-top: 10px;" class="btn1">
        <input class="btn btn-primary" type="submit" value="Føj til kurven"> </input>
    </div>
</form>
</body>
</html>
