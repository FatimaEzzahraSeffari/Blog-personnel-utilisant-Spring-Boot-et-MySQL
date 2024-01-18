<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Blog" %>
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
   
    <title>Blog List</title>
</head>
<body>
    <div class="table-responsive table-container">
        <h1 class="page-title">Blogs List</h1>
        <table class="table table-bordered table-striped red-border">
            <thead>
            <tr style="color:white;">
                <th scope="row">Blog ID</th>
                <th scope="row">Title</th>
                <th scope="row">SubDescription</th>
                <th scope="row">Publication Date</th>
                <th scope="row">Image</th>
                <th scope="row">Author</th>
               <th>Actions</th>
                 </tr>
            </thead>
            <tbody>
            
                <% List<Blog> listBlogs = (List<Blog>)request.getAttribute("listblogs");
                for (int c=0; c<listBlogs.size(); c++){ %>
                    <tr>
                        <td><%= listBlogs.get(c).getId() %></td>
                        <td><%= listBlogs.get(c).getTitle() %></td>
                        <td><%= listBlogs.get(c).getSubDescription() %></td>
                        <td><%= listBlogs.get(c).getPublicationDate() %></td>
                        <td><img style="max-width:100px;max-height:100px;" src="<%= listBlogs.get(c).getImage() %>"/></td>
                        <td><%= listBlogs.get(c).getAuthor() %></td>
                        <td><a href="/editblog/<%= listBlogs.get(c).getId() %>"style="background-color: green; border-color: green; width: 95%; border-radius: 10px; font-weight: bold; height: 50px; color: white; text-decoration: none; display: inline-block; text-align: center; line-height: 50px; margin-right: 5px;">Edit</a>
                      &nbsp; 
<a href="#" onclick="confirmDelete('<%= listBlogs.get(c).getId() %>')"style="background-color: red; border-color: red; width: 95%; border-radius: 10px; font-weight: bold; height: 50px; color: white; text-decoration: none; display: inline-block; text-align: center; line-height: 50px; margin-right: 5px;">Delete</a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <a class="btn btn-success" href="/AddBlog" role="button"style="background-color: #E0115F; border-color: red; width: 20%; border-radius: 10px; font-weight: bold;height:40px;">Add New Blog</a>
    </div>

    <script>
        function confirmDelete(blogId) {
            var confirmDelete = confirm("Are you sure you want to delete this blog?");
            if (confirmDelete) {
                window.location.href = "/deleteblog/" + blogId;
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