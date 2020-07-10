<%@ page import="jsp.Animal" %><%--
  Created by IntelliJ IDEA.
  User: Дом_1
  Date: 14.06.2020
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Animals</title>
    <h1>Animals</h1>
</head>
<body>
    <h3>Put number animal (1 - 10)  =
            <%String number = request.getParameter("number"); %>
            <%=number%>
    </h3>
   <form action = 'animals' method = 'get'>
        <textarea name = 'number'> </textarea>
        <input type = 'submit' name = 'submit'/>
   </form>
    <%@page import="jsp.AnimalModel, jsp.Animal, servlets.AnimalController" %>
    <%@ page import="jsp.TempAnimal" %>
    <% TempAnimal tempAnimal = (TempAnimal) session.getAttribute("tempAnimal");%>
    <%
        AnimalModel animalModel = new AnimalModel();
        Animal animal=null;
        String animalClass;
        String pet = null;

        if (number!=null){
            Integer numberAnimal = Integer.parseInt(number.trim());
            animal = animalModel.getAnimal(numberAnimal);
            tempAnimal.setAnimal(animal);
        }

        if (animal==null) animalClass = "not animal";
        else animalClass = animal.getClass().toString();
        if (animalClass.contains("Cat"))  pet="Cat";
        else if (animalClass.contains("Dog")) pet = "Dog";
        else pet = " not animal";
        tempAnimal.setType(pet);
        if (tempAnimal.getType().equals("Dog")){
            response.sendRedirect( request.getContextPath() + "/jsp/DogView.jsp");
        }
        if (tempAnimal.getType().equals("Cat")){
            response.sendRedirect( request.getContextPath() + "/jsp/CatView.jsp");
        }
    %>

</body>
</html>
