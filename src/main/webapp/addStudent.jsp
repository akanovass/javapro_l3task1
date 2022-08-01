<%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 18.07.2022
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="vector/bootstrap.jsp"%>
</head>
<body>
<%@include file="vector/navbar.jsp"%>
<div class="container">
    <div class="row mt-3">
        <div class="col-8 mx-auto">
            <form action="/NewStudentServlet" method="post">
                <div class="form-group">
                    <label>NAME:</label>
                    <input type="text" name="name" class="form-control" placeholder="Insert name">
                </div><br>
                <div class="form-group">
                    <label>SURNAME:</label>
                    <input type="text" name="surname" class="form-control" placeholder="Insert surname">
                </div><br>
                <div class="form-group">
                    <label>BIRTHDATE:</label>
                    <input type="date" name="birthDate" class="form-control" min="1900-01-01" max="2010-12-31">
                </div><br>
                <div class="form-group">
                    <label>CITY:</label>
                    <select name="city" class="form-control">
                        <option>Almaty</option>
                        <option>Nursultan</option>
                        <option>Aktau</option>
                        <option>Shymkent</option>
                    </select>
                </div><br>
                <div class="form-group">
                    <button class="btn btn-success">ADD STUDENT</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
