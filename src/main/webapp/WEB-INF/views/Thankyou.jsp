
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>Online Tutoring System</title>

		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="<%=request.getContextPath()%>/resources/images/fav-icon/icon.png">


		<!-- Main style sheet -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/responsive.css">


		<!-- Fix Internet Explorer ______________________________________-->

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			<script src="<%=request.getContextPath()%>/resources/vendor/html5shiv.js"></script>
			<script src="<%=request.getContextPath()%>/resources/vendor/respond.js"></script>
		<![endif]-->
			
	</head>

	<body>
		<div class="main-page-wrapper about-us-v1-page">


			<!-- Header _________________________________ -->
			<header class="main-header">
			    <!-- _______________________ Theme Menu _____________________ -->

				<div class="container">
					<jsp:include page="header.jsp"></jsp:include> <!-- /.main-menu-wrapper -->
				</div>
			</header>


			<!-- Inner Page Main Banner __________________ -->
			<div class="inner-page-banner">
				<div class="opacity">
					<div class="container">
						<h2></h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>Thank you</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->


			<!-- Error Page _________________________ -->
			<div class="error-page">
				<div class="container">
					<div class="error-wrapper clear-fix">
						<img src="<%=request.getContextPath()%>/resources/images/thankyou.jpeg" alt="" class="float-left wow fadeInLeft">
						<div class="text float-right wow fadeInRight">
							<h2>THANK <span class="p-color opps"></span> <span class="last p-color">YOU!</span></h2>
							<p>FOR PARTICIPATING IN THE EXAM.</p>
							<a href="index.html" class="tran3s"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> GO BACK HOME</a>
						</div> <!-- /.text -->
					</div> <!-- /.error-wrapper -->
				</div> <!-- /.container -->
			</div> <!-- /.error-page -->


	        <!-- Footer ______________________________ -->
	        <footer>
	        	<div class="top-footer">
	        		<div class="container">
	        			<div class="row">
	        				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 footer-about">
	        					<h4>About edutech</h4>
	        					<p>EDUTECH Mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the sys- tem, and expound the actual teachings of the great explorer</p>
	        					<a href="about-us.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> About us</a>
	        					<a href="our-teacher.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Team Member</a>
	        					<ul>
									<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#" class="tran3s round-border icon"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
									<li><a href="#" class="tran3s round-border icon"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								</ul>
	        				</div> <!-- /.footer-about -->

	        				<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 footer-contact">
	        					<h4>CONTACT US</h4>
	        					<ul>
	        						<li>
	        							<i class="fa fa-envelope-o" aria-hidden="true"></i>
	        							<a href="mailto:helpneed@edutech.com" class="tran3s">helpneed@edutech.com</a>
	        						</li>
	        						<li>
	        							<i class="fa fa-phone" aria-hidden="true"></i>
	        							<a href="tel:+8801712570051" class="tran3s">+8801712570051</a>
	        						</li>
	        						<li><i class="fa fa-map-marker" aria-hidden="true"></i>Edine rode,1234 Plot/RS ,CA</li>
	        					</ul>
	        				</div> <!-- /.footer-contact -->

	        				<div class="col-lg-2 col-md-6 col-sm-6 col-xs-12 footer-quick-link">
	        					<h4>Quick link</h4>
	        					<ul>
	        						<li><a href="course-v2.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Our Courses</a></li>
	        						<li><a href="blog-v1.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> News/Blog</a></li>
	        						<li><a href="event.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Event</a></li>
	        						<li><a href="our-teacher.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Team Member</a></li>
	        						<li><a href="faq.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Privacy Policy</a></li>
	        						<li><a href="faq.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Help</a></li>
	        						<li><a href="contact-us.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Support</a></li>
	        						<li><a href="#" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Education</a></li>
	        						<li><a href="our-teacher.jsp" class="tran3s"><i class="fa fa-caret-right" aria-hidden="true"></i> Teacher</a></li>
	        					</ul>
	        				</div> <!-- /.footer-quick-link -->

	        				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 footer-event">
	        					<h4>Latest events</h4>

	        					<div id="footer-event-carousel" class="carousel slide" data-ride="carousel">
								  	  <!-- Indicators -->
									  <ol class="carousel-indicators">
									    <li data-target="#footer-event-carousel" data-slide-to="0" class="active"></li>
									    <li data-target="#footer-event-carousel" data-slide-to="1"></li>
									    <li data-target="#footer-event-carousel" data-slide-to="2"></li>
									  </ol>

									  <!-- Wrapper for slides -->
									  <div class="carousel-inner" role="listbox">
									    <div class="item active">
									      <ul>
									      	<li>
									      		<div class="date p-color-bg">27 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>Learning Management</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>

									      	<li>
									      		<div class="date p-color-bg">19 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>LEARN COUSES ONLINE</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>

									      	<li>
									      		<div class="date p-color-bg">07 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>COURSES FOR FREE GED</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>
									      </ul>
									    </div> <!-- /.item -->

									    <div class="item">
									      <ul>
									      	<li>
									      		<div class="date p-color-bg">27 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>Learning Management</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>

									      	<li>
									      		<div class="date p-color-bg">19 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>LEARN COUSES ONLINE</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>

									      	<li>
									      		<div class="date p-color-bg">07 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>COURSES FOR FREE GED</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>
									      </ul>
									    </div> <!-- /.item -->

									    <div class="item">
									      <ul>
									      	<li>
									      		<div class="date p-color-bg">27 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>Learning Management</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>

									      	<li>
									      		<div class="date p-color-bg">19 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>LEARN COUSES ONLINE</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>

									      	<li>
									      		<div class="date p-color-bg">07 <span>Dec</span></div>
									      		<a href="event-details.jsp"><h6>COURSES FOR FREE GED</h6></a>
									      		<ul>
					        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
					        						<li><i class="fa fa-tags" aria-hidden="true"></i> Gpur Academy</li>
					        					</ul>
									      	</li>
									      </ul>
									    </div> <!-- /.item -->  
									</div>
								</div> <!-- /#footer-event-carousel -->
	        				</div> <!-- /.footer-event -->
	        			</div> <!-- /.row -->
	        		</div> <!-- /.container -->
	        	</div> <!-- /.top-footer -->

	        	<div class="bottom-footer">
	        		<p>Copyright 2016 &copy; <a href="" class="tran3s" target="_blank">TheMazine</a> <span>|</span> Designed by <span class="p-color">Mahfuz Riad</span></p>
	        	</div> <!-- /.bottom-footer -->
	        </footer>

	        <!-- Scroll Top Button -->
			<button class="scroll-top tran3s p-color-bg">
				<i class="fa fa-angle-up" aria-hidden="true"></i>
			</button>
			<!-- pre loader  -->
		 	<div id="loader-wrapper">
				<div id="loader"></div>
			</div>





		<!-- Js File_________________________________ -->

		<!-- j Query -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/jquery-2.1.4.js"></script>

		<!-- Bootstrap JS -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/bootstrap/bootstrap.min.js"></script>

		<!-- Vendor js _________ -->
		<!-- revolution -->
		<script src="<%=request.getContextPath()%>/resources/vendor/revolution/jquery.themepunch.tools.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/vendor/revolution/jquery.themepunch.revolution.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/revolution/revolution.extension.slideanims.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/revolution/revolution.extension.layeranimation.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/revolution/revolution.extension.navigation.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/revolution/revolution.extension.kenburn.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/revolution/revolution.extension.actions.min.js"></script>

		<!-- Google map js -->
		<script src="http://maps.google.com/maps/api/js"></script> <!-- Gmap Helper -->
		<script src="<%=request.getContextPath()%>/resources/vendor/gmap.js"></script>
		<!-- Bootstrap Select JS -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/bootstrap-select/dist/<%=request.getContextPath()%>/resources/js/bootstrap-select.js"></script>
		<!-- Time picker -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/time-picker/jquery.timepicker.min.js"></script>
		<!-- WOW js -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/WOW-master/dist/wow.min.js"></script>
		<!-- owl.carousel -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/owl-carousel/owl.carousel.min.js"></script>
		<!-- js count to -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/jquery.appear.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/jquery.countTo.js"></script>

		<!-- Theme js -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/theme.js"></script>

		</div> <!-- /.main-page-wrapper -->
	</body>
</html>




