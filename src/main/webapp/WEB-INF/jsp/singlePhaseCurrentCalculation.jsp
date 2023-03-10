<%@ page import="ru.netology.netologyrest.controller.AuthorizationController" %>
<%--<%@ page import="ru.netology.netologyrest.controller.AuthorizationController" %>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>

    <script>

        function getResp() {
            document.getElementById('resp1').textContent = '<%= AuthorizationController.result%>';
            document.getElementById('resp1').textContent = '<%= AuthorizationController.result%>';
        }

        function showCable() {
            if (document.getElementById('cableForm_9').style.display === "table") {
                document.getElementById('cableForm_10').style.display = "table";
                document.getElementById('cableLength_10').setAttribute("required", "")
                document.getElementById('addCable').style.display = "none";
            } else if (document.getElementById('cableForm_8').style.display === "table") {
                document.getElementById('cableForm_9').style.display = "table";
                document.getElementById('cableLength_9').required = true;
            } else if (document.getElementById('cableForm_7').style.display === "table") {
                document.getElementById('cableForm_8').style.display = "table";
                document.getElementById('cableLength_8').required = true;
            } else if (document.getElementById('cableForm_6').style.display === "table") {
                document.getElementById('cableForm_7').style.display = "table";
                document.getElementById('cableLength_7').required = true;
            } else if (document.getElementById('cableForm_5').style.display === "table") {
                document.getElementById('cableForm_6').style.display = "table";
                document.getElementById('cableLength_6').required = true;
            } else if (document.getElementById('cableForm_4').style.display === "table") {
                document.getElementById('cableForm_5').style.display = "table";
                document.getElementById('cableLength_5').required = true;
            } else if (document.getElementById('cableForm_3').style.display === "table") {
                document.getElementById('cableForm_4').style.display = "table";
                document.getElementById('cableLength_4').required = true;
            } else if (document.getElementById('cableForm_2').style.display === "table") {
                document.getElementById('cableForm_3').style.display = "table";
                document.getElementById('cableLength_3').required = true;
            } else {
                // document.getElementById('cableForm_2').style.display = "block";
                document.getElementById('cableForm_2').style.display = "table";
                document.getElementById('cableLength_2').required = true;
                document.getElementById('hideButton').style.display = "block";
            }
        }

        function hideCable() {
            if (document.getElementById('cableForm_10').style.display === "table") {
                document.getElementById('cableForm_10').style.display = "none";
                document.getElementById('cableLength_10').required = false;
                document.getElementById('addCable').style.display = "table";
            } else if (document.getElementById('cableForm_9').style.display === "block") {
                document.getElementById('cableForm_9').style.display = "none";
                document.getElementById('cableLength_9').required = false;
            } else if (document.getElementById('cableForm_8').style.display === "table") {
                document.getElementById('cableForm_8').style.display = "none";
                document.getElementById('cableLength_8').required = false;
            } else if (document.getElementById('cableForm_7').style.display === "table") {
                document.getElementById('cableForm_7').style.display = "none";
                document.getElementById('cableLength_7').required = false;
            } else if (document.getElementById('cableForm_6').style.display === "table") {
                document.getElementById('cableForm_6').style.display = "none";
                document.getElementById('cableLength_6').required = false;
            } else if (document.getElementById('cableForm_5').style.display === "table") {
                document.getElementById('cableForm_5').style.display = "none";
                document.getElementById('cableLength_5').required = false;
            } else if (document.getElementById('cableForm_4').style.display === "table") {
                document.getElementById('cableForm_4').style.display = "none";
                document.getElementById('cableLength_4').required = false;
            } else if (document.getElementById('cableForm_3').style.display === "table") {
                document.getElementById('cableForm_3').style.display = "none";
                document.getElementById('cableLength_3').required = false;
            } else {
                document.getElementById('cableForm_2').style.display = "table";
                document.getElementById('cableForm_2').style.display = "none";
                document.getElementById('cableLength_2').required = false;
                document.getElementById('hideButton').style.display = "none";
            }
        }
    </script>

    <style>

        iframe {
            width: 300px;
            height: 60px;
            background: #caccd1;
            /*border: #e34761;*/
        }
        .block1 {
            width: 1170px;
            max-width: 1170px;
            min-height: 2000px;
            padding-top: 50px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 16px;
            padding-right: 16px;
            background: #f6f6f5;
            top: 30px;
            left: 60px;
        }

        a {
            color: #f48924;
        }
        table {
            border-spacing: 30px 5px;
            column-width: 400px;
            text-align: left;
            align-content: center;
            align-items: center;
        }
        button {
            background: #caccd1;
            /*border: 2px solid #e34761; !* Параметры рамки *!*/
            font-size: 14px; /* Размер текста */
            padding: 5px 20px; /* Поля вокруг текста */
        }

        input {
            width: 93px;
        }
        select {
            width: 100px;
        }

    </style>

</head>


<body>

<div class="block1" align="center">

    <h3> Расчет токов однофазного <br>КЗ в сетях 0,4/0,23 кВ </h3>
    <p><br></p>

    <form method="POST" target="iframe1" action="spcalc">

        <table>

            <tr>
                <td>Введите мощность трансформатора, кВА</td>
                <td>
                    <select name="transPower">
                        <option value="1.25">1.25 (1ф.)</option>
                        <option value="2.5">2.5 (1ф.)</option>
                        <option value="4">4 (1ф.)</option>
                        <option value="10">10 (1ф.)</option>
                        <option value="16">16 (1ф.)</option>
                        <option selected value="25">25 (1ф.)</option>
                        <option value="25_1">25 (3ф., Y/Y)</option>
                        <option value="25_2">25 (3ф., Y/Z, △/Y)</option>
                        <option value="40_1">40 (3ф., Y/Y)</option>
                        <option value="40_2">40 (3ф., Y/Z, △/Y)</option>
                        <option value="63_1">63 (3ф., Y/Y)</option>
                        <option value="63_2">63 (3ф., Y/Z, △/Y)</option>
                        <option value="100_1">100 (3ф., Y/Y)</option>
                        <option value="100_2">100 (3ф., Y/Z, △/Y)</option>
                        <option value="160_1">160 (3ф., Y/Y)</option>
                        <option value="160_2">160 (3ф., Y/Z, △/Y)</option>
                        <option value="250_1">250 (3ф., Y/Y)</option>
                        <option value="250_2">250 (3ф., Y/Z, △/Y)</option>
                        <option value="400_1">400 (3ф., Y/Y)</option>
                        <option value="400_2">400 (3ф., Y/Z, △/Y)</option>
                        <option value="630_1">630 (3ф., Y/Y)</option>
                        <option value="630_2">630 (3ф., Y/Z, △/Y)</option>
                        <option value="1000_1">1000 (3ф., Y/Y)</option>
                        <option value="1000_2">1000 (3ф., Y/Z, △/Y)</option>
                        <option value="1600_1">1600 (3ф., Y/Y)</option>
                        <option value="1600_2">1600 (3ф., Y/Z, △/Y)</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td height="10"></td>
            </tr>


            <tr>
                <td>Введите длину линии N1, м</td>
                <td><input id="cableLength_1" required type="text" name="cableLength_1"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_1">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, мм<sup>2</sup></td>
                <td>
                    <select name="cableSection_1">
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

            </tr>

            <tr>
                <td height="10"></td>
            </tr>
        </table>
        <button type="submit">Рассчитать</button>

        <p><br></p>

        <table id="cableForm_2" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N2, м</td>
                <td><input id="cableLength_2" type="text" name="cableLength_2"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_2">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, мм<sup>2</sup></td>
                <td>
                    <select name="cableSection_2">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_3" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N3, м</td>
                <td><input id="cableLength_3" type="text" name="cableLength_3"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_3">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_3">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_4" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N4, м</td>
                <td><input id="cableLength_4" type="text" name="cableLength_4"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_4">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_4">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_5" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N5, м</td>
                <td><input id="cableLength_5" type="text" name="cableLength_5"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_5">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_5">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_6" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N6, м</td>
                <td><input id="cableLength_6" type="text" name="cableLength_6"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_6">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_6">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_7" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N7, м</td>
                <td><input id="cableLength_7" type="text" name="cableLength_7"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_7">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_7">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_8" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N8, м</td>
                <td><input id="cableLength_8" type="text" name="cableLength_8"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_8">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_8">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_9" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N9, м</td>
                <td><input id="cableLength_9" type="text" name="cableLength_9"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_9">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_9">
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
                <td height="10"></td>
            </tr>
        </table>

        <table id="cableForm_10" style="display: none">
            <tr>
                <td height="10"></td>
            </tr>
            <tr>
                <td>Введите длину линии N10, м</td>
                <td><input id="cableLength_10" type="text" name="cableLength_10"></td>
            </tr>

            <tr>
                <td>Введите материал кабеля</td>
                <td>
                    <select name="cableMaterial_10">
                        <option value="cu">Медь</option>
                        <option value="al">Алюминий</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Введите сечение кабеля, <sup>2</sup></td>
                <td>
                    <select name="cableSection_10">
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
                <td height="10"></td>
            </tr>
        </table>
    </form>


    <button id="addCable" onclick="showCable()">Добавить участок кабеля</button>
    <p></p>
    <button id="hideButton" style="display: none" onclick="hideCable()">Удалить участок кабеля</button>
    <p></p>


    <p style="font-weight: 700"><br>Результат:</p>
    <iframe name="iframe1" width="300" height="60" align="center"></iframe>

    <p><br></p>

    <p align="left"><br><br></p><a href="#" onclick="location.reload(); return false;">
    Начать новый расчет
</a>
    <p><br></p>

    <p><a href="http://dev-vap.ru/">Вернуться на главную</a></p>

</div>
</body>
</html>

