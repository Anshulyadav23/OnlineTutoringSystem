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
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/video.popup.css">
        <style>
              h1 { margin-top:100px;}
        </style>


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



			

		        <!-- Popular Course _________________________ -->
		        <div class="popular-course wow fadeInUp theme-bg-color">
		        	<div class="container">
		        		
		        		<c:choose>
			        		  <c:when test="${empty tutorials}">
			        		   <h1>No Data Available</h1>
			        		  </c:when>
			        		  <c:otherwise>
			        		<div class="row">
			        		<div class="course-item-wrapper">
			        		  <c:forEach var="data" items="${tutorials }">
								<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
			        				<div class="hvr-float-shadow single-course-item">
				        				<div class="img-holder"><img src="<%=request.getContextPath()%>/resources/images/inner-page/14.jpg" alt="Image"></div>
				        				<div class="text">
				        					<h4><a href="course-details.html">${data.getHeading() }</a></h4>
				        					<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/1.png" alt="Image"></div>
				        					<ul>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
				        						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
				        					</ul>
				        					<div class="clear-fix">
				        						<a id="video" class="tran3s p-color-bg themehover" video-url="${data.getLink() }"> View Tutorial </a>
				        					</div>
				        				</div> <!-- /.text -->
			        				</div>
			        			</div> <!-- /.item -->
		        			
		        			
		        		     </c:forEach>
			        		     </div> <!-- /.course-slider -->
			        		     </div> <!-- /.row -->
			        		  </c:otherwise>
			        		 </c:choose>
			        		
			        		
			        		
			        			
			        		
			        	

			        	
		        	
		        </div> <!-- /.popular-course -->
			</div> <!-- /.course-page-single -->


	        <!-- Latest Event Slider Section _______ -->
	        <div class="latest-event-slider event-section wow fadeInUp bg-color-fix">
	        	<div class="container">
	        		<h3>Practice Exams</h3>
	        		<div class="row">
	        		
	        		<c:choose>
			        	 <c:when test="${empty practicetest}">
			        	  <h4>No Data Available</h4>
			        	  </c:when>
			              <c:otherwise>
	        		
	        			<div class="theme-slider">
	        			
	        			<c:forEach var="data" items="${practicetest }">
	        				<div class="item hvr-float-shadow">
		        				<div class="single-event theme-bg-color">
		        					<div class="date p-color"> <span></span></div>
		        					<a href="${pageContext.request.contextPath}/practicequiz/${data.getTestid() }"><h6>${data.getTestname() }</h6></a>
		        					<p>${data.getDescription() }</p>
		        					<ul>
		        						<li><i class="fa fa-map-marker" aria-hidden="true"></i> UCMO Online</li>
		        						<li><i class="fa fa-clock-o" aria-hidden="true"></i> 40 minutes</li>
		        					</ul>
		        				</div> <!-- /.single-event -->
		        			</div> <!-- /.item -->
	        			</c:forEach>
	        			</div> <!-- /.theme-slider -->
	        			</c:otherwise>
			        </c:choose>
	        				
	        			
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
		
		 <script src="<%=request.getContextPath()%>/resources/js/video.popup.js"></script>
		
		
		<script>
            $(function(){
                $("#video").videoPopup({
                    autoplay: 1,
                    controlsColor: 'white',
                    showVideoInformations: 0,
                    width: 1000,
                    customOptions: {
                        rel: 0,
                        end: 60
                    }
                });
				$("#video2").videoPopup();
            });
        </script>
        <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

		</div> <!-- /.main-page-wrapper -->
	</body>
</html>




