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

    <title>SDA Society</title>
</head>
<body>
    <!-- ========== Start Navbar ========== -->
    <div class="navbar sticky-top navbar navbar-expand-xs navbar-dark navbar-rounded shadow p-2 px-4 " style="background: #181149;">
        <div class="d-flex row " style="align-items:center;">
            <img class="col-4" src="/images/logo-removebg-preview.png" width="90" alt="" >
            <h1 class="col-4 text-light" style="font-family:cairo;">Society</h1>
        </div>
        <c:choose>
            <c:when test="${user_id != null}">
                <div class="col-4">
                    <ul class="nav">
                        <li class="nav-item col-4">
                            <a class="nav-link active text-light" href="#bootcamp">Bootcamp</a>
                        </li>
                    </ul> 
                </div>
                <div class="col-4">
                    <div class="d-flex justify-content-evenly">
                        <a class="nav-link text-light" href="/profile/${user_id}">${loinUser.userName}'s Profile</a>
                        <a href="/logout" class="btn btn-outline-light btn-sm">LogOut</a>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <div>
                    <a href="logReg" class="btn btn-outline-light btn-sm">Login</a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
    <!-- ========== End Navbar ========== -->
    
    <!-- ========== Start home ========== -->
    <div style="background-color:#f7f7f7;">
        <!-- ========== Start information ========== -->
        <div class="img-fluid p-4" style="background-image: url(/images/background.jpeg);">
            <div class="mt-4" style=" height: 630px;" >
                <div class="container form-control p-4 bg-light opacity-75 ">
                    <h1 class="text-center text-black mt-4 fs-2 fw-light">SDA society </h1>
                    <p class="text-center text-black mt-4 fs-4 p-4  fw-lighter" >A communication platform where you learn more about the other 
                        bootcamps and have chance to meet your colleagues of Saudi Digital Academy bootcamps! In this platform all students have the ability
                        to add their projects and activities ! And communicate each other! So if you are a student in SDA this is the right place to share your
                        bootcamp projects here and to show your skills!</p>
                </div>
            </div>
        </div>
        <!-- ========== End information ========== -->
        
        <!-- ========== Start Bootcamp ========== -->
        <div id="bootcamp" class="container p-2">
            <div class="text-center title-hed wow fadeInUp mt-4" >
                <h1 class="text-blue font-weight-bold" style="font-family:cairo;">Bootcamp</h1>
            </div>

            <div class="d-flex justify-content-center flex-wrap p-4 m-4" >
                <c:forEach var="bootcamp" items="${bootcamps}">
                    <div class="col-4 mt-4">
                        <div class="card" style="width: 20rem; height: 40rem;">

                            <img src="${bootcamp.img}" class="card-img-top" alt="...">
                            <div class="card-body d-flex justify-content-between row">
                                <h5 class="card-title">${bootcamp.title}</h5>
                                <p class="card-text">${bootcamp.description}</p>
                                <a href="bootcamp/${bootcamp.id}" style="background: #181149; height: 40px;" class="btn text-white col-md-8 ">More..</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <!-- ========== End Bootcamp ========== -->
        
        <!-- ========== Start Bootcamp row2 ========== -->
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
    </div>
</body>
</html>