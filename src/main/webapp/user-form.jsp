<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <nav class="navbar navbar-expand-md navbar-dark"
            style="background-color: blue">
            <div>
                <a href="https://euphonious-entremet-658195.netlify.app/" class="navbar-brand"> Developer Profile </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list"
                    class="nav-link"> CRUD User</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <% 
                User user = (User)request.getAttribute("user");

                if (user!= null) { %>
                    <form action="update" method="get">
                    <caption>
                    <h2>Edit User</h2>
                     </caption>
                 <input type="hidden" name="id"  value="<%= user.getId() %>"  />
                

                <fieldset class="form-group">
                    <label>User Name</label> <input type="text"
                         value="<%= user.gsetName() %>"  class="form-control"
                        name="name" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Email</label> <input type="text"
                        value="<%= user.getEmail() %>" class="form-control"
                        name="email">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Country</label> <input type="text"
                        value="<%= user.getCountry() %>" class="form-control"
                        name="country">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
                </form>
                    
                   
                    
                <% }else {%>
                    <form action="insert" method="get">
                    <caption>
                    <h2>Edit User</h2>
                    </caption>
                    
              	<fieldset class="form-group">
                    <label>User Name</label> <input type="text"
                         value="name"  class="form-control"
                        name="name" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Email</label> <input type="text"
                        value="email" class="form-control"
                        name="email">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Country</label> <input type="text"
                        value="country" class="form-control"
                        name="country">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
                </form>
                <% } %>
            </div>
        </div>
    </div>
</body>
</html>
