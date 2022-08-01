package com.example.javapro_l3task1;

import bd.DBManager;
import bd.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/home")
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<Student> students = DBManager.getAllStudents();
        request.setAttribute("students", students);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
        System.out.println("Hello" + students);
    }
}