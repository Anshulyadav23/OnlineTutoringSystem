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
		<div class="main-page-wrapper theme-bg-color">


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
						<h2>COURSES LIST</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>COURSES</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->



			<div class="course-page-single course-v1">
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

		        				
								<div class="single-input float-left input-three">
		        					<div>
		        						<button class="tran3s p-color-bg themehover">search</button>
		        					</div>
		        				</div> <!-- /.single-input -->

		        			</div>
		        		</form>
		        	</div>
		        </div> <!-- /.course-search-option -->

		        <!-- Popular Course _________________________ -->
		        <div class="popular-course wow fadeInUp theme-bg-color">
		        	<div class="container">
		        		<div class="row">
			        		<div class="course-item-wrapper">
			        		
			        		<c:forEach var="data" items="${enrolldata }">
								<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
			        				<div class="hvr-float-shadow single-course-item">
				        				<div class="img-holder"><img src="<%=request.getContextPath()%>/resources/images/inner-page/14.jpg" alt="Image"></div>
				        				<div class="text">
				        					<h4><a href="course-details.html">${data.getCoursename() }</a></h4>
				        					<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/1.png" alt="Image"></div>
				        					<h6>Mahfuz riad</h6>
				        					<ul>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
				        					</ul>
				        					<p>${data.getDescription() }</p>
				        					<div class="clear-fix">
				        						<ul class="float-left">
				        							<li><i class="fa fa-users" aria-hidden="true"></i> 345</li>
				        							<li><i class="fa fa-comment" aria-hidden="true"></i> 5</li>
				        							<li><i class="fa fa-map-marker" aria-hidden="true"></i> UCM </li>
				        						</ul>

				        						<a href="${pageContext.request.contextPath}/tutorial/${data.getCourseid() }" class="tran3s p-color-bg themehover">View Detail</a>
				        					</div>
				        				</div> <!-- /.text -->
			        				</div>
			        			</div> <!-- /.item -->
		        			
		        			
		        		</c:forEach>

			        			
			        		</div> <!-- /.course-slider -->
			        	</div> <!-- /.row -->

			        	
		        	</div> <!-- /.container -->
		        </div> <!-- /.popular-course -->
			</div> <!-- /.course-page-single -->





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




