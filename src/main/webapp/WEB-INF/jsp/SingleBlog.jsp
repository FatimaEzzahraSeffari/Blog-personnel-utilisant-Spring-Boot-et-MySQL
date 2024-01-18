<%@ page import="com.example.demo.model.Comment" %>
<%@ page import="com.example.demo.model.Blog" %>
<%@ page import="com.example.demo.model.Feedback" %>

<%@ page import="java.util.List" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>lifeleck BLOG || HOME</title>
    <link rel="icon" href="img/favicon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap1.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/liner_icon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512..." crossorigin="anonymous" />

</head>

<body>
    <!--::header part start::-->
    <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="/welcome"> <img src="/images/logo5.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="/welcome">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AddBlog"style="color: black;"> Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AddComment"> Comment</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AddContact">Contact</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pages
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="single-blog.html">Single blog</a>
                                        <a class="dropdown-item" href="elements.html">elements</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="header_social_icon d-none d-lg-block">
                            <ul>
                                <li>
                                   
                                </li>
                                 <li><a href="#" class="d-none d-lg-block"><i class="fab fa-facebook-f"></i></a></li>
        <li><a href="#" class="d-none d-lg-block"> <i class="fab fa-twitter"></i></a></li>
        <li><a href="#" class="d-none d-lg-block"><i class="fab fa-instagram"></i></a></li>
        <li><a href="#" class="d-none d-lg-block"><i class="fab fa-skype"></i></a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg align-items-center">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-6">
                    <div class="breadcrumb_tittle text-left">
                        <h2>blog details</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="breadcrumb_content text-right">
                        <p>Home<span>/</span>blog details</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
   <!--================Blog Area =================-->
  <section class="blog_area single-post-area all_post section_padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <% 
                    Blog blog = (Blog)request.getAttribute("blog");

                    if (blog != null) {
                %>
                <div class="single-post">
                    <div class="feature-img">
                        <img class="img-fluid" src="<%= blog.getImage() %>" alt="">
                    </div>
                    <div class="blog_details">
                        <h2><%= blog.getTitle() %></h2>
                       <ul class="blog-info-link mt-3 mb-4">
    <li>
        <a href="#">
<span style="font-weight: bold; color: black;">Blog Author:</span>
            <i class="far fa-user"></i> <%= blog.getAuthor() %>
        </a>
    </li>
    <!-- Add other blog information as needed -->
</ul>

                          <p class="excert">
                               <span style="font-weight: bold; color: black;">Blog Subdescription:</span>
                         
                         <%= blog.getSubDescription() %></p>
                         <p class="excert">
       <span style="font-weight: bold; color: black;">Publication Date:</span>
        <%= (blog.getPublicationDate()) %>
    </p>
                       
                    </div>
                </div>
                <% 
                    } else {
                %>
                <!-- Gérer le cas où le blog est null -->
                Aucun blog trouvé.
                <% 
                    }
                %>
            </div>
                     

</form>

        </div>
          <form action="${pageContext.request.contextPath}/AddFeedback/${blog.id}" method="get">
    <button type="submit"style="width: 130px; height: 50px; border-color: #E0115F;font-size:15px; font-weight: bold; color: black; background-color: #E0115F; border-radius: 20px;">Add Feedback</button>
</form>
    </div>
</section>


                
                <!-- Section des commentaires -->
                <div class="navigation-top">
                    <div class="d-sm-flex justify-content-between text-center">
                        <!-- Ajoutez d'autres éléments de navigation si nécessaire -->
                    </div>
                    <div class="single_sidebar_wiget">
    <div class="sidebar_tittle">
        <h3>Comments</h3>
    </div>
    <div class="single_catagory_post post_2">
     
    
        <% List<Feedback> listFeedbacks = (List<Feedback>)request.getAttribute("listfeedbacks");
        if (listFeedbacks != null && !listFeedbacks.isEmpty()) {
            for (int c = 0; c < listFeedbacks.size(); c++) {
                Feedback feedback = listFeedbacks.get(c); %>

                <div class="category_post_img">
                    <img src="<%= feedback.getImage() %>" alt="">
                </div>
                <div class="post_text_1 pr_30">
                    <h3>Comment:<%= feedback.getText() %></h3>
                    <p><span> By <%= feedback.getName() %></span> / <%= feedback.getProfession() %></p>
                </div>

            <% }
        } else { %>
            <!-- Handle the case where no feedback is available -->
            No comments found.
        <% } %>
    </div>
</div>

                         
   <!--================Blog Area end =================-->

     <!-- footer part start-->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>about us</h4>
					<p>Heaven fruitful doesn't over the lesser days appear cree ping seasons so behold bea Place likeness female form. Lesser Was green image lights fowl.</p>
				</div>
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Contact Info</h4>
					<ul>
						<li><p>Address :Your address goes
								here, your demo address.</p></li>
						<li><p>Phone : +8880 44338899</p></li>
						<li><p>Email : info@colorlib.com</p></li>
					</ul>
				</div>
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Important Link</h4>
					<ul>
						<li><a href="#">WHMCS-bridge</a></li>
						<li><a href="#">Search Domain</a></li>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Shopping Cart</a></li>
						<li><a href="#">Our  Main Shop</a></li>
					</ul>
				</div>
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Newsletter</h4>
					<p>Heaven fruitful doesn't over lesser in days. Appear creeping seasons deve behold bearing days open</p>
					<div class="form-wrap" id="mc_embed_signup">
						<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
							<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" required="" type="email">
							<button class="click-btn btn btn-default text-uppercase"><i class="ti-arrow-right"></i></button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
							</div>

							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="copyright_text">
				<div class="row align-items-center">
					<div class="col-lg-8">
						<div class="copyright_part">
							<p class="footer-text m-0">Copyright © 2019 All rights reserved <span class="px-2">|</span> This template is Made with <a href="http://colorlib.com"><i class="ti-heart"></i></a> by <a href="http://colorlib.com">Colorlib</a></p>
						</div>
					</div>
					<div class="col-lg-4 text-center text-lg-right">
						<div class="footer-social">
							<a href="#"><i class="ti-facebook"></i></a>
							<a href="#"> <i class="ti-twitter"></i> </a>
							<a href="#"><i class="ti-instagram"></i></a>
							<a href="#"><i class="ti-skype"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
    <!-- footer part end-->

      <!-- jquery plugins here-->
      <script src="js/jquery-1.12.1.min.js"></script>
      <!-- popper js -->
      <script src="js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="js/bootstrap.min.js"></script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
</body>

</html>