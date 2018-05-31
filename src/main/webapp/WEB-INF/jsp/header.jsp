<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/reset.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">
        <%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/carouFredSel.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/easing.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"></script> --%>
        <%-- <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/button.css"/>">
        --%>
    </head>
    <body style="background-color: #ccec62">
    <header>
        <div class="wrapper bac">
            <div class="logo">
                <a href="index"><img src="<c:url value="/resources/img/logo-mx.png"/>" alt="Hungry's Adda" title="Hungry's Adda" style="width:122px; margin-top: -38px;"/></a>
            </div>
            <nav>
                <ul>
                    <li><a href="index" >Home</a></li> 
                    <li><a href="shoppingCart">Cart</a></li>
                    <li><a href="javascript:void(0);" data-toggle="modal" data-target="#login-signup-modal">Login | SignUp</a></li>
                </ul>
            </nav>
        </div>
    </header>
</body>
</html>