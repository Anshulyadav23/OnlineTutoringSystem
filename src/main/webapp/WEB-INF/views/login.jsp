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
		
		<style>
		@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form select {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}

</style>

	
	</head>

	<body>
		<div class="main-page-wrapper about-us-v1-page">


			<header class="main-header">
			
			    <!-- _______________________ Theme Menu _____________________ -->

				<div class="container">
					<div class="main-menu-wrapper clear-fix">
						<div class="container">
							<div class="logo float-left"><a href="index" style="vertical-align:middle;"><img src="<%=request.getContextPath()%>/resources/images/logo/logo.png" alt="LOGO"></a></div>

							

							<!-- Menu -->
							
						</div>
					</div>  <!-- /.main-menu-wrapper -->
				</div>
			</header>


			


			<!-- Page Breadcrum __________________________ -->
			<div class="page-breadcrum">
				<div class="container">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li>-</li>
						<li>Login | Registration</li>
					</ul>
				</div> <!-- /.container -->
			</div> <!-- /.page-breadcrum -->



			<!-- Welcome Section ___________________________ -->
	        <div class="welcome-section-two">
	        	<div class="container">
	        		<div class="section-title wow fadeInUp">
	        			<h2 class="p-color">Welcome to edutech</h2>
	        		</div> <!-- /.section-title -->

	        		<div class="login-page">
  <div class="form">
  <h2 style="color:red;" class="message">${errormessage} </h2>
  
    <form:form action="registration" method="post"  id="register-form" class="register-form" modelAttribute="credentials">
      <form:input type="text" placeholder="Enter Name" path="name"/>
      <form:input type="text" placeholder="emailID" path="loginId"/>
      <form:input type="password" placeholder="password" path="loginPassword"/>
      <form:input type="text" placeholder="Address" path="address"/>
      <form:input type="text" placeholder="ContactNumber" path="contactnumber"/>
      <form:input type="text" placeholder="City" path="city"/>
      <form:input type="text" placeholder="zipcode" path="zipcode"/>
      <form:input type="text" placeholder="country" path="country"/>
       <form:select path="loginType">
            <form:option value="0" label="---Select Type---" />
            <form:option value="student" label="Student" />
            <form:option value="faculty" label="Faculty" />
            </form:select>
      <button>create</button>
      <p id="registermessage" class="message">Already registered? <a href="#">Sign In</a></p>
    </form:form >
    <form:form action="logincheck" mehtod="post" id="login-form" class="login-form" modelAttribute="credentials">
      <form:input type="text" placeholder="emailID" path="loginId"/>
      <form:input type="password" placeholder="password" path="loginPassword"/>
      <button>login</button>
      <p id="loginmessage"  class="message">Not registered? <a href="#">Create an account</a></p>
      <p   class="message">Click Here ! <a href="${pageContext.request.contextPath}/Admin/login">Login As Faculty</a></p>
    </form:form >
  </div>
</div>
	        	</div> <!-- /.container -->
	        </div> <!-- /.welcome-section-two -->




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
		<script>
		$('#registermessage').click(function(){
			$('#login-form').animate({height: "toggle", opacity: "toggle"}, "slow");
			$('#register-form').animate({height: "toggle", opacity: "toggle"}, "slow");
			});
		
		$('#loginmessage').click(function(){
			$('#register-form').animate({height: "toggle", opacity: "toggle"}, "slow");
			$('#login-form').animate({height: "toggle", opacity: "toggle"}, "slow");
			});
		</script>
		</div> <!-- /.main-page-wrapper -->
	</body>
</html>




