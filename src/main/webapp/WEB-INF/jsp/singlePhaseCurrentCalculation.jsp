<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>

<h3> Расчет токов однофазного короткого замыкания </h3>
<body>
    <form method="POST" action="singlephasecurrentcalc">

        <table>

            <tr>
                <td>Введите мощность трансформатора, кВА</td>
                <td>
                    <select name="transPower">
                        <option value="1.25">1.25</option>
                        <option value="2.5">2.5</option>
                        <option value="4">4</option>
                        <option value="10">10</option>
                        <option value="16">16</option>
                        <option selected value="25">25</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите длину линии, м</td>
                <td><input type="number" name="cableLength"></td>
            </tr>

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
                <td>Введите сечение кабеля</td>
                <td>
                    <select name="cableSection">
                        <option value="2,5">2.5</option>
                        <option selected value="4">4</option>
                        <option value="6">6</option>
                        <option value="10">10</option>
                        <option value="16">16</option>
                        <option value="25">25</option>
                        <option value="35">35</option>
                        <option value="50">50</option>
                        <option value="70">70</option>
                        <option value="95">95</option>
                        <option value="120">120</option>
                        <option value="150">150</option>
                        <option value="185">185</option>
                        <option value="240">240</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td align="right" colspan="2"><input type="submit" value="Отправить"></td>
            </tr>
        </table>


        <table hidden="until-found"></table>
        <tr>
            <td>добавить участок кабеля</td>
            <td>
                <select name="addCable">
                    <option value="true">Да</option>
                    <option value="false">Нет</option>
                </select>
            </td>
        </tr>
<%--        --%>
<%--        <%if add %>--%>

    </form>
</body>
</html>