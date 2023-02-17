<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

		<div class="section-warp ask-me">
			<div class="container clearfix">
				<div class="box_icon box_warp box_no_border box_no_background" box_border="transparent"
					box_background="transparent" box_color="#FFF">
					<div class="row">
						<div class="col-md-3">
							<h2>Welcome to Ask me</h2>
							<p>Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna
								adipiscing iaculis. Curabitur vitae velit in neque dictum blandit. Proin in iaculis
								neque.</p>
							<div class="clearfix"></div>
							<a class="color button dark_button medium" href="#">About Us</a>
							<a class="color button dark_button medium" href="#">Join Now</a>
						</div>
						<div class="col-md-9">
							<form class="form-style form-style-2">
								<p>
									<textarea rows="4" id="question_title"
										onfocus="if(this.value=='Ask any question and you be sure find your answer ?')this.value='';"
										onblur="if(this.value=='')this.value='Ask any question and you be sure find your answer ?';">Ask any question and you be sure find your answer ?</textarea>
									<i class="icon-pencil"></i>
									<span class="color button small publish-question">Ask Now</span>
								</p>
							</form>
						</div>
					</div><!-- End row -->
				</div><!-- End box_icon -->
			</div><!-- End container -->
		</div><!-- End section-warp -->

		<section class="container main-content">
			<div class="row">
				<div class="col-md-9">

					<div class="tabs-warp question-tab">
						<ul class="tabs">
							<li class="tab"><a href="#" class="current">Recent Questions</a></li>
						
						</ul>
					
					<%@ include file="MY_question.jsp" %>
					</div><!-- End page-content -->
				</div><!-- End main -->
				<aside class="col-md-3 sidebar">
					<!-- status of question and answer -->
					
					<%@ include file="status.jsp" %>

					<div class="widget widget_social">
						<h3 class="widget_title">Find Us</h3>
						<ul>
							<li class="rss-subscribers">
								<a href="#" target="_blank">
									<strong>
										<i class="icon-rss"></i>
										<span>Subscribe</span><br>
										<small>To RSS Feed</small>
									</strong>
								</a>
							</li>
							<li class="facebook-fans">
								<a href="#" target="_blank">
									<strong>
										<i class="social_icon-facebook"></i>
										<span>5,000</span><br>
										<small>People like it</small>
									</strong>
								</a>
							</li>
							<li class="twitter-followers">
								<a href="#" target="_blank">
									<strong>
										<i class="social_icon-twitter"></i>
										<span>3,000</span><br>
										<small>Followers</small>
									</strong>
								</a>
							</li>
							<li class="youtube-subs">
								<a href="#" target="_blank">
									<strong>
										<i class="icon-play"></i>
										<span>1,000</span><br>
										<small>Subscribers</small>
									</strong>
								</a>
							</li>
						</ul>
					</div>

					<div class="widget widget_login">
						<h3 class="widget_title">Login</h3>
						<div class="form-style form-style-2">
							<form>
								<div class="form-inputs clearfix">
									<p class="login-text">
										<input type="text" value="Username"
											onfocus="if (this.value == 'Username') {this.value = '';}"
											onblur="if (this.value == '') {this.value = 'Username';}">
										<i class="icon-user"></i>
									</p>
									<p class="login-password">
										<input type="password" value="Password"
											onfocus="if (this.value == 'Password') {this.value = '';}"
											onblur="if (this.value == '') {this.value = 'Password';}">
										<i class="icon-lock"></i>
										<a href="#">Forget</a>
									</p>
								</div>
								<p class="form-submit login-submit">
									<input type="submit" value="Log in" class="button color small login-submit submit">
								</p>
								<div class="rememberme">
									<label><input type="checkbox" checked="checked"> Remember Me</label>
								</div>
							</form>
							<ul class="login-links login-links-r">
								<li><a href="#">Register</a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>

					<div class="widget widget_highest_points">
						<h3 class="widget_title">Highest points</h3>
						<ul>
							<li>
								<div class="author-img">
									<a href="#"><img width="60" height="60" src="../ask-me/images/demo/admin.jpg"
											alt=""></a>
								</div>
								<h6><a href="#">admin</a></h6>
								<span class="comment">12 Points</span>
							</li>
							<li>
								<div class="author-img">
									<a href="#"><img width="60" height="60" src="../ask-me/images/demo/avatar.png"
											alt=""></a>
								</div>
								<h6><a href="#">vbegy</a></h6>
								<span class="comment">10 Points</span>
							</li>
							<li>
								<div class="author-img">
									<a href="#"><img width="60" height="60" src="../ask-me/images/demo/avatar.png"
											alt=""></a>
								</div>
								<h6><a href="#">ahmed</a></h6>
								<span class="comment">5 Points</span>
							</li>
						</ul>
					</div>

					

				</aside><!-- End sidebar -->
			</div><!-- End row -->
		</section><!-- End container -->

<%@ include file="footer.jsp" %>
	