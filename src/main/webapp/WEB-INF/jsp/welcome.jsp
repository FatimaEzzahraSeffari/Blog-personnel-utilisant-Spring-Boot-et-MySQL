<%@ page import="java.util.List" %>

<%@ page import="com.example.demo.model.Blog" %>
<%@ page import="com.example.demo.model.Comment" %>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>live News BLOG || HOME</title>
     <link rel="icon" href="images/favicon.png">
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


   <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="/welcome"> <img src="images/logo5.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navigation">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="/welcome"style="color: black;">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AddBlog"style="color: black;"> Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AddComment"style="color: black;"> Comment</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/AddContact"style="color: black;">Contact</a>
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

    <!-- banner post start-->
    <section class="banner_post">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <div class="banner_post_1 banner_post_bg_1">
                 <img src="https://www.cnom.org.ma/sites/default/files/articles/317830234_442107774789841_1329136558097287000_n%20%281%29.jpeg" alt="Banner Image 1">
                    <div class="banner_post_iner text-center"style= "color: #E0115F">
                        <h5> Live / News</h5></a> 
                        <h2>At the Heart of the Action: News and Analysis on the Moroccan National Football Team.</h2>
                        <p>Posted on April 15, 2019</p>
                    </div>
                </div><div class="banner_post_1 banner_post_bg_2">
                 <img src="https://img.freepik.com/photos-gratuite/blonde-jeune-femme-robe-verte-elegante_155003-2663.jpg?size=626&ext=jpg&uid=R128883348&ga=GA1.2.801370699.1670231069&semt=sph" alt="Banner Image 1"style="height:548px;width:620px;">
                    <div class="banner_post_iner text-center">
                        <h5> Live / News</h5></a> 
                        <h2>Blogging Brilliance: Unleash Your Creativity with Us!
                            kind say void </h2>
                        <p>Posted on April 15, 2019</p>
                    </div>
                </div>
                <div class="banner_post_1 banner_post_bg_3">
                 <img src="https://img.freepik.com/photos-gratuite/image-manifestation-protestation-massive-drapeau-palestinien_125540-4758.jpg?size=626&ext=jpg&uid=R128883348&ga=GA1.2.801370699.1670231069&semt=sph" alt="Banner Image 1"style="height:548px;width:620px;">
                    <div class="banner_post_iner text-center">
                        <h5>Live / News</h5></a> 
                        <h2>Crafting Stories, Building Dreams: Blogging Beyond Boundaries
                            kind say void </h2>
                        <p>Posted on April 15, 2019</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- banner post end-->

    <!-- subscribe form start-->
<!-- subscribe form start-->
<div class="subscribe_form padding_top margin_top" style="background-color: #E0115F;">
    <div class="container">
        
                <div class="subscribe_form_iner">
                    <form>
                        <div class="form-row align-items-center justify-content-center">
                            <div class="col-md-12 col-lg-3">
                                <h3 style="color: white; font-weight: bold;">Discover, Share, Inspire: Your Daily Blogging Hub!</h3>
                            </div>
                           
                            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
<a href="/AddBlog" class="btn_1" style="background-color:black; color: #E0115F;font-size:18px;font-weight: bold;" onclick="handleButtonClick(this)">New Blog</a>                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



    <!-- subscribe form end-->

    <!-- feature_post start-->
    <section class="all_post section_padding">
       <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
               
                    <% List<Blog> listBlogs = (List<Blog>)request.getAttribute("listblogs");

                    for (int c = 0; c < listBlogs.size(); c++) {
                        Blog blog = listBlogs.get(c); %>

                        <div class="col-lg-12">
                            <div class="single_post post_1 feature_post">
                                <div class="single_post_img">
                                    <img src="<%= blog.getImage() %>" alt="">
                                </div>
                                <div class="single_post_text text-center">
                                   <a href="/SingleBlog/<%= blog.getId() %>"><h5>Live / News</h5></a>
<a href="/SingleBlog/<%= blog.getId() %>"><h2><%= blog.getTitle() %></h2></a>

                                    <p>Posted on <%= blog.getPublicationDate() %></p>
                                </div>
                            </div>
                        </div>
                    <% } %>
                </div>
                    <div class="page_pageniation">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    
                        
                      <div class="single_sidebar_wiget">
    <div class="sidebar_tittle">
        <h3>Popular Feeds</h3>
    </div>
    <div class="single_catagory_post post_2">  
         <% List<Comment> listComments = (List<Comment>)request.getAttribute("listcomments");
for (int c = 0; c < listComments.size(); c++) {
    Comment comment = listComments.get(c); %>

    <div class="category_post_img">
        <img src="<%= comment.getImage() %>" alt="">
    </div>
    <div class="post_text_1 pr_30">
        <a href="#">
            <h3><%= comment.getText() %></h3>
        </a>
        <p><span> By <%= comment.getName() %></span> / <%= comment.getProfession() %></p>
    </div>

<% } %>

                        
                        <div class="single_sidebar_wiget">
                            <div class="sidebar_tittle">
                                <h3>Share this post</h3>
                            </div>
                            <div class="social_share_icon tags">
                                <ul class="list-unstyled">
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                      <li><a href="#" > <i class="fab fa-twitter"></i></a></li>
        <li><a href="#" ><i class="fab fa-instagram"></i></a></li>
        <li><a href="#"><i class="fab fa-skype"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- feature_post end-->

    <!-- social_connect_part part start-->
    <section class="social_connect_part">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-12">
                    <div class="social_connect">
                    <div class="single-social_connect">
                        <div class="social_connect_img">
                            <img src="images/instagram_2.png" class="" alt="blog">
                            <div class="social_connect_overlay">
                                <a href="#"><span class="fab fa-instagram"></span></a> 
                            </div>
                        </div>
                    </div>
                    <div class="single-social_connect">
                        <div class="social_connect_img">
                            <img src="images/instagram_2.png" class="" alt="blog">
                            <div class="social_connect_overlay">
                                <a href="#"><span class="fab fa-instagram"></span></a> 
                            </div>
                        </div>
                    </div>
                    <div class="single-social_connect">
                        <div class="social_connect_img">
                            <img src="images/instagram_3.png" class="" alt="blog">
                            <div class="social_connect_overlay">
                                <a href="#"><span class="fab fa-instagram"></span></a> 
                            </div>
                        </div>
                    </div>
                    <div class="single-social_connect">
                        <div class="social_connect_img">
                            <img src="images/instagram_4.png" class="" alt="blog">
                            <div class="social_connect_overlay">
                                <a href="#"><span class="fab fa-instagram"></span></a> 
                            </div>
                        </div>
                    </div>
                    <div class="single-social_connect">
                        <div class="social_connect_img">
                            <img src="images/instagram_5.png" class="" alt="blog">
                            <div class="social_connect_overlay">
                                <a href="#"><span class="fab fa-instagram"></span></a> 
                            </div>
                        </div>
                    </div>
                    <div class="single-social_connect">
                        <div class="social_connect_img">
                            <img src="images/instagram_6.png" class="" alt="blog">
                            <div class="social_connect_overlay">
                                <a href="#"><span class="fab fa-instagram"></span></a> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- social_connect_part part end-->

     <!-- footer part start-->
	<footer class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>A propos de nous</h4>
					<p>Bienvenue chez liveNEWS, ou linnovation et la passion se rencontrent. 
					Fondee en 2024, notre entreprise sengage a des blogs sur des diferents domaines. 
					Nous croyons en vos valeurs fondamentales,la qualite, la transparence,...</p>
				</div>
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Contact Info</h4>
					<ul>
						<li><p>Address :News 
								News address.</p></li>
						<li><p>Phone : +212 00000000000</p></li>
						<li><p>Email : info@news.com</p></li>
					</ul>
				</div>
				
				<div class="col-xl-3 col-lg-6 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Newsletter</h4>
					<p>If you have any suggestion contact us via this link:</p>
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
							<p class="footer-text m-0">Copyright © 2024 All rights reserved <span class="px-2">|</span> This Application is Made with <a href="https://github.com/FatimaEzzahraSeffari">
							<i class="fab fa-heart"></i></a> by <a href="https://github.com/FatimaEzzahraSeffari">FatimaEzzahraSEFFARI</a></p>
						</div>
					</div>
					<div class="col-lg-4 text-center text-lg-right">
						<div class="footer-social">
							<a href="#"><i class="fab fa-facebook"></i></a>
							<a href="#"> <i class="fab fa-twitter"></i> </a>
							<a href="#"><i class="fab fa-instagram"></i></a>
							<a href="#"><i class="fab fa-skype"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
    <!-- footer part end-->
     <!-- jquery -->
  <script src="${pageContext.request.contextPath}/js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- custom js -->
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

</body>
</html>
<style>
#navigation li {
    display: inline-block;
    margin-right: 20px;
}

#navigation a {
    text-decoration: none;
    color: white;
    font-weight: bold;
    font-size: 16px;
}

#navigation a:hover {
    color: #ffc107; /* Change this to your desired hover color */
}
/* Style for the search input */
#wrap {
    position: relative;
}

#search {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    font-size: 14px;
}

.ti-search {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    color: #777;
}

/* Style for the social icons */
.header_social_icon ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

.header_social_icon ul li {
    display: inline-block;
    margin-right: 15px;
}

.header_social_icon a i {
    font-size: 24px;
    color: #777;
}

.header_social_icon a:hover i {
    color: red;
}
.search-container {
    position: relative;
}

#search {
    padding-right: 30px; /* Adjust the padding to leave space for the icon */
}

.fas.fa-search {
    position: absolute;
    top: 50%;
    right: 10px; /* Adjust the right distance */
    transform: translateY(-50%);
    color: #777; /* Adjust the color if needed */
}


</style>