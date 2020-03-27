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

        <form action="FrontController" method="post" style="float: left; clear: right; margin-right: 15px;">
            <input type="hidden" name="taget" value="admin">
            <input type="submit" value="admin">
        </form>
        ${sessionScope.email}

    </div>
</div>