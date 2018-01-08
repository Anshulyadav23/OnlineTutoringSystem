  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
-
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
		<div class="main-page-wrapper">


			<jsp:include page="indexheader.jsp"></jsp:include>


			<!-- Theme Banner ________________________________ -->
			<div id="banner">
	        	<div class="rev_slider_wrapper">
					<!-- START REVOLUTION SLIDER 5.0.7 auto mode -->
						<div id="main-banner-slider" class="rev_slider" data-version="5.0.7">
							<ul>

								<!-- SLIDE1  -->
								<li data-index="rs-280" data-transition="zoomout" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-rotate="0"  data-saveperformance="off"  data-title="" data-description="">
									<!-- MAIN IMAGE -->
									<img src="<%=request.getContextPath()%>/resources/images/home/slide-1.jpg"  alt="image"  class="rev-slidebg" data-bgparallax="3" data-bgposition="center center" data-duration="20000" data-ease="Linear.easeNone" data-kenburns="on" data-no-retina="" data-offsetend="0 0" data-offsetstart="0 0" data-rotateend="0" data-rotatestart="0" data-scaleend="100" data-scalestart="140">
									<!-- LAYERS -->

									<!-- LAYER NR. 1 -->
									<div class="tp-caption" 
										data-x="['left','left','left','left']" data-hoffset="['0','25','35','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['-56','-56','-45','-150']" 
										data-width="none"
										data-height="none"
										data-whitespace="nowrap"
										data-transform_idle="o:1;"
							 
										data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
										data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
										data-mask_in="x:0px;y:[100%];" 
										data-mask_out="x:inherit;y:inherit;" 
										data-start="1000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on" 
										style="z-index: 6; white-space: nowrap;">
										<h5>for hundreds of successful student here </h5>
									</div>

									<!-- LAYER NR. 2 -->
									<div class="tp-caption" 
										data-x="['left','left','left','left']" data-hoffset="['0','25','35','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['20','25','30','-85']"
										data-width="none"
										data-height="none"
										data-whitespace="nowrap"
										data-transform_idle="o:1;"
							 
										data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
										data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
										data-mask_in="x:0px;y:[100%];" 
										data-mask_out="x:inherit;y:inherit;" 
										data-start="2000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on" 
										style="z-index: 6; white-space: nowrap;">
										<h1>Education is a <span class="p-color">backbone</span> <br>of life</h1>
									</div>


									<!-- LAYER NR. 3 -->
									<div class="tp-caption"
										data-x="['left','left','left','left']" data-hoffset="['0','25','35','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['205','205','210','80']"
										data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
										data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
										data-start="3000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on">
										<a href="course" class="course-button">View courses</a>
									</div>
									
									<!-- LAYER NR. 4 -->
									<div class="tp-caption"
										data-x="['left','left','left','left']" data-hoffset="['192','217','227','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['205','205','210','155']"
										data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-transform_in="x:[100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
										data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
										data-start="3000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on">
										
									</div>
								
								</li>


								<!-- SLIDE2  -->
								<li data-index="rs-18" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="<%=request.getContextPath()%>/resources/images/home/slide-2.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="" data-description="">
									<!-- MAIN IMAGE -->
									<img src="<%=request.getContextPath()%>/resources/images/home/slide-2.jpg"  alt=""  data-bgposition="center center" data-kenburns="on" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina>
									<!-- LAYERS -->

									<!-- LAYER NR. 1 -->
									<div class="tp-caption" 
										data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['-56','-56','-36','-150']" 
										data-width="none"
										data-height="none"
										data-whitespace="nowrap"
										data-transform_idle="o:1;"
							 
										data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
										data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
										data-mask_in="x:0px;y:[100%];" 
										data-mask_out="x:inherit;y:inherit;" 
										data-start="1000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on" 
										style="z-index: 6; white-space: nowrap;">
										<h5>for hundreds of successful student here </h5>
									</div>

									<!-- LAYER NR. 2 -->
									<div class="tp-caption" 
										data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['20','20','45','-85']"
										data-width="none"
										data-height="none"
										data-whitespace="nowrap"
										data-transform_idle="o:1;"
							 
										data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
										data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
										data-mask_in="x:0px;y:[100%];" 
										data-mask_out="x:inherit;y:inherit;" 
										data-start="2000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on" 
										style="z-index: 6; white-space: nowrap;">
										<h1 class="center-item">Meet your new <span class="p-color">community</span> <br>Learn education</h1>
									</div>


									<!-- LAYER NR. 3 -->
									<div class="tp-caption"
										data-x="['center','center','center','center']" data-hoffset="['-87','-87','-87','0']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['205','205','210','80']"
										data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
										data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
										data-start="3000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on">
										<a href="course" class="course-button">View courses</a>
									</div>
									
									<!-- LAYER NR. 4 -->
									<div class="tp-caption"
										data-x="['center','center','center','center']" data-hoffset="['105','105','105','0']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['205','205','210','155']"
										data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-transform_in="x:[100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
										data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
										data-start="3000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on">
										
									</div>
								</li>

							
								<!-- SLIDE3  -->
								<li data-index="rs-20" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="<%=request.getContextPath()%>/resources/images/home/slide-5.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="" data-description="">
									<!-- MAIN IMAGE -->
									<img src="<%=request.getContextPath()%>/resources/images/home/slide-5.jpg"  alt=""  data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 -500" data-offsetend="0 500" data-bgparallax="10" class="rev-slidebg" data-no-retina>
									<!-- LAYERS -->

									<!-- LAYER NR. 1 -->
									<div class="tp-caption" 
										data-x="['left','left','left','left']" data-hoffset="['0','25','35','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['-56','-56','-45','-150']" 
										data-width="none"
										data-height="none"
										data-whitespace="nowrap"
										data-transform_idle="o:1;"
							 
										data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
										data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
										data-mask_in="x:0px;y:[100%];" 
										data-mask_out="x:inherit;y:inherit;" 
										data-start="1000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on" 
										style="z-index: 6; white-space: nowrap;">
										<h5>for hundreds of successful student here </h5>
									</div>

									<!-- LAYER NR. 2 -->
									<div class="tp-caption" 
										data-x="['left','left','left','left']" data-hoffset="['0','25','35','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['20','25','30','-85']"
										data-width="none"
										data-height="none"
										data-whitespace="nowrap"
										data-transform_idle="o:1;"
							 
										data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
										data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
										data-mask_in="x:0px;y:[100%];" 
										data-mask_out="x:inherit;y:inherit;" 
										data-start="2000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on" 
										style="z-index: 6; white-space: nowrap;">
										<h1>Education is a <span class="p-color">backbone</span> <br>of life</h1>
									</div>


									<!-- LAYER NR. 3 -->
									<div class="tp-caption"
										data-x="['left','left','left','left']" data-hoffset="['0','25','35','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['205','205','210','80']"
										data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-transform_in="x:[-100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
										data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
										data-start="3000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on">
										<a href="course" class="course-button">View courses</a>
									</div>
									
									<!-- LAYER NR. 4 -->
									<div class="tp-caption"
										data-x="['left','left','left','left']" data-hoffset="['192','217','227','15']" 
										data-y="['middle','middle','middle','middle']" data-voffset="['205','205','210','155']"
										data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-transform_in="x:[100%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2500;e:Power3.easeInOut;" 
										data-transform_out="auto:auto;s:1000;e:Power2.easeInOut;" 
										data-start="3000" 
										data-splitin="none" 
										data-splitout="none" 
										data-responsive_offset="on">
										
									</div>
								</li>
							</ul>	
						</div>
					</div><!-- END REVOLUTION SLIDER -->
	        </div> <!--  /#banner -->


	        <!-- Manage Section _________________________ -->
	        <div class="theme-manage-area">
	        	<div class="container">
	        		<div class="item-part float-left item1 p-color-bg">
	        			<h3><i class="fa fa-graduation-cap" aria-hidden="true"></i> LEARN COUSES first</h3>
	        			<p>Our Mission Increase access to high-quality education for everyone, everywhere Enhance teaching and learning on campus and online Advance teaching and learning</p>
	        			<a href="course-details" class="tran3s">Rede more <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
	        		</div>
	        		<div class="item-part float-left item2">
	        			<img src="<%=request.getContextPath()%>/resources/images/home/1.jpg" alt="Image">
	        		</div>
	        		<div class="item-part float-left item1 p-color-bg">
	        			<h3><i class="fa fa-book" aria-hidden="true"></i> BOOK LIBRARY</h3>
	        			<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequun- tur magni dolores eos qui ratione </p>
	        			<a href="course-details" class="tran3s">Rede more <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
	        		</div>
	        	</div> <!-- /.container -->
	        </div> <!-- /.theme-manage-area -->


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
	        


	        <!-- Welcome Section ___________________________ -->
	        <div class="welcome-section">
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
	        </div> <!-- /.welcome-section -->



	        <!-- Popular Course _________________________ -->
	        <div class="popular-course wow fadeInUp theme-bg-color">
	        	<div class="container">
	        		<h2>POPULAR COURSES</h2>

	        		<div class="row">
		        		<div class="theme-slider course-item-wrapper">
		        		   <c:forEach var="data" items="${coursedata }">
								
		        			
		        			<div class="item hvr-float-shadow">
		        				<div class="img-holder"><img src="<%=request.getContextPath()%>/resources/images/home/2.jpg" alt="Image"></div>
		        				<div class="text">
		        					<h4><a href="course-details.html">${data.getCoursename()}</a></h4>
		        					<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/1.png" alt="Image"></div>
		        					<h6>Mahfuz riad</h6>
		        					<ul>
		        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
		        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
		        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
		        						<li><i class="fa fa-star" aria-hidden="true"></i></li>
		        						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
		        					</ul>
		        					<p>${data.getDescription()}</p>
		        					<div class="clear-fix">
		        						<ul class="float-left">
		        							<li><i class="fa fa-users" aria-hidden="true"></i> 345</li>
		        							<li><i class="fa fa-comment" aria-hidden="true"></i> 5</li>
		        							<li><i class="fa fa-map-marker" aria-hidden="true"></i> UCM </li>
		        						</ul>

		        						<a href="${pageContext.request.contextPath}/tutorial/${data.getCourseid() }" class="tran3s p-color-bg themehover">View detail</a>
		        					</div>
		        				</div> <!-- /.text -->
		        			</div>  <!-- /.item -->
		        		</c:forEach>



		        		</div> <!-- /.course-slider -->
		        	</div>
	        	</div> <!-- /.container -->
	        </div> <!-- /.popular-course -->


 
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