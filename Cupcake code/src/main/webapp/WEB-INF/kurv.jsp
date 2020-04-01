<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DBAccess.DataMapper" %>
<%@ page import="FunctionLayer.CupcakeTopBot.order" %>
<%@ page import="FunctionLayer.CupcakeTopBot.Bot" %>
<%@ page import="FunctionLayer.CupcakeTopBot.Top" %>
<%@ page import="PresentationLayer.AddKurv" %>
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
<%-- Det her er en tavel med cupcake informationer --%>
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
        <%-- todo gøre så at man kan få topping, bund, antal og en pris frem på en linje --%>
        <%-- Her skal den tage informationerne som customer har skrevet ind og den skal printe dem ud  --%>
        <c:forEach items="${sessionScope.basket} " varStatus="count">
            <tr>
                    <%-- hvilket nr af ordre --%>
                <th>${count.index+1}</th>
                    <%-- Her skriver den topping ud --%>
                <th>${DataMapper.listTop(count.index)}</th>
                    <%-- Her skriver den bunde ud --%>
                <th>${DataMapper.listBot(count.index)}</th>

                <th><%-- Her skal den skrive antal ud --%></th>
                <th><%-- Her skal den skrive prisen ud for de enkelte cupcakes --%></th>
            </tr>
        </c:forEach>
        <%-- todo gøre så der kommer en samlet pris --%>
        <tr>
            <th>IALT:</th>
            <th>
                <%-- Her er det meningen at den skal skrive den sammenlagte pris ud --%>
                <c:forEach items="${sessionScope.basket}" varStatus="Count">

                </c:forEach>
            </th>
        </tr>
        </tbody>
    </table>
</div>
<%-- todo gøre så at når man trykker på køb så bliver ordren sent til databasen og penge bliver trukket fra brugeren --%>
<%-- Her er vores knap som skal gøre at når man trykker på den vil den sende ordren til databasen og trække penge fra brugeren --%>
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


