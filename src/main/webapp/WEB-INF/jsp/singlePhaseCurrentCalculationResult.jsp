<%@ page import="ru.netology.netologyrest.controller.AuthorizationController" %>
<%--<%@ page import="ru.netology.netologyrest.controller.AuthorizationController" %>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>


    <style>
        .block1 {
            width: 1170px;
            max-width: 1170px;
            min-height: 2000px;
            padding-top: 100px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 16px;
            padding-right: 16px;
            background: #f6f6f5;
            /*padding: 5px;*/
            /*float: left;*/
            /*position: relative;*/
            top: 30px;
            left: 60px;
            text-align: center;
        }

        body{
            /*background-color:#f6f6f5;*/
            /*color:yellow;*/
        }

    </style>

</head>

<body>

    <p id="resp1">I<sub>к.з.</sub><sup>(1)</sup> =
        <%= AuthorizationController.result%>
     А </p>

</body>
</html>

