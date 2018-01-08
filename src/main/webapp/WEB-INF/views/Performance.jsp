<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>

<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/i18n/defaults-*.min.js"></script>
	
	<style>

body {
  background: #30303A;
  font-family: Roboto;
}

#chart {
  width: 650px;
  height: 260;
  margin: 30px auto 0;
  display: block;
}

#chart #numbers {
  height: 100%;
  width: 50px;
  margin: 0;
  padding: 0;
  display: inline-block;
  float: left;
}

#chart #numbers li {
  text-align: right;
  padding-right: 1em;
  list-style: none;
  height: 29px;
  border-bottom: 1px solid #444;
  position: relative;
  bottom: 30px;
}

#chart #numbers li:last-child { height: 30px; }

#chart #numbers li span {
  color: #eee;
  position: absolute;
  bottom: 0;
  right: 10px;
}

#chart #bars {
  display: inline-block;
  background: rgba(0, 0, 0, 0.2);
  width: 600px;
  height: 300px;
  padding: 0;
  margin: 0;
  box-shadow: 0 0 0 1px #444;
}

#chart #bars li {
  display: table-cell;
  width: 100px;
  height: 300px;
  margin: 0;
  text-align: center;
  position: relative;
}

#chart #bars li .bar {
  display: block;
  width: 70px;
  margin-left: 15px;
  background: #49E;
  position: absolute;
  bottom: 0;
}

#chart #bars li .bar:hover {
  background: #5AE;
  cursor: pointer;
}

#chart #bars li .bar:hover:before {
  color: white;
  content: attr(data-percentage) '%';
  position: relative;
  bottom: 20px;
}

#chart #bars li span {
  color: #eee;
  width: 100%;
  position: absolute;
  bottom: -2em;
  left: 0;
  text-align: center;
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>jQuery barChart Demo Page</title>
		  <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script   src="https://code.jquery.com/jquery-1.12.4.js"   integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="   crossorigin="anonymous"></script>
    <script src="<%=request.getContextPath()%>/resources/js/scriptbar.js"></script>
	
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
						<h2>Previous Performance</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li>-</li>
						<li>Previous Performance</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->


			<!-- Contact Us Form _____________________ -->
			<div class="contact-us-page">
				<div class="container">
					<div class="row">
					<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 wow fadeInLeft">
							<div class="contactUs-address">
								<h3>Previous Performance</h3>
			        			<p>Welcome to our website , Feel free to contact us any time </p>

			        			<div class="course-search-option wow fadeInUp">
	        	<div class="container">
	        		<form:form action="getbarchart" method="post"  modelAttribute="course">
	        			<div class="row">
	        				
							<div class="single-input float-left input-two">
	        					<div>
	        						<form:select path="courseid" class="selectpicker" data-live-search="true">
										<form:option value="0" label="---Select Type---" />
										   <c:forEach var="data" items="${enrolldata }">
										     <form:option  value="${data.getCourseid()}" label="${data.getCoursename()}"/>
										   </c:forEach>
									</form:select>
	        					</div>
	        				</div> <!-- /.single-input -->
							
							<div class="single-input float-left input-three">
	        					<div>
	        						<button class="tran3s p-color-bg themehover">search</button>
	        					</div>
	        				</div> <!-- /.single-input -->
	        			</div>
	        		</form:form>
	        	</div>
	        </div>

							</div> <!-- /.our-address -->
						</div>
					
						<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 wow fadeInRight">
							<div style="background-color:black" class="contact-us-form">
								
								<form action="inc/sendemail.php" class="form-validation" autocomplete="off">
									<div   class="row">
									
    <div id="chart">
      <ul id="numbers">
        <li><span>100%</span></li>
        <li><span>90%</span></li>
        <li><span>80%</span></li>
        <li><span>70%</span></li>
        <li><span>60%</span></li>
        <li><span>50%</span></li>
        <li><span>40%</span></li>
        <li><span>30%</span></li>
        <li><span>20%</span></li>
        <li><span>10%</span></li>
        <li><span>0%</span></li>
      </ul>
      <ul id="bars">
      <c:forEach var="data" items="${performance }">
        <li><div data-percentage="${data.getScore()/data.getTotalscore()*100}" class="bar"></div><span>${data.getTestid() }</span></li>
        </c:forEach>
      </ul>
    </div>
                                <h3></h3>
								<p></p>
									</div>
									
									<div style="background-color:black" class="row">
									</div>
									
									
								</form>

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

						
					</div> <!-- /.row -->
				</div> <!-- /.container -->
			</div> <!-- /.contact-us-page -->


			<!-- Google Map -->
			<div id="google-map" style="height:460px; width:100%; margin-top:100px;"></div>




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




