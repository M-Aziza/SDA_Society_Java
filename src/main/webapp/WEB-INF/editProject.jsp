<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.rtl.min.css" integrity="sha384-dc2NSrAXbAkjrdm9IYrX10fQq9SDG6Vjz7nQVKdKcJl3pC+k37e7qJR5MVSCS+wR" crossorigin="anonymous">
        <title>${loinUser.userName} Add project</title>
        <style>.btn-secondary {
            color: #fff;
            background-color: #563d7c;
            border-color: #563d7c;
        }</style>
    </head>
    <body style="background-color: rgba(195, 197, 195, 0.211);">
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
                </ul> 
            </div>
            <div class="col-4">
                <div class="d-flex justify-content-evenly">
                    <a class="nav-link text-light" href="/profile/${user_id}">${loinUser.userName}'s Profile</a>
                    <a href="/logout" class="btn btn-outline-light btn-sm">Logout</a>
                </div>
            </div>
        </div>
        <!-- ========== End Navbar ========== -->
    
    
        <!-- ========== Add Project  ========== -->
        <div class="container d-flex  justify-content-center p-4">
            
            <div class="col-md-6 my-4 mt-4">
                <h4 class="text-center">Edit Project</h4>
                <form:form action="/editProject/${project.id}" method="post" modelAttribute="project">
                    <input type="hidden" name="_method" value="put">
                    <div class="row g-3 ">
                        <div class="md-3">
                            <label class="form-label"> Title:</label>
                            <form:input path="title" class="form-control" />
                            <form:errors path="title" class="text-danger" />
                        </div>
                        <div class="md-3">
                            <label class="form-label"> Description:</label>
                            <form:input path="description" class="form-control" />
                            <form:errors path="description" class="text-danger" />
                        </div>
                        <div class="md-3">
                            <label class="form-label"> URL:</label>
                            <form:input path="url" class="form-control" />
                            <form:errors path="url" class="text-danger" />
                        </div>

                        <div class=" d-flex justify-content-between">
                            <a href="/profile/${user_id}" class="btn btn-danger ">Cancel</a>
                            <input type="submit" class="btn btn-secondary " value="Edit Project"/>
                        </div>
                </form:form>
            </div>
        </div>
    
    </body>
    </html>