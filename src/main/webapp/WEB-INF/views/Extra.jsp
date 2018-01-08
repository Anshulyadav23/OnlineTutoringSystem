
	        <div class="course-progress">
	        	<div class="opacity">
	        		<div class="container">
	        			<h2>GET 100 COURSES FOR <span class="p-color">FREE</span></h2>
	        			<p>Tech you how to build a complete learning management system upcoming education for student</p>
	        			<h6>WE'RE GOOD AT some member</h6>

	        			<div class="row">
	        				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	        					<div class="icon"></div>
	        					<p>CERTIFIED TEACHERS</p>
	        					<div class="number"><span class="timer" data-from="0" data-to="117" data-speed="1500" data-refresh-interval="5">0</span></div>
	        				</div>
	        				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	        					<div class="icon"></div>
	        					<p>COURSES COMPLETE</p>
	        					<div class="number"><span class="timer" data-from="0" data-to="12456" data-speed="1500" data-refresh-interval="5">0</span></div>
	        				</div>
	        				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	        					<div class="icon"></div>
	        					<p>Students Enrolled</p>
	        					<div class="number"><span class="timer" data-from="0" data-to="220234" data-speed="1500" data-refresh-interval="5">0</span></div>
	        				</div>
	        				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
	        					<div class="icon"></div>
	        					<p>Students Enrolled</p>
	        					<div class="number"><span class="timer" data-from="0" data-to="100" data-speed="1500" data-refresh-interval="5">0</span>%</div>
	        				</div>
	        			</div> <!-- /.row -->
	        		</div> <!-- /.container -->
	        	</div> <!-- /.opacity -->
	        </div> <!-- /.course-progress -->



	        <!-- Event Section _______________________ -->
	        <div class="event-section wow fadeInUp">
	        	<div class="container">
	        		<div class="theme-title">
	        			<h2>Events</h2>
	        			<p>Our upcoming event you should mind always</p>
	        		</div>
	        		
	        		
	        		<div class="row">
					
					   <c:forEach var="data" items="${testdata }">	
	        			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 wow fadeInUp hvr-float-shadow">
	        				<div class="single-event theme-bg-color">
	        					<div class="date p-color">25 <span>June</span></div>
	        					<a href="event-details"><h6>${data.getTestname() }</h6></a>
	        					<p>${data.getDescription() }</p>
	        					<ul>
	        						<li><i class="fa fa-map-marker" aria-hidden="true"></i>University of central Missouri</li>
	        						<li><i class="fa fa-clock-o" aria-hidden="true"></i>${data.getTime() }</li>
	        					</ul>
	        				</div><!-- /.single-event -->
	        			</div>
						
					    </c:forEach>	
	        		</div> <!-- /.row -->
	        	</div> <!-- /.container -->
	        </div> <!-- /.event-section -->



	        <!-- Information Banner _______________________ -->
	        <div class="information-banner wow fadeInUp">
	        	<div class="container">
	        		<h3>Information for teachers and students, Event information and <span class="p-color">education news</span></h3>
	        		<h6>ONE OF THE MOST COMPLETE Education THEME</h6>
	        		<a href="contact-us" class="p-color-bg tran3s wow fadeInUp">Contact us</a>
	        	</div> <!-- /.container -->
	        </div> <!-- /.information-banner -->


	        


	        <!-- Latest News ___________________________ -->
	        <div class="latest-news wow fadeInUp theme-bg-color">
	        	<div class="container">
	        		<div class="theme-title">
	        			<h2>latest news</h2>
	        			<p>Something for education news,latest news feed</p>
	        		</div>

	        		<div class="post-wrapper row">
	        			<div class="single-post wow fadeInUp col-lg-4 col-md-4 col-sm-6 col-xs-6">
	        					<div class="img-holder">
	        						<div class="date wow fadeInUp p-color-bg">12 <span>Sep</span></div>
	        						<img src="<%=request.getContextPath()%>/resources/images/blog/1.jpg" alt="Image">
	        						<a href="blog-details" class="tran4s"></a>
	        					</div>
	        					<div class="text-wrapper">
	        						<div class="text tran4s">
	        							<a href="blog-details">New Chicago school budget </a>
	        							<p>Education is the process of facilitating learning. Knowledge kills, values, beliefs, and habits of a group of people are trans- ferred  </p>
	        						</div> <!-- /.text -->
	        					</div> <!-- /.text-wrapper -->
	        			</div> <!-- /.single-post -->

	        			<div class="single-post wow fadeInUp col-lg-4 col-md-4 col-sm-6 col-xs-6">
	        					<div class="img-holder">
	        						<div class="date wow fadeInUp p-color-bg">12 <span>Sep</span></div>
	        						<img src="<%=request.getContextPath()%>/resources/images/blog/2.jpg" alt="Image">
	        						<a href="blog-details" class="tran4s"></a>
	        					</div>
	        					<div class="text-wrapper">
	        						<div class="text tran4s">
	        							<a href="blog-details">New Chicago school budget </a>
	        							<p>Education is the process of facilitating learning. Knowledge kills, values, beliefs, and habits of a group of people are trans- ferred  </p>
	        						</div> 
	        					</div> 
	        			</div>

	        			<div class="single-post wow fadeInUp col-lg-4 col-md-4 col-sm-6 col-xs-6">
	        					<div class="img-holder">
	        						<div class="date wow fadeInUp p-color-bg">12 <span>Sep</span></div>
	        						<img src="<%=request.getContextPath()%>/resources/images/blog/3.jpg" alt="Image">
	        						<a href="blog-details" class="tran4s"></a>
	        					</div>
	        					<div class="text-wrapper">
	        						<div class="text tran4s">
	        							<a href="blog-details">New Chicago school budget </a>
	        							<p>Education is the process of facilitating learning. Knowledge kills, values, beliefs, and habits of a group of people are trans- ferred  </p>
	        						</div> 
	        					</div> 
	        			</div> 
	        		</div> 
	        	</div> 
	        </div> 



	        <div class="test-faq">
	        	<div class="container">
	        		<div class="row">
	        			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 testimonial wow fadeInLeft">
	        				<div class="wrapper">
	        					<h3>TESTIMONIALS</h3>
	        					<div id="testimonial-carousel" class="carousel slide" data-ride="carousel">
									  <ol class="carousel-indicators">
									    <li data-target="#testimonial-carousel" data-slide-to="0" class="active"></li>
									    <li data-target="#testimonial-carousel" data-slide-to="1"></li>
									    <li data-target="#testimonial-carousel" data-slide-to="2"></li>
									  </ol>

									  <div class="carousel-inner" role="listbox">
									    <div class="item active">
									      <div class="single-box theme-bg-color">
									      		<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/2.png" alt="Image"></div>
									      		<h6>ghost riad <span>(Sir.Principal)</span></h6>
									      		<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo- rem ipsum</p>
									      </div> 

									      <div class="single-box theme-bg-color">
									      		<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/3.png" alt="Image"></div>
									      		<h6>Masum nodi <span>(Sir.Principal Fohinni)</span></h6>
									      		<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo- rem ipsum</p>
									      </div> 
									    </div>

									    <div class="item">
									      <div class="single-box theme-bg-color">
									      		<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/2.png" alt="Image"></div>
									      		<h6>ghost riad <span>(Sir.Principal)</span></h6>
									      		<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo- rem ipsum</p>
									      </div> 

									      <div class="single-box theme-bg-color">
									      		<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/3.png" alt="Image"></div>
									      		<h6>Masum nodi <span>(Sir.Principal Fohinni)</span></h6>
									      		<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo- rem ipsum</p>
									      </div> 
									    </div>

									    <div class="item">
									      <div class="single-box theme-bg-color">
									      		<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/2.png" alt="Image"></div>
									      		<h6>ghost riad <span>(Sir.Principal)</span></h6>
									      		<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo- rem ipsum</p>
									      </div> 

									      <div class="single-box theme-bg-color">
									      		<div class="img round-border"><img src="<%=request.getContextPath()%>/resources/images/home/3.png" alt="Image"></div>
									      		<h6>Masum nodi <span>(Sir.Principal Fohinni)</span></h6>
									      		<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolo- rem ipsum</p>
									      </div> <!-- /.single-box -->
									    </div>
									</div>
								</div> 
	        				</div> 
	        			</div> 

	        			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 faq wow fadeInRight">
	        				<div class="wrapper">
	        					<h3>Frequently Asked Questions</h3>
	        				
	        					<div class="faq_panel">
									<div class="panel-group theme-accordion" id="accordion">
									  <div class="panel">
									    <div class="panel-heading active-panel">
									      <h6 class="panel-title">
									        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
									        Smart Learning is an education platform partners</a>
									      </h6>
									    </div>
									    <div id="collapse1" class="panel-collapse collapse in">
									      <div class="panel-body">
									      	<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempo- ra incidunt ut labore et dolore magnam aliquam quaerat voluptatem Nemo enim ipsam voluptatem</p>
									      </div>
									    </div>
									  </div>
									  <div class="panel">
									    <div class="panel-heading">
									      <h6 class="panel-title">
									        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
									         Education of Tomorrow, Rooted in Tradition</a>
									      </h6>
									    </div>
									    <div id="collapse2" class="panel-collapse collapse">
									      <div class="panel-body">
									      	<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Nemo enim ipsam voluptatem</p>
									      </div>
									    </div>
									  </div> 
									  <div class="panel">
									    <div class="panel-heading">
									      <h6 class="panel-title">
									        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
									        Lorem ipsum dolor sit amet, consectetur adipiscing</a>
									      </h6>
									    </div>
									    <div id="collapse3" class="panel-collapse collapse">
									      <div class="panel-body">
									      	<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Nemo enim ipsam voluptatem</p>
									      </div>
									    </div>
									  </div> 

									  <div class="panel">
									    <div class="panel-heading">
									      <h6 class="panel-title">
									        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
									        Build Education Website Using HTML</a>
									      </h6>
									    </div>
									    <div id="collapse4" class="panel-collapse collapse">
									      <div class="panel-body">
									      	<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Nemo enim ipsam voluptatem</p>
									      </div>
									    </div>
									  </div>

									  <div class="panel">
									    <div class="panel-heading">
									      <h6 class="panel-title">
									        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
									        BEST INDUSTRY LEADERS for awesome courses</a>
									      </h6>
									    </div>
									    <div id="collapse5" class="panel-collapse collapse">
									      <div class="panel-body">
									      	<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem Nemo enim ipsam voluptatem</p>
									      </div>
									    </div>
									  </div> 

									</div> 
								</div> 
	        				</div> 
	        			</div>
	        		</div> 
	        	</div>
	        </div> 


	        <div class="subscribe-banner p-color-bg wow fadeInUp">
	        	<div class="container">
	        		<h3>Subscribe now</h3>
	        		<p>Receive weekly newsletter with educational materials, new courses, most popular posts, popular books and much more!</p>
	        		<form action="#" class="clear-fix">
	        			<input type="email" class="float-left wow fadeInLeft" placeholder="Email address">
	        			<button class="float-left tran3s wow fadeInRight">Subcribe</button>
	        		</form>
	        	</div>
	        </div>

