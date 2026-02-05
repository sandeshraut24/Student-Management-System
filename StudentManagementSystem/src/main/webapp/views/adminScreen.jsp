<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AdminScreen</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
        crossorigin="anonymous">

    <style type="text/css">
        .enroll {
            background-image: url("images/login.avif");
            background-size: cover;
            background-repeat: no-repeat;
           
        }

        .heading {
            font-family: cursive;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            width: 400px;
        }

        .view {
            background-image: url("images/views.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>

<body>
<div class="card">

    <!-- Navbar -->
    <nav class="d-flex justify-content-between p-2 border border-primary">
        <img src="images/student.png" width="150" height="70">

        <div class="pt-2">
            <a href="#enroll">
                <button class="btn btn-outline-primary" style="height: 50px">Enroll Student</button>
            </a>
            <a href="#view">
                <button class="btn btn-outline-primary" style="height: 50px">View Student</button>
            </a>
            <a href="/">
                <button class="btn btn-outline-primary" style="height: 50px">Logout</button>
            </a>
        </div>
    </nav>

    <!-- Enroll Section -->
    <section class="vh-100 gradient-custom enroll mt-2" id="enroll">
        <div class="container h-100">
            <div class="row justify-content-center h-100 w-75">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div class="card shadow-2-strong card-registration"
                         style="border-radius: 15px;">
                        <div class="card-body">

                            <h3 class="heading">Student Enrollment Form</h3>

                            <form action="enroll_student">

                                <!-- Name & Email -->
                                <div class="row">
                                    <div class="col-md-6 mb-2">
                                        <div class="form-outline">
                                            <input type="text"
                                                   class="form-control form-control-sm"
                                                   name="studentFullName">
                                            <label class="form-label">Student Full Name</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-2">
                                        <div class="form-outline">
                                            <input type="email"
                                                   class="form-control form-control-sm"
                                                   name="studentEmail">
                                            <label class="form-label">Student Email</label>
                                        </div>
                                    </div>
                                </div>

                                <!-- Age & College -->
                                <div class="row">
                                    <div class="col-md-6 mb-2">
                                        <div class="form-outline">
                                            <input type="number"
                                                   class="form-control form-control-sm"
                                                   name="studentAge">
                                            <label class="form-label">Student Age</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-2">
                                        <div class="form-outline">
                                            <input type="text"
                                                   class="form-control form-control-sm"
                                                   name="studentCollegeName">
                                            <label class="form-label">College Name</label>
                                        </div>
                                    </div>
                                </div>

                                <!-- Fees & Course -->
                                <div class="row">
                                    <div class="col-md-6 mb-2">
                                        <div class="form-outline">
                                            <input type="number"
                                                   class="form-control form-control-sm"
                                                   name="feesPade">
                                            <label class="form-label">Fees Paid</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-2">
                                        <h6 class="mb-2">Student Course :</h6>

                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input"
                                                   type="radio"
                                                   name="studentCource"
                                                   value="Java"
                                                   checked>
                                            <label class="form-check-label">Java</label>
                                        </div>

                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input"
                                                   type="radio"
                                                   name="StudentCourse"
                                                   value="Python">
                                            <label class="form-check-label">Python</label>
                                        </div>

                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input"
                                                   type="radio"
                                                   name="StudentCourse"
                                                   value="Testing">
                                            <label class="form-check-label">Testing</label>
                                        </div>
                                    </div>
                                </div>

                                <!-- Batch -->
                                <div class="row">
                                    <div class="col mb-2">
                                        <select class="form-control form-control-sm"
                                                name="batchMode">
                                            <option disabled selected>Select Batch Mode</option>
                                            <option value="Online">Online</option>
                                            <option value="Offline">Offline</option>
                                        </select>
                                    </div>

                                    <div class="col mb-2">
                                        <select class="form-control form-control-sm"
                                                name="batchNumber">
                                            <option disabled selected>Select Batch Number</option>
                                            <option>FDJ-190</option>
                                            <option>REG-190</option>
                                            <option>FDJ-191</option>
                                            <option>REG-191</option>
                                            
                                        </select>
                                    </div>
                                </div>

                                <!-- Submit -->
                                <div class="mt-3 d-flex justify-content-center">
                                    <input type="submit"
                                           class="btn btn-primary btn-lg"
                                           value="Submit">
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- View Section -->
    <section class="view" id="view" style="height: 730px;">
        <h1 class="text-center text-light pt-4 text-dark ">View Detail</h1>
        <div class="text-center w-100">
 <form action="search" class="w-100">
 <select class="select form-control-sm border border-primary"
name="batchNumber">
 <option value="#" slected>Select Batch Number</option>
 <option>FDJ-190</option>
 <option>REG-190</option>
 <option>FDJ-191</option>
 <option>REG-191</option>
 </select>
 <button class="btn btn-outline-primary mb-1">Search</button>
 </form>
 <marquee>
 <h1 style="color: red;">
 ${message }
 </h1>
 </marquee>
 </div>
        
        <table class="table table-hover" style="font-size:small">
 <thead>
 <tr>
 <th>ID</th>
 <th>Student Name</th>
 <th>Student Email</th>
 <th>Age</th>
 <th>Collage Name</th>
 <th>Course Name</th>
 <th>Bath No</th>
 <th>Mode</th>
 <th>Fess Recived</th>
 <th>Actions</th>
 </tr>
 </thead>
 <tbody>
 <c:forEach items="${data}" var="s">
 <tr>
 <td>${s.studentId}</td>
 <td>${s.studentFullName}</td>
 <td>${s.studentEmail}</td>
 <td>${s.studentAge}</td>
 <td>${s.studentCollegeName}</td>
 <td>${s.studentCource}</td>
 <td>${s.batchNumber}</td>
 <td>${s.batchMode}</td>
 <td>${s.feesPade}</td>
 <td>
 <div class="btn-group btn-group-sm" role="group"aria-label="...">
 <button class="btn btn-outline-warning">PayFees</button>
 <button class="btn btn-outline-primary">ShiftBatch</button>
 <a  href="delete?id=${s.studentId}" class="btn btn-outline-danger">Remove</a>

 </div>

 </td>

 </tr>
 </c:forEach>

 </tbody>

 </table>
 
        
        
    </section>

</div>
</body>
</html>
