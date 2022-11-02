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
    <title>${loinUser.userName}</title>
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
    
    <!-- ========== Start information of student ========== -->
    
    <section style="background-color: #eee;">
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
                <h4 class="text-center m-4">Instructor's Details</h4>
                <div class="col-md-12 col-xl-4">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body text-center mb-4">
                            <!-- <a class=" mb-4 d-flex justify-content-md-end" href="/editProfile"><img src="/images/pencil.png" width="20px" alt="Edit"> </a> -->
                            <div class="mt-3 mb-4">
                                <img src="/images/user.png" class="rounded-circle img-fluid" style="width: 100px;" />
                            </div>
                            
                            <h4 class="mb-2">${instructor.name}</h4>
                            <p class="text-muted mb-4">${instructor.bootcamp.title}
                                <p class="text-black mb-4"> <strong>Email: </strong> ${instructor.email}
                            <div class="mb-4 pb-2">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========== Start table of project ========== -->
<div class="container">
    <div class="my-5">
        <h4 class="my-4 d-flex justify-content-center" style="color: #2c2365;">Instructor Student </h4>
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th scope="col">Student Name</th>
                    <th scope="col">Email</th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
            <c:forEach var="student" items="${instructor.bootcamp.students}">
                <tr>
                    <td>${student.userName}</td>
                    <td>${student.email}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<!-- ========== End table of project ========== -->
</body>
</html>