<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
    <h1 style="margin-left: 15px">Velkommen til Olsker cupcakes</h1>
    <h2 style="margin-left: 15px">Her kan du bestille cupcakes</h2>
</div>

<div style="margin-left: 5px; margin-top: 10px;  " class="dropdown">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
        Vælg bund
    </button>
    <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Chocolate</a>
        <a class="dropdown-item" href="#">Vanilla</a>
        <a class="dropdown-item" href="#">Nutmeg</a>
        <a class="dropdown-item" href="#">Pistacio</a>
        <a class="dropdown-item" href="#">Almond</a>
    </div>
</div>


<div style="margin-left: 5px; margin-top: 10px;" class="dropdown2">

    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
        Vælg topping
    </button>
    <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Chocolate</a>
        <a class="dropdown-item" href="#">Blueberry</a>
        <a class="dropdown-item" href="#">Rasberry</a>
        <a class="dropdown-item" href="#">Crispy</a>
        <a class="dropdown-item" href="#">Strawberry</a>
        <a class="dropdown-item" href="#">Rum/Raisin</a>
        <a class="dropdown-item" href="#">Orange</a>
        <a class="dropdown-item" href="#">Lemon</a>
        <a class="dropdown-item" href="#">Blue cheese</a>
    </div>
</div>

<div style="margin-left: 5px; margin-top: 10px;" class="dropdown3">

    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
        Vælg antal
    </button>
    <div class="dropdown-menu">
        <a class="dropdown-item" href="#">1</a>
        <a class="dropdown-item" href="#">2</a>
        <a class="dropdown-item" href="#">3</a>
        <a class="dropdown-item" href="#">4</a>
        <a class="dropdown-item" href="#">5</a>
        <a class="dropdown-item" href="#">6</a>
        <a class="dropdown-item" href="#">7</a>
        <a class="dropdown-item" href="#">8</a>
        <a class="dropdown-item" href="#">9</a>
        <a class="dropdown-item" href="#">10</a>
    </div>


</div>
<div style="margin-left: 5px; margin-top: 10px;" class="btn1">
    <button type="button"> Føj til kurven</button>
</div>

</body>
</html>
