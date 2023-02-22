<%
String header = "Apache Tomcat";
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>First JSP App</title>
    </head>
    <body>
        <h2><%= header %></h2>
        <p>Today <%= new java.util.Date() %></p>

        <%= request.getRequestURL()%>
        <form name="test" method="post" action="input1.php">
            <p><b>Field 1:</b><br>
             <input type="text" size="20">
            </p>
            <p><b>Field 2:</b><br>
             <input type="text" size="20">
            </p>
            <p><b>Field 3:</b><br>
            <input type="text" size="20">
            </p>
            <p><b>Какой браузер используете:</b><Br>
             <input type="radio" name="browser" value="ie"> Internet Explorer<Br>
             <input type="radio" name="browser" value="opera"> Opera<Br>
             <input type="radio" name="browser" value="firefox"> Firefox<Br>
            </p>
            <p>Комментарий<Br>
             <textarea name="comment" cols="40" rows="3"></textarea></p>
            <p><input type="submit" value="Отправить данные">
             <input type="reset" value="Очистить формы"></p>
           </form>

    </body>
</html>