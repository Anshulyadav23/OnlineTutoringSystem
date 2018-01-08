		 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		
			<header class="inner-header">


				<div class="top-header">
					<div class="container">
						<div class="left-side float-left">
							<ul>
								<li><span class="icon round-border"><i ><img src="<%=request.getContextPath()%>/resources/images/logo/usericon.png" alt="LOGO"></i></span> <a href="" class="tran3s">WELCOME ${StudentName } TO EDUTECH</a></li>
								<li><span class="icon round-border"><i ><img src="<%=request.getContextPath()%>/resources/images/logo/emailicon.png" alt="LOGO"></i></span> <a href="" class="tran3s">${StudentId }</a></li>
								
							</ul>
						</div> <!-- /.left-side -->
						
					</div>
				</div> <!-- /.top-header -->

				<!-- _______________________ Theme Menu _____________________ -->

				<div class="container">
					<div class="main-menu-wrapper clear-fix">
						<div class="container">
							<div class="logo float-left"><a href="index" style="vertical-align:middle;"><img src="<%=request.getContextPath()%>/resources/images/logo/logo.png" alt="LOGO"></a></div>

							<form action="#" class="float-right">
								<input type="text" placeholder="Search">
								<button><i class="fa fa-search-minus" aria-hidden="true"></i></button>
							</form>

							<!-- Menu -->
							<nav class="navbar float-right">
							   <!-- Brand and toggle get grouped for better mobile display -->
							   <div class="navbar-header">
							     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
							       <span class="sr-only">Toggle navigation</span>
							       <span class="icon-bar"></span>
							       <span class="icon-bar"></span>
							       <span class="icon-bar"></span>
							     </button>
							   </div>
							   <!-- Collect the nav links, forms, and other content for toggling -->
							   <div class="collapse navbar-collapse" id="navbar-collapse-1">
							     <ul class="nav navbar-nav">
							       <li class="dropdown-holder current-page-item"><a href="${pageContext.request.contextPath}/index">Home</a>
							       </li>
							 
							        <li class="dropdown-holder"><a href="">Exams</a>
							       <ul class="sub-menu">
							        <c:forEach var="data" items="${examdata }">
											<li><a href="${pageContext.request.contextPath}/instruction/${data.getTestid() }" class="tran3s">${data.getCourseID()}</a></li>
									</c:forEach>
								    </ul>
								   </li>
							       <li class="dropdown-holder"><a href="${pageContext.request.contextPath}/course">courses</a>	
							       <ul class="sub-menu">
							        <c:forEach var="data" items="${enrolldata }">
											<li><a href="${pageContext.request.contextPath}/tutorial/${data.getCourseid() }" class="tran3s">${data.getCoursename()}</a></li>
									</c:forEach>
								    </ul>
							       </li>
							       <li class="dropdown-holder"><a href="#">features</a>
										<ul class="sub-menu">
											<li><a href="${pageContext.request.contextPath}/our-teacher" class="tran3s">Our Teacher</a></li>
											<li><a href="${pageContext.request.contextPath}/My-profile" class="tran3s">My Profile</a></li>
										</ul>
							       </li>
							       <li class="dropdown-holder"><a href="${pageContext.request.contextPath}/performance">My Performance</a>
							       		
							       </li>
							       <li><a href="${pageContext.request.contextPath}/contact-us">contact</a></li>
							        <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
							     </ul>
							   </div><!-- /.navbar-collapse -->
							</nav>
						</div>
					</div>  <!-- /.main-menu-wrapper -->
				</div>
			</header>