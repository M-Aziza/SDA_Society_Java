<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>   

 <!DOCTYPE html>
<head>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Login & Register</title>
</head>
<body>

    <div class="container">
        <div class="mt-4 text-center">
            <h1 class="text-primary" >Welcome! Sign in to SDA Society</h1>
        </div>
        <div class="container d-flex justify-content-between bg-light p-5 my-4 " >
            <!-- Reg -->
            <div class="col-md-4">
                <table class="table table-responsive-ms">
                    <thead>
                        <tr>
                            <th scope="col">Register</th>
                        </tr>
                        <tr>
                            <th>
                                <form:form action="/register" method="post" modelAttribute="newUser">
                                    <div class="form-group">
                                        <label>User Name:</label>
                                        <form:input path="userName" class="form-control" />
                                        <form:errors path="userName" class="text-danger" />
                                    </div>
                                    <div class="form-group">
                                        <label>Email:</label>
                                        <form:input path="email" class="form-control" />
                                        <form:errors path="email" class="text-danger" />
                                    </div>
                                    <div class="form-group">
                                        <label>Bootcamp:</label>
                                        <select name="bootcamp" class="form-control">
                                            <option>--Select a Bootcamp--</option>
                                            <c:forEach var="bootcamp" items="${bootcamps}">
                                                <option value="${bootcamp.id}">
                                                    <c:out value="${bootcamp.title}" />
                                                </option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Password:</label>
                                        <form:password path="password" class="form-control" />
                                        <form:errors path="password" class="text-danger" />
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm Password:</label>
                                        <form:password path="confirm" class="form-control" />
                                        <form:errors path="confirm" class="text-danger" />
                                </div>
                                <input type="submit" value="Register" class="btn btn-primary mt-4" />
                                </form:form>
                            </th>
                        </tr>
                    </thead>
                </table>
            </div>

            <!-- Log in -->
            <div class="col-md-4">
                <table class="table" >
                    <thead>
                        <tr>
                            <th scope="col" >Log in</th>
                        </tr>
                        <tr>
                            <th>
                                <form:form action="/login" method="post" modelAttribute="newLogin">
                                    <div class="form-group">
                                        <label>Email:</label>
                                        <form:input path="email" class="form-control" />
                                        <form:errors path="email" class="text-danger" />
                                    </div>
                                    <div class="form-group">
                                        <label>Password:</label>
                                        <form:password path="password" class="form-control" />
                                        <form:errors path="password" class="text-danger" />
                                    </div>
                                    <input type="submit" value="Login" class="btn btn-success mt-4" />
                            </form:form></th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
</body>
</html>