<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>

    <script>
        function myFunction() {
            document.getElementById('paragraph').innerHTML = 'Привет, ДжаваСкрипт';
        }
    </script>

    <script>
        function showHide(cableForm) {
            //Если элемент с id-шником element_id существует
            if (document.getElementById(cableForm)) {
                //Записываем ссылку на элемент в переменную obj
                var obj = document.getElementById(cableForm);
                //Если css-свойство display не block, то:
                if (obj.style.display != "block") {
                    obj.style.display = "block"; //Показываем элемент
                }
                else obj.style.display = "none"; //Скрываем элемент
            }
        }
    </script>

</head>

<h3> Расчет токов однофазного короткого замыкания </h3>

<body>
    <p id="cableForm"></p>
    <form style="display: block" method="POST" action="singlephasecurrentcalc">

        <tr>
            <td>Введите материал кабеля</td>
            <td>
                <select name="cableMaterial">
                    <option value="cu">Медь</option>
                    <option value="al">Алюминий</option>
                </select>
            </td>
        </tr>

        <tr>
            <td align="right" colspan="2"><input type="submit" value="Отправить"></td>
        </tr>

    </form>

    <p id="paragraph"></p>
    <button onclick="myFunction()">Показать форму</button>

</body>
</html>