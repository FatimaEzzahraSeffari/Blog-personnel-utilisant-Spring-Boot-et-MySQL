<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="admin.jsp" %>
 

<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap2.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css">
<link href="img/favicon.ico" rel="icon">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <title>Edit Blog</title>
</head>
<body>

<div class="container">
    <div class="form-container">
     <h1 class="mb-0" style="color:white;">
    <img src="/images/logo8.png" alt="Logo" class="me-3">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
    Edit-Blog
</h1>



              <form action="${pageContext.request.contextPath}/editblog/${blog.id}" method="post">  
              
              <div class="form-group">
                <input type="hidden" name="id" value="${blog.id}" />
            </div>
 <div class="form-group ">
    <label for="title" class="col-md-2 col-form-label" style="color:#E0115F; font-weight: bold; font-size:18px;">Title:</label>
    <input type="text"  name="title" class="form-control white-placeholder" placeholder="Title" value="${blog.title}" />
</div>

<div class="form-group ">
    <label for="subDescription" class="col-md-2 col-form-label" style="color:#E0115F; font-weight: bold; font-size:18px;">Sub Description:</label>
    <input type="textarea"  name="subDescription" class="form-control white-placeholder" placeholder="Sub Description" style="height:110px;" value="${blog.subDescription}" />
</div>

<div class="form-group ">
    <label for="publicationDate" class="col-md-2 col-form-label" style="color:#E0115F; font-weight: bold; font-size:18px;">Publication Date:</label>
  
        <input type="date"  name="publicationDate" class="form-control white-placeholder" placeholder="Publication Date" value="${blog.publicationDate}"/>
    </div>

<div class="form-group ">
    <label for="image" class="col-md-2 col-form-label" style="color:#E0115F; font-weight: bold; font-size:18px;">Image URL:</label>
   
        <input type="text"  name="image" class="form-control white-placeholder" placeholder="Image URL" style="color:white;" value="${blog.image}"/>
    </div>



<div class="form-group ">
    <label for="author" class="col-md-2 col-form-label" style="color:#E0115F; font-weight: bold; font-size:18px;">Blog author:</label>
   
        <input type="text" id=" author" name="author" class="form-control white-placeholder" placeholder="author"value="${blog.author}" />
    </div>
            <div class="form-group">


<input type="submit" value="Submit" style="width: 130px; height: 50px; border-color: #E0115F; font-weight: bold; color: black; background-color: #E0115F; border-radius: 20px;" />
  </div>
        </form>
    </div>
 </div>
  </div>
<style>
    body {
        background-image: url('https://img.freepik.com/photos-gratuite/vue-dessus-espace-travail-ordinateur-portable-ordinateur-portable_23-2148430831.jpg?w=740&t=st=1705102807~exp=1705103407~hmac=83fb24dc494c9af088dff294a57412afdaf58d3c097deeaaa79ecdb75c54cdef');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .white-placeholder::placeholder {
        color: white;
    }

    body::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(71, 71, 71, 0.1);
    }

   .page-title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 10px; /* Adjust the margin-bottom as needed */
    color: white;
}

    .red-border {
        border: 2px solid #E0115F;
    }

    .white-text {
        color: white;
    }

.form-container {
    margin-left: -440px; /* Adjust the margin as needed */
    position: relative;
    border: 4px solid #E0115F;
    padding: 20px;
    border-radius: 10px;
    width: 150%; /* Adjust the width as needed */
    height: 580px; /* Set a fixed height */
    box-sizing: border-box; /* Include padding and border in the element's total width and height */
    overflow: hidden;
    margin-bottom: 15px; /* If you want to hide the overflow */
}


    .form-group {
        margin-bottom: 20px;
        display: flex;
        gap: 20px;
        align-items: center;
    }

    label {
        width: 120px;
        margin: 0;
        text-align: right;
        font-weight: bold;
    }

    input[type="text"],
    input[type="date"],
    input[type="password"],
    textarea {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        background-color: black;
        border: 2px solid #E0115F;
        border-radius: 10px;
        color: white;
    }

    input[type="submit"] {
        background-color: red;
        border: 2px solid white;
        color: white;
        padding: 10px 20px;
        cursor: pointer;
        width: 15%;
        border-radius: 10px;
        font-weight: bold;
        height: 50px;
    }
</style>

</body>
</html>
  