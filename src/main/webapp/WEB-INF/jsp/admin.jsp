<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Blog_Dashboard</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap2.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style2.css" rel="stylesheet">
     
</head>

<body>
    <header>
        <div class="container-fluid position-relative d-flex p-0">
            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-secondary navbar-dark">
                    <a href="/admin "class="navbar-brand mx-4 mb-3"style="color:#E0115F;">
                        <h3 style="color:#E0115F;" ><i class="fas fa-newspaper me-2" style="color: #E0115F; font-size: 24px;"></i>
Live_News<br> Dashboard</h3>
                    </a>
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown" style="margin-left: 10px;">
                            <a class="nav-link dropdown-toggle active" data-bs-toggle="dropdown" style="color:black;"><i class="fas fa-newspaper me-2"style=" background-color: #E0115F;"></i>Blogs</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="/bloglist" class="dropdown-item"><i class="fas fa-list"></i>&nbsp;Blogs List</a>
                            </div>
                        </div>

                        <div class="nav-item dropdown" style="margin-top: 20px;margin-left: 10px;">
                            <a class="nav-link dropdown-toggle active" data-bs-toggle="dropdown" style="color:black;"><i class="fas fa-comment me-2"style=" background-color: #E0115F;"></i>Comment</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a  href="/commentlist" class="dropdown-item"><i class="fas fa-list"></i>&nbsp;Comments List </a>
                            </div>
                        </div>

                        <div class="nav-item dropdown" style="margin-top: 20px;margin-left: 10px;">
                            <a class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"style="color:black;"><i class="fas fa-envelope me-2"style=" background-color: #E0115F;"></i>Contact</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="/contactlist"  class="dropdown-item"><i class="fas fa-list"></i>&nbsp;Contacts List </a>
                            </div>
                        </div>
                        <div class="nav-item dropdown" style="margin-top: 20px;margin-left: 10px;">
                            <a class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"style="color:black;"><i class="fas fa-thumbs-up me-2"style=" background-color: #E0115F;"></i>Feedback</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="/feedbacklist"  class="dropdown-item"><i class="fas fa-list"></i>&nbsp;Feedbacks List </a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- Sidebar End -->

            <!-- Content Start -->
            <div class="content d-flex flex-column mt-5">
                <div class="text-center" >
                          <%
    // Obtenez l'URL actuelle du navigateur en minuscules
    String currentURL = request.getRequestURL().toString().toLowerCase();

    if (currentURL.contains("admin")) {
%>
        <h1 style="color: #E0115F;">Explore our Live News digital application</h1>
        <p style="color: gray; font-size: 25px;">Découvrez notre application de blog innovante, conçue pour vous offrir une expérience immersive dans le monde de la narration numérique. Explorez des articles captivants, partagez vos idées, et connectez-vous avec une communauté passionnée.</p>
        <img src="https://img.freepik.com/photos-premium/concept-blog-clavier-ordinateur_172429-825.jpg?size=626&ext=jpg&ga=GA1.2.801370699.1670231069&semt=sph" alt="Your Image" style="width: 1000px; height: 500px;">
<%
    }
%>
                </div>
            </div>
        </div>
        <!-- Content End -->
    </header>

    <div class="container">
        <main role="main" class="pb-3">
            <!-- Placeholder for @RenderBody() -->
        </main>
    </div>
<style>
.footer-container {
    margin-left: 252px; /* Ajustez la valeur selon vos besoins */
    width: 84%; /* Ajustez la valeur selon vos besoins */
    position: fixed;
    bottom: 0;
}
</style>

    <!-- Footer Start -->
<div class="footer-container bg-secondary rounded-top p-2">
        <div class="bg-secondary rounded-top p-2">
            <div class="row">
                <div class="col-12 col-sm-6 text-center text-sm-start">
                    &copy; <a href=""style="color:#E0115F;">LiveNews</a>, All Right Reserved.
                </div>
                <div class="col-12 col-sm-6 text-center text-sm-end" style="margin-left: 400px;">
                    Designed By <a href="https://github.com/FatimaEzzahraSeffari?tab=repositories"style="color:#E0115F;">FatimaEzzahraSeffari</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"style="background-color:#E0115F;" ><i class="bi bi-arrow-up"></i></a>
</body>
</html>
