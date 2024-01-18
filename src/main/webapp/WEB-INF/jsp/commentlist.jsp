<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Comment" %>
 <%@include file="admin.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
    <title>Comment List</title>
</head>
<body>
    <div class="table-responsive table-container">
        <h1 class="page-title">Comments List</h1>
        <table class="table table-bordered table-striped red-border">
            <thead>
            <tr style="color:white;">
                <th scope="row">Comment ID</th>
                <th scope="row">Name</th>
                <th scope="row">Profession</th>
                <th scope="row">Comment</th>
                <th scope="row">Image</th>
                <th>Actions</th>

            </thead>
            <tbody>
            
                <% List<Comment> listComments = (List<Comment>)request.getAttribute("listcomments");
                for (int c=0; c<listComments.size(); c++){ %>
                    <tr>
                        <td><%= listComments.get(c).getId() %></td>
                        <td><%= listComments.get(c).getName() %></td>
                        <td><%= listComments.get(c).getProfession() %></td>
                        <td><%= listComments.get(c).getText() %></td>
                        <td><img style="max-width:100px;max-height:100px;" src="<%= listComments.get(c).getImage() %>"/></td>
                        <td><a href="/editcomment/<%= listComments.get(c).getId() %>"style="background-color: green; border-color: green; width: 95%; border-radius: 10px; font-weight: bold; height: 50px; color: white; text-decoration: none; display: inline-block; text-align: center; line-height: 50px; margin-right: 5px;">Edit</a>
 &nbsp; 
<a href="#" onclick="confirmDelete('<%= listComments.get(c).getId() %>')"style="background-color: red; border-color: red; width: 95%; border-radius: 10px; font-weight: bold; height: 50px; color: white; text-decoration: none; display: inline-block; text-align: center; line-height: 50px; margin-right: 5px;">Delete</a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <a class="btn btn-success" href="/AddComment" role="button"style="background-color: #E0115F; border-color: red; width: 20%; border-radius: 10px; font-weight: bold;height:40px;">Add New Comment</a>
    </div>

    <script>
        function confirmDelete(blogId) {
            var confirmDelete = confirm("Are you sure you want to delete this comment?");
            if (confirmDelete) {
                window.location.href = "/deletecomment/" + blogId;
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