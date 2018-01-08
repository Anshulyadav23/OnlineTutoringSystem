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
		<div class="main-page-wrapper teachers-details">


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
						<h2>OUR TEACHER PROFILE</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>Teacher Profile</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->


	        <!-- Teacher Profile Page  ___________________ -->
	        <div class="teacher-profile">
	        	<div class="container">
	        		<div class="row">
	        			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 float-right">
	        				<div class="text-warpper">
	        					<h4>BIOGRAPHY</h4>
	        					<p class="mmfix"> ${faculty.getDescription() }</p>
	        					<div class="row">
	        						<div class="col-lg-6 col-md-12 col-sm-6 col-xs-12">
	        							<h4>expertise In Area</h4>
	        							<p>With over 21 years of experience in management, business planning, financial analysis, soft- ware engineering, operations, and decision analysis,</p>
	        							<ul>
	        							 <c:forEach var="data" items="${expertise }">
	        								<li><i class="fa fa-pencil" aria-hidden="true"></i>${data }</li>
	        							</c:forEach>
	        							</ul>
	        						</div> <!-- /.col- -->

	        						<div class="col-lg-6 col-md-12 col-sm-6 col-xs-12">
	        							<h4>Extra Cariculam</h4>
	        							<div class="teachers-bio-panel">
											<div class="panel-group theme-accordion" id="accordion">
											  <div class="panel">
											    <div class="panel-heading active-panel">
											      <h6 class="panel-title">
											        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
											        Growth strategy</a>
											      </h6>
											    </div>
											    <div id="collapse1" class="panel-collapse collapse in">
											      <div class="panel-body">
											      	<p>Primary/Junior (B10) and Junior/Intermediate (B20) applicants should have some experience working with children and youth of the age group in the program </p>
											      </div>
											    </div>
											  </div> <!-- /panel 1 -->
											  <div class="panel">
											    <div class="panel-heading">
											      <h6 class="panel-title">
											        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
											         Business transformation</a>
											      </h6>
											    </div>
											    <div id="collapse2" class="panel-collapse collapse">
											      <div class="panel-body">
											      	<p>Primary/Junior (B10) and Junior/Intermediate (B20) applicants should have some experience working with children and youth of the age group in the program </p>
											      </div>
											    </div>
											  </div> <!-- /panel 2 -->
											  <div class="panel">
											    <div class="panel-heading">
											      <h6 class="panel-title">
											        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
											        Leadership position</a>
											      </h6>
											    </div>
											    <div id="collapse3" class="panel-collapse collapse">
											      <div class="panel-body">
											      	<p>Primary/Junior (B10) and Junior/Intermediate (B20) applicants should have some experience working with children and youth of the age group in the program </p>
											      </div>
											    </div>
											  </div> <!-- /panel 3 -->

											  <div class="panel">
											    <div class="panel-heading">
											      <h6 class="panel-title">
											        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
											        Instructional in nature</a>
											      </h6>
											    </div>
											    <div id="collapse4" class="panel-collapse collapse">
											      <div class="panel-body">
											      	<p>Primary/Junior (B10) and Junior/Intermediate (B20) applicants should have some experience working with children and youth of the age group in the program </p>
											      </div>
											    </div>
											  </div> <!-- /panel 4 -->

											</div> <!-- end #accordion -->
										</div> <!-- End of .teachers-bio-panel -->
	        						</div>
	        					</div>
	        				</div> <!-- /.text-wrapper -->
	        			</div>

	        			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 teacher-sidebar float-left wow fadeInUp">
	        				<div class="img-holder theme-bg-color"><img src="<%=request.getContextPath()%>/resources/images/faculty/${faculty.getImage()}" alt="Teacher"></div>
	        				<div class="teachers-bio p-color-bg">
	        					<h6>${faculty.getFacultyname() }</h6>
	        					<p><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Science and Technology</p>
	        					<p><i class="fa fa-graduation-cap" aria-hidden="true"></i>${faculty.getDesignation() }</p>
	        					<p><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="#">${faculty.getFacultyid() }</a></p>
	        					<p><i class="fa fa-phone" aria-hidden="true"></i> <a href="#">+1 ${faculty.getContactnumber() }</a></p>
	        					<p><i class="fa fa-location-arrow" aria-hidden="true"></i> <a href="#">ucmo.edu</a></p>

	        					<ul>
									<li><a href="#" class="tran3s round-border icon"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			        				<li><a href="#" class="tran3s round-border icon"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#" class="tran3s round-border icon"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
									<li><a href="#" class="tran3s round-border icon"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								</ul>
	        				</div> <!-- /.teachers-bio -->
	        			</div> <!-- /.teacher-sidebar -->
	        		</div> <!-- /.row -->
	        	</div> <!-- /.container -->
	        </div> <!-- /.teacher-profile -->
	        


	        



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

		<!-- Theme js -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/theme.js"></script>

		</div> <!-- /.main-page-wrapper -->
	</body>
</html>




