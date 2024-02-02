<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.gopal.usercrud.classes.User" %>
<%@page import="java.util.*" %>

<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
        <div>
            <a href="https://euphonious-entremet-658195.netlify.app/" class="navbar-brand"> Developer Profile </a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">CRUD User</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">
    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

    <div class="container">
        <h3 class="text-center">List of Users</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            
            <%
            List<User> listUser = (List<User>) request.getAttribute("listUser");
            if(listUser!=null){
            for (User user : listUser) { %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.gsetName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getCountry() %></td>
                    <td><a href="edit?id=<%= user.getId() %>">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<%= user.getId() %>">Delete</a></td>
                </tr>
            <% }} %> <!-- This line was missing -->
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
