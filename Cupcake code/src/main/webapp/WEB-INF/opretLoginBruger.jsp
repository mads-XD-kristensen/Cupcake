<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Opret eller login</title>
    <style>
        .text {
            margin-left: 15px;
        }

        .pic {
            width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<%@include file="../includes/header.inc" %>


<div style="background-color: #c6c8d1; border-radius: 20px; width: auto; height: auto; margin-top: 5px;"><br>
    <h1 class="text">Velkommen til Olsker cupcakes</h1>
    <br>
    <h2 class="text">Login</h2>
    <table class="text">
        <tr>
            <td></td>
            <td>
                <form name="login" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="login">
                    Email:<br>
                    <input type="text" name="email" placeholder="someone@nowhere.com">
                    <br>
                    Password:<br>
                    <input type="password" name="password" placeholder="sesam">
                    <br>
                    <input type="submit" value="Submit">
                </form>
            </td>
        </tr>
    </table>
    <br>
    <h2 class="text">Eller opret dig som bruger her</h2>
    <table class="text">
        <tr>

            <td></td>
            <td>
                <form name="register" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="register">
                    Email:<br>
                    <input type="text" name="email" placeholder="someone@nowhere.com">
                    <br>
                    Password:<br>
                    <input type="password" name="password1" placeholder="sesam">
                    <br>
                    Gentag Password:<br>
                    <input type="password" name="password2" placeholder="sesam">
                    <br>
                    <input type="submit" value="Submit">
                </form>
            </td>
        </tr>
    </table>
</div>

</body>

</html>
