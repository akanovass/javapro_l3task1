<%@ page import="bd.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="vector/bootstrap.jsp"%>
</head>
<body>
<%@include file="vector/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">NAME</th>
                    <th scope="col">SURNAME</th>
                    <th scope="col">BIRTHDATE</th>
                    <th scope="col">CITY</th>
                </tr>
                </thead>
                <tbody>
                <% ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
                if(students!=null){
                    System.out.println("Null emes eken!");
                    for(Student st: students){
    %>
                <tr>
                    <td><%=st.getId()%></td>
                    <td><%=st.getName()%></td>
                    <td><%=st.getSurname()%></td>
                    <td><%=st.getBirthDate()%></td>
                    <td><%=st.getCity()%></td>

                </tr>
                <% }
                }
                    %>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>