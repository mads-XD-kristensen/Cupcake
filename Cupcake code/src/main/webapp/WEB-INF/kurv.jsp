<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DBAccess.DataMapper" %>
<%@ page import="PresentationLayer.UdregnBeløb" %>
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

        <%-- todo Giver en fejl når man prøver at tilgå fra hjemmesiden --%>

        <c:forEach var="i" items="${sessionScope.basket} " varStatus="count">
            <tr>
                <th scope="row">${count.index}</th>
                <td>${DataMapper.collectTopping().get(i.top).getName}</td>
                <td>${DataMapper.collectBotting().get(i.bot).getName()}</td>
                <td><input class="form-control number-input" type="number" value="${i.antal}"
                           id="example-number-input" name="number"></td>
                <td>

                        ${(DataMapper.collectTopping().get(i.top).price() + DataMapper.collectBotting().get(i.bot).price()) * i.antal}
                </td>

            </tr>

        </c:forEach>
        <tr>
            <th>I ALT:</th>
            <th></th>
            <th></th>
            <th></th>
            <th>
                <c:forEach var="i" items="${sessionScope.basket}" varStatus="Count">

                    ${UdregnBeløb.beløbIAlt(DataMapper.collectTopping().get(i.top).price(), DataMapper.collectBotting().get(i.bot).price(), i.antal)}
                </c:forEach>
                ${UdregnBeløb.beløb()}
            </th>
            <th></th>
        </tr>
        </tbody>

    </table>
</div>
<div class="col-lg-3"></div>
<div class="col-lg-6>">

    <form action="FrontController" method="post">
        <input type="hidden" name="taget" value="køb">
        <c:forEach var="i" items="${sessionScope.basket}" varStatus="count">

            ${UdregnBeløb.beløbIAlt(DataMapper.collectTopping().get(i.top).price(), DataMapper.collectBotting().get(i.bot).price(), i.antal)}
        </c:forEach>
        <input type="hidden" name="price" value="${UdregnBeløb.beløb()}">
        <div class="text-center">
            <button class="btn btn-success " type="submit">Køb</button>
        </div>
    </form>
</div>
<div class="col-lg-3"></div>

</body>


</html>


