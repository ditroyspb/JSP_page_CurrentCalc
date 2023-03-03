<%@ page import="ru.netology.netologyrest.controller.AuthorizationController" %>
<%--<%@ page import="ru.netology.netologyrest.controller.AuthorizationController" %>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>

<%--    <script>--%>

<%--        function getResp() {--%>
<%--            &lt;%&ndash;document.getElementById('resp').setAttribute(<%= AuthorizationController.result%>);&ndash;%&gt;--%>
<%--            document.getElementById('resp1').textContent = '<%= AuthorizationController.result%>';--%>
<%--            document.getElementById('resp1').textContent = '<%= AuthorizationController.result%>';--%>
<%--            // document.getElementById('resp1').textContent = '123';--%>
<%--            &lt;%&ndash;Iк.з. (однофазный) =&ndash;%&gt;--%>
<%--            &lt;%&ndash;<%= AuthorizationController.result%>&ndash;%&gt;--%>
<%--        }--%>
<%--    </script>--%>
</head>

<body>



    <p id="resp1">Iк.з. (однофазный) =
        <%= AuthorizationController.result%></p>




</body>
</html>

