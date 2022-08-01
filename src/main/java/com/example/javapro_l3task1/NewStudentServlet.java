package com.example.javapro_l3task1;

import bd.DBManager;
import bd.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/NewStudentServlet")
public class NewStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String birthDate = request.getParameter("birthDate");
        String city = request.getParameter("city");


        Student newStudent = new Student(null,name,surname,birthDate,city);
        DBManager.addStudent(newStudent);
        response.sendRedirect("/addstudent");
    }
}
