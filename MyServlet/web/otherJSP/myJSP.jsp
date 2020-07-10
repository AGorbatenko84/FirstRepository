<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Дом_1
  Date: 14.06.2020
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>the dog Archi</title>
</head>
<body>

    Archi say
<%-- coment JSP --%>
<!-- comment HTML -->
    <!-- Declartion code = обьявление -->
    <%! int i=5; %>
    <%! private void doGavGav(){
        System.out.println("Gav - Gav - Gav");
    }%>
    <!-- Exspresion code = выполнение -->
    <%= "Miau Miau"%>
    <%= i + i + 2 %>
    <%= "\n" %>
    <%= new Date()%>
    <%--  Метод doGavGav() работает только в Screplet --%>

    <!-- Screplet = код (вроде как их использовать плохая практика)-->
    <%--<%--%>
        <%--doGavGav();--%>
    <%--%>--%>




</body>
</html>
