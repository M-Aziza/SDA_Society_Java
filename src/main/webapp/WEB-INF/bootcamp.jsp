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
                <a class="nav-link text-light" href="#champions">Champions</a>
            </li>
            <li class="nav-item col-">
                <a class="nav-link text-light" href="#student">Students</a>
            </li>
            <li class="nav-item col-">
                <a class="nav-link text-light" href="#student">Projects</a>
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

<!-- ========== End Navbar ========== -->
<div>
    <div style="background-color:#f7f7f7;">
        <h3 class="p-4 d-flex justify-content-center" >${bootcamp.title}</h3>
        <p class="p-4 fs-6 fw-light text-center me-5">${bootcamp.description}</p>
</div>
<!-- ========== Start home ========== -->
    <!-- ========== Start Bootcamp ========== -->
    <div id="champions" class="container mt-4 mb-4">
        <h1 class="text-blue text-center font-weight-bold m-4" style="font-family:cairo;">Champions 🥳</h1>
        <div class="d-flex justify-content-center flex-wrap p-4" > 
            <c:forEach var="champion" items="${bootcamp.champions}">
                <div class="p-2">
                    <a href="/fatimah" ><img style="width: 200px;" src="${champion.img}" ></a>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- ========== End Bootcamp ========== -->


<!-- ========== Start Table Student ========== -->
    <div id="student"class=" py-5 h-100 bg-light ">
        <h1 class="text-blue text-center font-weight-bold m-4" style="font-family:cairo;">Students</h1>
        <div class="d-flex justify-content-center flex-wrap p-4 r" > 
            <c:forEach var="student" items="${bootcamp.students}">
                <div class="card m-4 " style="border-radius: 15px;">
                    <div class="card-body text-center">
                        <div class="mt-3 mb-4">
                            <img src="/images/user.png"
                            class="rounded-circle img-fluid" style="width: 100px;" />
                        </div>
                        <h4 class="mb-2">${student.userName}</h4>
                        <p class="text-muted mb-4">${bootcamp.title}
                        <br>
                        <br>
                        <br>
                        <a href="/profile/${student.id}"  class="btn btn-secondary ">Go to Profile</a>
                        <div class="d-flex justify-content-center text-center mt-5 mb-2">
                            <div>
                                <p class="mb-2 h5">${student.projects.size()}</p>
                                <p class="text-muted mb-0"> Project</p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>             
        </div>
    </div>
    <!-- ========== Start table of project ========== -->
<div class="container ">
    <div class="my-5">
        <h4 class="my-4 d-flex justify-content-center" style="color: #2c2365;">${bootcamp.title} Project </h4>
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Posted by</th>
                    <th scope="col">Description</th>
                </tr>
            </thead>
            <tbody class="table-group-divider">
            <c:forEach var="project" items="${bootcamp.projects}">
                <tr>
                    <td>${project.title}</td>
                    <td>${project.student.userName}</td>
                    <td>${project.description}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

    <!-- ========== Start Footer row2 ========== -->
    <footer class="bg-dark text-light p-2">
        <section id="contact" class="site-footer">
            <div class="container">
                <div class="row m-b-lg ">
                    <div class="col-lg-12 text-center">
                        <div class="navy-line"></div>
                        <h1 class="contact-us" style="font-family:cairo;">SDA Society</h1>
                    </div>
                </div>
                </div>
                <div class="row">
                    <div class=" col-lg-12 text-center m-t-lg m-b-lg ">
                        <p class="copy-right fw-lighter"><strong> Created by:</strong><br/> 
                            Sara Alghamdi <br/>
                            Aziza Alshahrani<br/>
                            Roaa Albishri <br/>
                            Samiah Albuqami<br/>
                            Ayman Alasiri<br/>
                        </p>
                    </div>
                </div>
            </div>
            <div class="blue-line"></div>
        </section>
    </footer>
<!-- ========== End ========== -->

</body>
</html>