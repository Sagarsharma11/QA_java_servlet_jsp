<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
    
        
    <%
    
    String  isType="";
    
    isType = (String)session.getAttribute("isType");
    String isName = (String)session.getAttribute("isName");
    String isEmail = (String)session.getAttribute("isEmail");
    
    if(isType==null){
    	isType="suman";
    }

   
   String isSession = (String)session.getAttribute("isSession");
   
  	 int count=0;
   
  // out.print(isType);
  
  
  	
  	
%>
    
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Mirrored from 2code.info/demo/html/ask-me-html/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 11 Sep 2022 04:14:36 GMT -->

<head>

	<!-- Basic Page Needs -->
	<meta charset="utf-8">
	<title>Ask me – Responsive Questions and Answers Template</title>
	<meta name="description" content="Ask me Responsive Questions and Answers Template">
	<meta name="author" content="2code.info">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Main Style -->
	<link rel="stylesheet" href="style.css">

	<!-- Skins -->
	<link rel="stylesheet" href="css/skins/skins.css">

	<!-- Responsive Style -->
	<link rel="stylesheet" href="css/responsive.css">

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.png">
	

</head>

<body>

	<div class="loader">
		<div class="loader_html"></div>
	</div>

	<div id="wrap" class="grid_1200">

		<div class="login-panel">
			<section class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="page-content">
							<h2>Login</h2>
							<div class="form-style form-style-3">
								<form action="login" >
									<div class="form-inputs clearfix">
										<p class="login-text">
											<input type="email" name="email"
												onfocus="if (this.value == 'Username') {this.value = '';}"
												onblur="if (this.value == '') {this.value = 'Username';}">
											<i class="icon-user"></i>
										</p>
										<p class="login-password">
											<input type="password" name="password"
												onfocus="if (this.value == 'Password') {this.value = '';}"
												onblur="if (this.value == '') {this.value = 'Password';}">
											<i class="icon-lock"></i>
											<a href="#">Forget</a>
										</p>
									</div>
									<p class="form-submit login-submit">
										<input type="submit"
											class="button color login-submit submit">
									</p>
									<div class="rememberme">
										<label><input type="checkbox" checked="checked"> Remember Me</label>
									</div>
								</form>
							</div>
						</div><!-- End page-content -->
					</div><!-- End col-md-6 -->
					<div class="col-md-6">
						<div class="page-content Register">
							<h2>Register Now</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravdio, sit
								amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequa. Vivamus
								vulputate posuere nisl quis consequat.</p>
							<a class="button color small signup">Create an account</a>
						</div><!-- End page-content -->
					</div><!-- End col-md-6 -->
				</div>
			</section>
		</div><!-- End login-panel -->

		<div class="panel-pop" id="signup">
			<h2>Register Now<i class="icon-remove"></i></h2>
			<div class="form-style form-style-3">
				<form action="register" method="POST">
					<div class="form-inputs clearfix">
						<p>
							<label class="required">Username<span>*</span></label>
							<input type="text" name="uname">
						</p>
						<p>
							<label class="required">E-Mail<span>*</span></label>
							<input type="email" name="email">
						</p>
						<p>
							<label class="required">Password<span>*</span></label>
							<input type="password" name="pass">
						</p>
						<p>
							<label class="required">Confirm Password<span>*</span></label>
							<input type="password" name="cpass">
						</p>
						<select name="type">
							<option value="Teacher"> Teacher </option>
							<option value="Student" > Student </option>
						</select>
					</div>
					<p class="form-submit">
						<input type="submit" class="button color small submit">
					</p>
				</form>
			</div>
		</div><!-- End signup -->

		<div class="panel-pop" id="lost-password">
			<h2>Lost Password<i class="icon-remove"></i></h2>
			<div class="form-style form-style-3">
				<p>Lost your password? Please enter your username and email address. You will receive a link to create a
					new password via email.</p>
				<form action="login" >
					<div class="form-inputs clearfix">
						
						<p>
							<label class="required">E-Mail<span>*</span></label>
							<input type="email" name="email">
						</p>
						<p>
							<label class="required">Password<span>*</span></label>
							<input type="password" name="password">
						</p>
						
						
					</div>
					<p class="form-submit">
						<input type="submit" value="Reset" class="button color small submit">
					</p>
				</form>
				<div class="clearfix"></div>
			</div>
		</div><!-- End lost-password -->

		<div id="header-top">
			<section class="container clearfix">
				<nav class="header-top-nav">
					<ul>
						<li><a href="contact_us.jsp"><i class="icon-envelope"></i>Contact</a></li>
				
						<li><a href="login.html" id="login-panel"><i class="icon-user"></i>Login Area</a></li>
					</ul>
				</nav>
				<div class="header-search">
					<form>
						<input type="text" value="Search here ..."
							onfocus="if(this.value=='Search here ...')this.value='';"
							onblur="if(this.value=='')this.value='Search here ...';">
						<button type="submit" class="search-submit"></button>
					</form>
				</div>
			</section><!-- End container -->
		</div><!-- End header-top -->
		<header id="header">
			<section class="container clearfix">
				<div class="logo"><a href="index.jsp"><img alt="" src="images/logo.png"></a></div>
				<nav class="navigation">
					<ul>
						<li class="current_page_item"><a href="index.jsp">Home</a>

						</li>
				
						<% if(isType.equals("Student")){ %>
							
							<li class="ask_question"><a href="ask_question.jsp">Ask Question</a></li>
						
						<%} %>
						<li><a href="cat_question.jsp">Questions</a>
							<!-- <ul>
								<li><a href="cat_question.jsp">Questions/Answer</a></li>
							
								<li><a href="single_question.jsp">Question Single</a></li>
								<li><a href="single_question_poll.jsp">Poll Question Single</a></li>
								
							</ul>
							-->
						</li>
						<li><a href="user_profile.jsp">My Desk</a>
							<ul>
								<li><a href="user_profile.jsp">Profile</a></li>
								<li><a href="cat_question.jsp">Questions</a></li>
								<li><a href="user_answers.jsp">Answers</a></li>
								
							</ul>
						</li>
						
						<li><a href="contact_us.jsp">Contact Us</a></li>
						<% if(isSession != null){ %>
						<li> <a href="http://localhost:8080/QA/logout?logout">Logout</a> </li>
						
						<% } %>
						
						<li> <a style="border-left: 1px solid white; color:#7CFC00;" href="user_profile.jsp"> 
						
						
						  <%= isName %> </a>  </li>
					</ul>
				</nav>
			</section><!-- End container -->
		</header><!-- End header -->