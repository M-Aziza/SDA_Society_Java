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
    <div class="d-flex justify-content-md-end ">
    </div>
    <section class="vh-100" style="background-color: #eee;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-12 col-xl-4">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body text-center">
                            <!-- <a class=" mb-4 d-flex justify-content-md-end" href="/editProfile"><img src="/images/pencil.png" width="20px" alt="Edit"> </a> -->
                            <div class="mt-3 mb-4">
                                <img src="/images/user.png" class="rounded-circle img-fluid" style="width: 100px;" />
                            </div>
                            <h4 class="mb-2">${student.userName}</h4>
                            <p class="text-muted mb-4">${student.bootcamp.title}
                                <p class="text-black mb-4"> <strong>Email: </strong> ${student.email}
                            <div class="mb-4 pb-2">
                                <span><strong>instructors:</strong> 
                                    <c:forEach var="instructor" items="${student.bootcamp.instructors}">
                                    <a href="/instructor/${instructor.id}">${instructor.name}</a> ,
                                </span>
                            </c:forEach>
                            </div>
                            <div class="d-flex justify-content-center text-center mt-5 mb-2">
                                <div>
                                <p class="mb-2 h5 text-center">Project</p>
                                <p class="text-muted mb-0">${student.projects.size()}</p>
                                </div>
                            </div>
                            <c:if test="${user_id == student.id}">
                            <a class="btn btn-secondary " role="button" href="/addProject">Add Project</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>

<!-- ========== Start table of project ========== -->
<div class="container ">
    <div class="my-5">
        <h4 class="my-4 d-flex justify-content-center" style="color: #2c2365;">Your Project </h4>
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">URL</th>
                    <c:if test="${user_id == student.id}">
                    <th scope="col">Action</th>
                </c:if>
                </tr>
            </thead>
            <tbody class="table-group-divider">
            <c:forEach var="project" items="${student.projects}">
                <tr>
                    <td>${project.title}</td>
                    <td>${project.description}</td>
                    <td> <a href="#">${project.url}</a></td>
                    <c:if test="${user_id == student.id}">
                    <td class=" d-flex  justify-content-center "> 
                        <form action="/delete/${project.id}" method="post">
                            <input type="hidden" name="_method" value="delete">
                            <input  class="btn btn-danger ms-2 " type="submit" value="Delete"> |  
                        </form> 
                        <a class="btn btn-warning me-2" href="/editProject/${project.id}"> Edit</a> 
                    </td>
                </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<!-- ========== End table of project ========== -->

</body>
</html>