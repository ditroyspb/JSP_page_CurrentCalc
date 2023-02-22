package ru.netology.netologyrest.Servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/indexTest")
public class jspServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("firstName");
        String surname = request.getParameter("secondName");
        System.out.println(name);
        System.out.println(surname);

        response.setContentType("text/html;charset=utf-8");

        PrintWriter out = response.getWriter();
        out.println(name);
        out.println(surname);

    }

}
