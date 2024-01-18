<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Feedback" %>
 <%@include file="admin.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <style>
        .table-red-borders td {
     color: white;
 }

 .red-border {
     border: 4px solid #E0115F;
 }

 .table-container {
     margin-left: 260px;
     position: relative;
     top: -650px;
     overflow-y: hidden;
     
 }

 
 .page-title {
     text-align: center;
     font-weight: bold;
     margin-right: 120px;
     margin-bottom: 40px;
     
 }
    </style>
    <title>Feedback List</title>
</head>
<body>
   <div class="table-responsive table-container">
        <h1 class="page-title">Feedbacks List</h1>
        <table class="table table-bordered table-striped red-border">
            <thead>
            <tr style="color:white;">
                <th scope="row">Feedback ID</th>
                <th scope="row">Name</th>
                <th scope="row">Profession</th>
                <th scope="row">Feedback</th>
                <th scope="row">Image</th>
                <th scope="row">Blog-Title</th>
               <th>Actions</th>
            </thead>
            <tbody>
          
            
                <% List<Feedback> listFeedbacks = (List<Feedback>)request.getAttribute("listfeedbacks");
                for (int c=0; c<listFeedbacks.size(); c++){ %>
                    <tr>
                        <td><%= listFeedbacks.get(c).getId() %></td>
                        <td><%= listFeedbacks.get(c).getName() %></td>
                        <td><%= listFeedbacks.get(c).getProfession() %></td>
                        <td><%= listFeedbacks.get(c).getText() %></td>
                        <td><img style="max-width:100px;max-height:100px;" src="<%= listFeedbacks.get(c).getImage() %>"/></td>
                        <td><%= listFeedbacks.get(c).getBlogId() %></td>
<td><a href="/editfeedback/<%= listFeedbacks.get(c).getId() %>"style="background-color: green; border-color: green; width: 95%; border-radius: 10px; font-weight: bold; height: 50px; color: white; text-decoration: none; display: inline-block; text-align: center; line-height: 50px; margin-right: 5px;">Edit</a>
                          &nbsp;
<a href="#" onclick="confirmDelete('<%= listFeedbacks.get(c).getId() %>')"style="background-color: red; border-color: red; width: 95%; border-radius: 10px; font-weight: bold; height: 50px; color: white; text-decoration: none; display: inline-block; text-align: center; line-height: 50px; margin-right: 5px;">Delete</a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <script>
        function confirmDelete(blogId) {
            var confirmDelete = confirm("Are you sure you want to delete this feedback?");
            if (confirmDelete) {
                window.location.href = "/deletefeedback/" + blogId;
            }
        }
    </script>
<style>
    /* Style for Delete Button */
    .delete-button {
        background-color: red;
        border-color: red;
        width: 35%;
        border-radius: 10px;
        font-weight: bold;
        height: 50px;
        color: white;
        text-decoration: none;
        display: inline-block;
        text-align: center;
        line-height: 50px;
        cursor: pointer;
    }

    /* Style for Etudiant Delete Modal */
    #deleteEtudiantModal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.5);
    }

    .modal-content {
        background-color: white;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 40%;
        text-align: center;
        border-radius: 10px;
    }

    button {
        
        color: white;
        border: none;
        padding: 10px 20px;
        margin: 5px;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</body>
</html>