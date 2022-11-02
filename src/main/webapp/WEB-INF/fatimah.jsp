<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>${bootcamp.title}</title>
    <style>.btn-secondary {
    color: #fff;
    background-color: #563d7c;
    border-color: #563d7c;
}</style>
</head>
<body>
<!-- ========== Start Navbar ========== -->
<div class="navbar sticky-top navbar navbar-expand-xs navbar-dark navbar-rounded shadow p-2 px-4 " style="background: #181149;">
    <div class="d-flex row " style="align-items:center;">
        <img class="col-4" src="/images/logo-removebg-preview.png" width="90" alt="" >
        <h1 class="col-4 text-light" style="font-family:cairo;">Society</h1>
    </div>
    <div class="col-4">
        <ul class="nav">
            <li class="nav-item col-4">
                <a class="nav-link active text-light" href="/">Home</a>
            </li>
            <li class="nav-item col-">
                <a class="nav-link text-light" href="#champions">Champion The Week </a>
            </li>
        </ul> 
    </div>
    <div class="col-4">
        <div class="d-flex justify-content-evenly">
            <a class="nav-link text-light" href="/profile/${user_id}">${loinUser.userName}'s Profile</a>
            <a href="/logout" class="btn btn-outline-light btn-sm">LogOut</a>
        </div>
    </div>
</div>


<div class="container  mt-4">
    <img src="/images/champion/fatimah.png" alt="" style="margin-left:350px;">
</div>

</body>
</html>