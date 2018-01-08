
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
						<h2>Instruction</h2>
					</div> <!-- /.container -->
				</div> <!-- /.opacity -->
			</div> <!-- /.inner-page-banner -->


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index">Home</a></li>
						<li>-</li>
						<li>Instruction</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->


			<!-- Contact Us Form _____________________ -->
			<div class="contact-us-page">
				<div class="container">
					<div class="row">
						<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 wow fadeInLeft">
							<div class="contact-us-form">
								<h3>Exam Instruction</h3>
								<p>Read The Instructions Carefully</p>
								<form action="<%=request.getContextPath()%>/Mainquiz/${testid }" method="post">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										
								<textarea readonly style="height:300px" name="message" placeholder="Write Message">Step 1. Check Your Browser Options before the Test to ensure that it is not set to disconnect after several minutes of inactivity.

* The location of this setting depends on your browser. For example, in Internet Explorer 5, 6, 7 & 8 it is located under Tools>Internet Options>Connections>Settings> Advanced
* If you have an Internet Service Provider that will break your connection if you don.t visit a new site after a certain period of time, then keep another window open and occasionally visit it and load a new page or refresh the page to keep your connection open.

Step 2. Do Not Use the "Back" Button on Your Browser During the Test once you have begun taking the quiz. Instead, use the scroll bar to move back to check earlier questions.
Don't close the window of the test for any reason.

If something goes wrong, send an e-mail to your professor immediately, documenting the exact problem and asking how you should proceed. Include your username and the course and section number.

Step 3. Review All of Your Answers Before Submitting the Quiz. Make sure you have not accidentally changed your response to a question or made a typographic mistake.

Step 4. When you are satisfied with the result make sure you finish by clicking the SUBMIT button at the bottom of the screen. Click the Submit Button ONLY ONCE!
After you submit the test answers, you will receive a score unless you have exceeded the time limit for the quiz.

To Check Your Grades: Click "Student Tools" then "Check your grade". You will see only your grades.

Keep In Mind: It is important that you click the SUBMIT button every time you access an online assessment. Even if you are just logging on to print the quiz, you must click the submit button. Otherwise you will be locked out of the exam.

											
											</textarea>
											<button ${startexam } class="tran3s p-color-bg themehover" title="Send">Start Exam</button>
											<p></p>
											<p style="color:red;">${message }</p>
										</div>
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




