package servlets;

import jsp.Animal;
import jsp.Dog;
import jsp.AnimalModel;
import jsp.TempAnimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//@WebServlet("/animal")
public class AnimalController extends HttpServlet {
    AnimalModel animalModel = new AnimalModel();
    public int numPet;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        HttpSession session = req.getSession();
         TempAnimal tempAnimal = (TempAnimal) session.getAttribute("tempAnimal");
         String id =req.getParameter("id");
         if (tempAnimal==null){
             tempAnimal = new TempAnimal();
             tempAnimal.setId(id);
         }
         session.setAttribute("tempAnimal", tempAnimal);

        RequestDispatcher requestDispatcher =  req.getRequestDispatcher( req.getContextPath() + "/jsp/AnimalView.jsp");
        requestDispatcher.forward(req,resp);

    }

}

