 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
						<h2>ABOUT US</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>About</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->



			<!-- Welcome Section ___________________________ -->
	        <div class="welcome-section-two">
	        	<div class="container">
	        		<div class="section-title wow fadeInUp">
	        			<h2 class="p-color">Welcome to edutech</h2>
	        			<h5>awesome success with student</h5>
	        			<p> We Provide high-quality, innovative, cloud-based learning and performance support resources. Enabling Students to achieve competitive advantages through superior enterprise-wide knowledge and skills.</p>
	        		</div> <!-- /.section-title -->

	        		<div class="row">
	        			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeInUp">
	        				<h3><i class="fa fa-graduation-cap" aria-hidden="true"></i> LEARN COUSES first</h3>
	        				<p>Our Mission Increase access to high-quality education for everyone, everywhere Enhance teaching and learning on campus and online Advance teaching and learning</p>
	        			</div>
	        			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeInUp">
	        				<h3><i class="fa fa-tags" aria-hidden="true"></i> 440 Courses available</h3>
	        				<p>Our online program offer more  than 440 course so that students get a chanage to study wide range of subjects </p>
	        			</div>
	        			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeInUp">
	        				<h3><i class="fa fa-diamond" aria-hidden="true"></i> Everything you need</h3>
	        				<p>Edutech had made all courses just one click away from you. </p>
	        			</div>
	        		</div>
	        	</div> <!-- /.container -->
	        </div> <!-- /.welcome-section-two -->



	        <!-- Course Finder  ______________________________ -->
	        <div class="course-search-option wow fadeInUp">
	        	<div class="container">
	        		<form action="#">
	        			<div class="row">
	        				<div class="single-input float-left input-one">
	        					<div>
	        						<input type="text" placeholder="Enter course name">
	        					</div> 
	        				</div> <!-- /.single-input -->
							
							<div class="single-input float-left input-two">
	        					<div>
	        						<select class="selectpicker" data-live-search="true">
										<option>Select category</option>
										   <c:forEach var="data" items="${coursedata }">
										     <option>${data.getCoursename()}</option>
										   </c:forEach>
									</select>
	        					</div>
	        				</div> <!-- /.single-input -->


	        				<div class="single-input float-left input-two time-select">
	        					<div>
	        						<input type="text" placeholder="Time" class="timepicker">
									<span><i class="fa fa-caret-down" aria-hidden="true"></i></span>
	        					</div>
	        				</div> <!-- /.single-input -->
							
							<div class="single-input float-left input-three">
	        					<div>
	        						<button class="tran3s p-color-bg themehover">search</button>
	        					</div>
	        				</div> <!-- /.single-input -->

	        			</div>
	        		</form>
	        	</div>
	        </div> <!-- /.course-search-option -->




	        <!-- Our Teacher ________________________ -->
	        <div class="our-teacher wow fadeInUp">
	        	<div class="container">
	        		<div class="theme-title">
	        			<h2>Our teachers</h2>
	        			<p>Our talent tainer with 10 years experience professional</p>
	        		</div>

	        		<div class="row">
	        			<div class="theme-slider">
	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/2.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Jaflika tesla</h6></a>
		        					<p>Creative Director</p>
	        					</div>
	        				</div> <!-- /.item -->

	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/3.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Mahfuz Riad</h6></a>
		        					<p>Science Professor</p>
	        					</div>
	        				</div> <!-- /.item -->

	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/4.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Rashed jannat</h6></a>
		        					<p>lecturer</p>
	        					</div>
	        				</div> <!-- /.item -->

	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/2.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Jaflika tesla</h6></a>
		        					<p>Creative Director</p>
	        					</div>
	        				</div> <!-- /.item -->

	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/3.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Mahfuz Riad</h6></a>
		        					<p>Science Professor</p>
	        					</div>
	        				</div> <!-- /.item -->

	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/4.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Rashed jannat</h6></a>
		        					<p>lecturer</p>
	        					</div>
	        				</div> <!-- /.item -->

	        				<div class="item">
	        					<div class="item-wrapper theme-bg-color tran3s hvr-float-shadow">
	        						<div class="img-holder round-border">
		        						<img src="<%=request.getContextPath()%>/resources/images/inner-page/2.jpg" alt="Teacher">
		        						<div class="overlay round-border tran4s">
		        							<ul>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
												<li><a href="#" class="tran3s round-border icon"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
											</ul>
		        						</div>
		        					</div> <!-- /.img-holder -->
		        					<a href="teacher-profile.jsp"><h6>Jaflika tesla</h6></a>
		        					<p>Creative Director</p>
	        					</div>
	        				</div> <!-- /.item -->
	        				
	        			</div>
	        		</div> <!-- /.row -->
	        	</div> <!-- /.container -->
	        </div> <!-- /.our-teacher -->


	        <!-- Latest Event Slider Section _______ -->
	        <div class="latest-event-slider event-section wow fadeInUp">
	        	<div class="container">
	        		<h3>Latest Events</h3>

	        		<div class="row">
	        			<div class="theme-slider">
	        				<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">25 <span>June</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->

		        			<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">30 <span>Dec</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->

		        			<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">15 <span>June</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->

		        			<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">05 <span>Sep</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->

		        			<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">11 <span>June</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->

		        			<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">20 <span>Nov</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->

		        			<div class="item wow fadeInUp hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color">10 <span>May</span></div>
		        					<a href="event-details.jsp"><h6>Build Education STRATEGY</h6></a>
		        					<p>Tech you how to build a complete Learning Management Offering a various of solutions meeting your need no matter</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> Barisal,CA</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 10am - 05pm</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->
	        			</div> <!-- /.theme-slider -->
	        		</div> <!-- /.row -->
	        	</div> <!-- /.container -->
	        </div> <!-- /.latest-event-slider -->




			<jsp:include page="footer.jsp"></jsp:include>





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
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>
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




