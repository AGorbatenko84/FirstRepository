package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


//@WebServlet("/dog")
public class DogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Dogs servlet");
        System.out.println("context = " + req.getContextPath());
//        System.out.println("name = " + );
        System.out.println("name = " + req.getAttribute("name"));
        System.out.println("age = " + req.getAttribute("age"));
        System.out.println("weight = " + req.getAttribute("weight"));


        PrintWriter pw = resp.getWriter();
        pw.println("<html>");
        pw.println("<head> <h1> Dog </h1> </head>");
        pw.println("<body>");
        pw.println("<h3>Name  = " + req.getAttribute("name") + "</h3>");
        pw.println("<h3>Age =  " + req.getAttribute("age") + "</h3>" );
        pw.println("<h3>Weight =  " + req.getAttribute("weight") + "</h3>" );
        pw.println("</body>");
        pw.println("</html>");

    }
}
