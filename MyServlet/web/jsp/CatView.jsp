<%--
  Created by IntelliJ IDEA.
  User: Home_nout
  Date: 22.06.2020
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jsp.TempAnimal" %>
<%@ page import="jsp.Cat" %>
<html>
<head>
    <title>CATS</title>
    <h1>CATS</h1>
</head>
<body>
<% TempAnimal tempAnimal = (TempAnimal) session.getAttribute("tempAnimal");%>
<%
    Cat cat = (Cat) tempAnimal.getAnimal();
    String name = cat.getName();
    int age = cat.getAge();
    int weight = cat.getWeight();
%>
<h3> You choose a cat!</h3>
<h3> Name: <%=name%>;</h3>
<h3> Age: <%=age%> years;</h3>
<h3> Weight: <%=weight%> kg.</h3>

</body>
</html>
