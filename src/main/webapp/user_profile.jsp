<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
	
	<div class="breadcrumbs">
		<section class="container">
			<div class="row">
			
				
				<div class="col-md-12">
					<h1>User Profile : <%= isEmail %></h1>
				</div>
				<div class="col-md-12">
					<div class="crumbs">
						<a href="#">Home</a>
						<span class="crumbs-span">/</span>
						<a href="#">User</a>
						<span class="crumbs-span">/</span>
						<span class="current">User Profile : admin</span>
					</div>
				</div>
			</div><!-- End row -->
		</section><!-- End container -->
	</div><!-- End breadcrumbs -->
	
	<section class="container main-content">
		<div class="row">
			<div class="col-md-9">
				<div class="row">
					<div class="user-profile">
						<div class="col-md-12">
							<div class="page-content">
								<h2>About admin</h2>
								<div class="user-profile-img "><img width="60" height="60" src="images/admin.png" alt="admin"></div>
								
								
								<div class="ul_list ul_list-icon-ok about-user">
									<ul>
										<li>Name : <span><%= isName %></span></li>
										<li>Email : <span><%= isEmail %></span></li>
										<li>Profile : <span><%= isType %></span></li>
									</ul>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu. Fusce viverra neque at purus laoreet consequat. Vivamus vulputate posuere nisl quis consequat. Donec congue commodo mi, sed commodo velit fringilla ac. Fusce placerat venenatis mi. Pellentesque habitant morbi tristique senectus et netus et malesuada .</p>
								<div class="clearfix"></div>
							
							</div><!-- End page-content -->
						</div><!-- End col-md-12 -->
						
					</div><!-- End user-profile -->
				</div><!-- End row -->
				<div class="clearfix"></div>
				
			</div><!-- End main -->
			<aside class="col-md-3 sidebar">
				<div class="widget widget_stats">
					
					<%@ include file="status.jsp" %>
					
				</div>
				
				
				
			</aside><!-- End sidebar -->
		</div><!-- End row -->
	</section><!-- End container -->
	
<%@ include file="footer.jsp" %>