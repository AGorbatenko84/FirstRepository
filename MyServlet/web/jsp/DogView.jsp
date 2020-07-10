<%--
  Created by IntelliJ IDEA.
  User: Home_nout
  Date: 18.06.2020
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jsp.TempAnimal" %>
<%@ page import="jsp.Dog" %>
<html>
<head>
    <title>DOGS</title>
    <h1>DOGS</h1>
</head>
<body>
    <% TempAnimal tempAnimal = (TempAnimal) session.getAttribute("tempAnimal");%>
    <%Dog dog = (Dog) tempAnimal.getAnimal();
        String name = dog.getName();
        int age = dog.getAge();
        int weight = dog.getWeight();
    %>
    <h3> You choose a dog!</h3>
    <h3> Name: <%=name%>;</h3>
    <h3> Age: <%=age%> years;</h3>
    <h3> Weight: <%=weight%> kg.</h3>

</body>
</html>
