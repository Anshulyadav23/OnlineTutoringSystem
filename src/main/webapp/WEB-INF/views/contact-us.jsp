<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
						<h2>Contact us</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>Contact us</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->


			<!-- Contact Us Form _____________________ -->
			<div class="contact-us-page">
				<div class="container">
					<div class="row">
						<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 wow fadeInLeft">
							<div class="contact-us-form">
								<h3>Send A Message</h3>
								<p>Your email address will not be published.</p>
								<form:form action="sendfeedback" method="post"  id="register-form" class="register-form" modelAttribute="feedback">
								
								<form:input type="hidden" path="ID"/>
									<div class="row">
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="Enter Name" path="studentname"/>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="User ID" path="studentid"/>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<form:input type="text" placeholder="Subject" path="subject"/>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<form:textarea  path="message" placeholder="Write Message" />
											<button class="tran3s p-color-bg themehover" title="Send">Send Message</button>
										</div>
									</div>
								</form:form>


								<!-- Contact alert -->
								<div class="alert_wrapper" id="alert_success">
									<div id="success">
										<button class="closeAlert"><i class="fa fa-times" aria-hidden="true"></i></button>
										<div class="wrapper">
							               	<p>Your message was sent successfully.</p>
							             </div>
							        </div>
							    </div> <!-- End of .alert_wrapper -->
							    <div class="alert_wrapper" id="alert_error">
							        <div id="error">
							           	<button class="closeAlert"><i class="fa fa-times" aria-hidden="true"></i></button>
							           	<div class="wrapper">
							               	<p>Sorry!Something Went Wrong.</p>
							            </div>
							        </div>
							    </div> <!-- End of .alert_wrapper -->
							</div> <!-- /.contact-us-form -->
						</div> <!-- /.col- -->

						<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 wow fadeInRight">
							<div class="contactUs-address">
								<h3>CONTACT US</h3>
			        			<p>Welcome to our website , Feel free to contact us any time </p>

			        			<ul>
	        						<li>
	        							<i class="fa fa-envelope-o" aria-hidden="true"></i>
	        							<a href="mailto:helpneed@edutech.com" class="tran3s">helpneed@edutech.com</a>
	        						</li>
	        						<li>
	        							<i class="fa fa-phone" aria-hidden="true"></i>
	        							<a href="tel:+8801712570051" class="tran3s">+8801712570051</a>
	        						</li>
	        						<li><i class="fa fa-map-marker" aria-hidden="true"></i>Edine rode,1234 Plot/RS ,CA <br>Near army club, #2 Road,NY</li>
	        					</ul>

							</div> <!-- /.our-address -->
						</div>
					</div> <!-- /.row -->
				</div> <!-- /.container -->
			</div> <!-- /.contact-us-page -->


			<!-- Google Map -->
			<div  style="height:100px; width:100%; margin-top:100px;"></div>




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
		<!-- Validation -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/contact-form/validate.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/vendor/contact-form/jquery.form.js"></script>

		<!-- Theme js -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/theme.js"></script>

		</div> <!-- /.main-page-wrapper -->
	</body>
</html>




