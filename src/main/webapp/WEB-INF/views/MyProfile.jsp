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
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/jquery.circlechart.js"></script>
		
		   <style>
.demo {
  max-width: 960px;
  margin: 150px auto;
}

.demo > div {
  float: left;
  margin: 20px;
}
</style>
		
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
						<h2>My Profile</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>My Profile</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->


			<!-- Contact Us Form _____________________ -->
			<div class="contact-us-page">
				<div class="container">
					<div class="row">
						<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 wow fadeInLeft">
							<div class="contact-us-form">
								<h3>PERSONAL INFORMATION</h3>
								<p></p>
								<form:form action="registration" method="post"  id="register-form" class="register-form" modelAttribute="credentials">
								
								<form:input type="hidden" path="ID"/>
								<form:input type="hidden" path="loginPassword"/>
								<form:input type="hidden" path="loginType"/>
									<div class="row">
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="Enter Name" path="name"/>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="User ID" path="loginId"/>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<form:input type="text" placeholder="Address" path="address"/>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="ContactNumber" path="contactnumber"/>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="City" path="city"/>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="zipcode" path="zipcode"/>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<form:input type="text" placeholder="country" path="country"/>
										</div>
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<textarea readonly name="message" placeholder="Your Courses">${usercourses }</textarea>
											<button class="tran3s p-color-bg themehover" title="Send">Update Data</button>
										</div>
									</div>
								</form:form>

								<!-- Contact alert -->
								
							</div> <!-- /.contact-us-form -->
						</div> <!-- /.col- -->
						
						


						<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 wow fadeInRight">
							<div class="contactUs-address">
								<h3>COURSES DATA</h3>
			        			<p>Your Performance Throughout the Semester  </p>
			        			
			        			 <c:forEach var="data" items="${totalcourse }">
			        			    <div style="padding-left: 100px;" class="demo-4" data-percent="${data.value }">${data.key }</div>
			        			</c:forEach>
	        							<script>
	        							$('.demo-4').percentcircle({
	        								animate : true,
	        								diameter : 100,
	        								guage: 3,
	        								coverBg: '#fff',
	        								bgColor: '#efefef',
	        								fillColor: '#46CFB0',
	        								percentSize: '18px',
	        								percentWeight: 'normal'
	        								});	
	        							</script>


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




