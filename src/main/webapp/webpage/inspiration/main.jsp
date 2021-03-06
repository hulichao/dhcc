<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<title>个人主页</title>

<!--==== bootstrap ====-->
<link href="${ctxStatic}/inspiration/css/bootstrap.min.css" rel="stylesheet">
<!--==== font-awesome ====-->
<link href="${ctxStatic}/inspiration/css/font-awesome.min.css" rel="stylesheet">
<!--==== owl-carousel ====-->
<link href="${ctxStatic}/inspiration/css/owl.carousel.css" rel="stylesheet">
<!--==== magnific-popup ====-->
<link href="${ctxStatic}/inspiration/css/magnific-popup.css" rel="stylesheet">
<!--==== animate css ====-->
<link href="${ctxStatic}/inspiration/css/animate.min.css" rel="stylesheet">

<!--==== style css ====-->
<link href="${ctxStatic}/inspiration/css/style.css" rel="stylesheet">
<!--==== responsive css ====-->
<link href="${ctxStatic}/inspiration/css/responsive.css" rel="stylesheet">

<!--==== jquery ====-->
<script src="${ctxStatic}/inspiration/js/jquery-2.1.4.min.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="js/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<body>
	<audio controls="controls" hidden="no" autoplay="autoplay" loop="loop">
  		<!-- <source src="你要播放的音乐.ogg" type="audio/ogg" /> -->
  		<source src="${ctxStatic}/music/SeeYouAgain.mp3" type="audio/mpeg" />
	</audio>
</body>

<!--==== DEMO COLOR PANEL =====-->
<div class="demo_panel_box">
  <div class="color_panel_box">
	 <div class="spiner_button slide_in_out"><i class="fa fa-cog fa-spin"></i></div>
	  <span class="red_color"></span>
	  <span class="blue_color"></span>
	  <span class="yellow_color"></span>
	  <span class="purple_color"></span>
	  <span class="pink_color"></span>
	  <span class="green_color"></span>
  </div>
</div>
<!--==== DEMO COLOR PANEL ===-->


<!--===== Preloader ====-->
<div class="preloader">
	<div class="spinner">
	  <div class="double-bounce1"></div>
	  <div class="double-bounce2"></div>
	</div>
</div>


 <!--=====****************** INTRO SECTION ****************************=====-->
<div id="home" class="intro-section">

 <!--===== HEADER AREA =====-->
	<header class="navbar custom-navbar">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="logo">
					   <div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<a href="#home">Johnathan</a> <!--== logo ==-->
					</div>
				</div>
				
				<div class="col-md-9 col-sm-9 col-xs-12">
				   <nav class="main-menu">
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav"> <!--== manin menu ==-->
							<li class="active smooth-scroll"><a class="theme-color" href="#home">Home</a></li>
							<li class="smooth-scroll"><a class="theme-color" href="#about">About</a></li>
							<li class="smooth-scroll"><a class="theme-color" href="#services">service</a></li>
							<li class="smooth-scroll"><a class="theme-color" href="#portfolio">work</a></li>
							<li class="smooth-scroll"><a class="theme-color" href="#contact">contact</a></li>
						</ul>
					</div>
					</nav>
				</div>
				
			</div>
		   
		</div>
	</header>
<!--===== END HEADER AREA ======-->
	 
<!--======= WELCOME AREA =======-->
	<div class="welcome-area">
	  <div id="particles-js"></div>
	   <div class="welcome-table">
		   <div class="welcome-cell">
				<div class="container">
					<div class="row">
					   
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="welcome-text text-center">
								<h4>I'm 殷小白</h4>
								<h1>运维 & 开发 <span class="theme-color">架构</span></h1>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<a href="#about" class="scroll-btn banner-icon theme-color"><i class="fa fa-angle-double-down"></i></a>
	</div>
	<!--===== END WELCOME AREA =====-->
	
</div>
<!--=====***************** END INTRO SECTION ***********************=====-->


<!--=====************** ABOUT SECTION ***************=====-->
<section id="about" class="about-section section-padding">
	<div class="container">
		<div class="row">
		   
			<div class="col-md-4">
			   <div class="author-image wow fadeInLeft" data-wow-delay="0.4s">
					<!-- <img src="${ctxStatic}/inspiration/images/author.jpg" alt="Author Image"> --> <!--=== author image ===-->
					<img src="${ctxStatic}/inspiration/images/author.jpg" alt="Author Image">
				<div class="social-icon theme-color"> <!--=== author social icons ===-->
						<a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
						<a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
						<a href="#" target="_blank"><i class="fa fa-google-plus"></i></a>
						<a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						<a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
						<a href="#" target="_blank"><i class="fa fa-youtube-play"></i></a>
					</div>
				</div>
			</div>
			
			<div class="col-md-8">
			   <div class="about-text wow fadeInRight" data-wow-delay="0.4s">
					<h3>Hello, that's me!</h3>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
					<a class="btn theme-color" href="#"><i class="fa fa-download"></i> download resume</a> <a class="scroll-btn btn extra" href="#portfolio">see work</a>
				</div>
			</div>
		</div>
		
	</div>
</section>
<!--=====*********** END ABOUT SECTION **************=====-->


<!--======**************** SERVICES SECTION ******************=======-->
<section id="services" class="services-section section-padding">
	<div class="container">
	   <div class="row">
		<div class="col-md-12">
			<div class="section-title">
				<h2><span class="theme-color">What i offer</span> Services</h2>
			</div>
		</div>
	</div>
		<div class="row">
			
			
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="single-services text-center wow fadeInUp" data-wow-delay="0.2s">
					<div class="servise-icon">
						<i class="fa fa-pencil-square"></i>
					</div>
					<h4>design</h4>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="single-services text-center wow fadeInUp" data-wow-delay="0.4s">
					<div class="servise-icon">
						<i class="fa fa-codepen"></i>
					</div>
					<h4>idea</h4>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="single-services last-service text-center wow fadeInUp" data-wow-delay="0.6s">
					<div class="servise-icon">
						<i class="fa fa-laptop"></i>
					</div>
					<h4>development</h4>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			
		</div>
	</div>
</section>
<!--======*************** END SERVICES SECTION ****************=======-->


<!--======********** PORTFOLIO SECTION *********======-->
<section id="portfolio" class="section-padding">
<div class="container">
	<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2><span class="theme-color">My recent work</span> Prtfolio</h2>
				</div>
			</div>
		</div>

	<div class="row">
		<div class="col-md-4 col-sm-6 single-work">
			<a href="${ctxStatic}/inspiration/images/portfolio/item1.jpg" class="image-popup">
			<img src="${ctxStatic}/inspiration/images/portfolio/item1.jpg" alt="">
			<div class="itemHover">
				<div class="work-table">
					<div class="table-cell">
						<div class="hover-content">
							<i class="fa fa-camera"></i>
							<h6>Category / Identity</h6>
						</div>
					</div>
				</div>
			  </div>
			</a>
		</div>   

		<div class="col-md-4 col-sm-6 single-work">
			<a href="${ctxStatic}/inspiration/images/portfolio/item2.jpg" class="image-popup">
				<img src="${ctxStatic}/inspiration/images/portfolio/item2.jpg" alt="">
					<div class="itemHover">
					<div class="work-table">
						<div class="table-cell">
							<div class="hover-content">
								<i class="fa fa-camera"></i>
								<h6>Category / Identity</h6>
							</div>
						</div>
					</div>
				  </div>
			</a>
		</div>  

		<div class="col-md-4 col-sm-6 single-work">
			<a href="${ctxStatic}/inspiration/images/portfolio/item3.jpg" class="image-popup">
				<img src="${ctxStatic}/inspiration/images/portfolio/item3.jpg" alt="">
			   <div class="itemHover">
					<div class="work-table">
						<div class="table-cell">
							<div class="hover-content">
								<i class="fa fa-camera"></i>
								<h6>Category / Identity</h6>
							</div>
						</div>
					</div>
				  </div>
			</a>
		</div>  

		<div class="col-md-4 col-sm-6 single-work">
			<a href="${ctxStatic}/inspiration/images/portfolio/item4.jpg" class="image-popup">
				<img src="${ctxStatic}/inspiration/images/portfolio/item4.jpg" alt="">
				<div class="itemHover">
					<div class="work-table">
						<div class="table-cell">
							<div class="hover-content">
								<i class="fa fa-camera"></i>
								<h6>Category / Identity</h6>
							</div>
						</div>
					</div>
				  </div>
			</a>
		</div>  
		
		<div class="col-md-4 col-sm-6 single-work">
			<a href="${ctxStatic}/inspiration/images/portfolio/item5.jpg" class="image-popup">
				<img src="${ctxStatic}/inspiration/images/portfolio/item5.jpg" alt="">
				<div class="itemHover">
					<div class="work-table">
						<div class="table-cell">
							<div class="hover-content">
								<i class="fa fa-camera"></i>
								<h6>Category / Identity</h6>
							</div>
						</div>
					</div>
				  </div>
			</a>
		</div>  

		<div class="col-md-4 col-sm-6 single-work">
			<a href="${ctxStatic}/inspiration/images/portfolio/item6.jpg" class="image-popup">
				<img src="${ctxStatic}/inspiration/images/portfolio/item6.jpg" alt="">
				<div class="itemHover">
					<div class="work-table">
						<div class="table-cell">
							<div class="hover-content">
								<i class="fa fa-camera"></i>
								<h6>Category / Identity</h6>
							</div>
						</div>
					</div>
				  </div>
			</a>
		</div>  

	</div><!--/.row-->
</div><!--/.container-->
</section>
<!--======************ END PORTFOLIO SECTION **************======-->


<!--======**************** REVIEW SECTION *****************========-->
<div id="review" class="review-section section-padding">
	<div class="container">
	   <div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2><span class="theme-color">Here's what others say about me</span> Reviews</h2>
				</div>
			</div>
		</div>
		<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				 <div class="review-full-area">
				   <div class="review-list">
					<div class="single-review"> <!-- start single carousel item -->
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
						</div>
						<h5 class="author"> Paul Flavius. <span>CEO Devsoft Inc</span></h5>
					</div> <!-- end single carousel item -->
					<div class="single-review"> <!-- start single carousel item -->
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
						</div>
						<h5 class="author"> Paul Flavius,<span>CEO Devsoft Inc</span></h5>
					</div> <!-- end single carousel item -->
					<div class="single-review"> <!-- start single carousel item -->
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
						</div>
						<h5 class="author"> Paul Flavius,<span>CEO Devsoft Inc</span></h5>
					</div> <!-- end start single carousel item -->
					<div class="single-review"> <!-- start single carousel item -->
						<div class="review-content">
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
						</div>
						<h5 class="author"> Paul Flavius,<span>CEO Devsoft Inc</span></h5>
					</div> <!-- end start single carousel item -->
				</div>
					</div>
			</div>
			
		</div>
	</div>
</div>
<!--======************* END REVIEW SECTION ***************========-->


<!--======******************** CONTACT INFO SECTION **********************======-->
  <section id="contact" class="contact-area section-padding">
<div class="container">
   <div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h2><span class="theme-color">Get in tuch with me</span> Contact</h2>
				</div>
			</div>
		</div>
	<div class="row">
		<div class="col-md-12 wow fadeInUp" data-wow-delay="0.4s">
		  <!-- Start Contact Form -->
			<form id="contactForm" class="contact-form shake" data-toggle="validator">
			 <div class="row">
				 <div class="col-md-6">
					  <div class="form-group">
				<div class="controls">
				  <input type="text" id="name" class="form-control" placeholder="Name" required data-error="Please enter your name">
				  <div class="help-block with-errors"></div>
				</div>
			  </div>
				 </div>
				 <div class="col-md-6">
					 <div class="form-group">
				<div class="controls">
				  <input type="email" class="email form-control" id="email" placeholder="Email" required data-error="Please enter your email">
				  <div class="help-block with-errors"></div>
				</div>
			  </div>
				 </div>
			 </div>
			 
			 <div class="row">
				 <div class="col-md-12">
					 <div class="form-group">
				<div class="controls">
				  <input type="text" id="msg_subject" class="form-control" placeholder="Subject" required data-error="Please enter your message subject">
				  <div class="help-block with-errors"></div>
				</div>
			  </div>
				 </div>
			 </div>
			 
			 <div class="row">
				 <div class="col-md-12">
					 <div class="form-group">
				<div class="controls">
				  <textarea id="message" rows="7" placeholder="Message" class="form-control" required data-error="Write your message"></textarea>
				  <div class="help-block with-errors"></div>
				</div>  
			  </div>
				 </div>
			 </div>
			 <div class="row">
				 <div class="col-md-12">
					 <button type="submit" id="submit" class="btn btn-effect theme-color"><i class="fa fa-check"></i> Send</button>
				 </div>
			 </div>
			 
			<div class="row">
				<div class="col-md-12">
					<div id="msgSubmit" class="h3 text-center hidden"></div> 
			  <div class="clearfix"></div>   
				</div>
			</div>
			  

			</form>     
			<!-- End Contact Form -->
		</div>
	</div>
</div>
</section>
<!--======**************** END CONTACT INFO SECTION ********************======-->


<!--======******************* FOOTER SECTION ******************======-->
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
			   <div class="footer-text wow fadeInUp" data-wow-delay="0.4s">
					<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
				</div>
			</div>
		</div>
	</div>
</footer>
<!--======******************* END FOOTER SECTION ***************======-->


<!--==== plugins js ====-->
<script src="${ctxStatic}/inspiration/js/plugins.js"></script>
<!--==== magnific-popup-options js ====-->
<script src="${ctxStatic}/inspiration/js/magnific-popup-options.js"></script>
<!--==== validator js ====-->
<script src="${ctxStatic}/inspiration/js/validator.min.js"></script>
<!--==== particles js ====-->
<script src="${ctxStatic}/inspiration/js/particles.min.js"></script>
<!--==== app js ====-->
<script src="${ctxStatic}/inspiration/js/app.js"></script>
<!--==== app js ====-->
<script src="${ctxStatic}/inspiration/js/wow-1.3.0.min.js"></script>
<!--==== main js ====-->
<script src="${ctxStatic}/inspiration/js/main.js"></script>

<!-- 即时聊天插件  开始-->
<link href="${ctxStatic}/layer-v2.3/layim/layui/css/layui.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript">
var currentId = '${fns:getUser().loginName}';
var currentName = '${fns:getUser().name}';
var currentFace ='${fns:getUser().photo}';
var url="${ctx}";
var static_url="${ctxStatic}";
var wsServer = 'ws://'+window.document.domain+':8668'; 

</script>
<!--webscoket接口  -->
<script src="${ctxStatic}/layer-v2.3/layim/layui/layui.js"></script>

<script src="${ctxStatic}/layer-v2.3/layim/layim.js"></script>
<!-- 即时聊天插件 结束 -->

</body>
</html>