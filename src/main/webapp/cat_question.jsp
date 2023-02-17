<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
  
	
	<div class="breadcrumbs">
		<section class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Question_category</h1>
				</div>
				<div class="col-md-12">
					<div class="crumbs">
						<a href="#">Home</a>
						<span class="crumbs-span">/</span>
						<span class="current">Question_category</span>
					</div>
				</div>
			</div><!-- End row -->
		</section><!-- End container -->
	</div><!-- End breadcrumbs -->
	
	<section class="container main-content page-left-sidebar">
		<div class="row">
			<div class="col-md-9">
			

<%
try{
								
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(  
									"jdbc:mysql://localhost:3306/faq","root","");
								
								
									
									//inserting data into database
								
								    Statement stmt1 = con.createStatement();  
						            ResultSet rs = stmt1.executeQuery("SELECT * FROM `question`");
						            
						            
						            
						        	
						            while(rs.next()){
						        
						            	String question = rs.getString("question");
						            	String category = rs.getString("category");
						            	String description = rs.getString("details");
						            	
						            	String id = rs.getString("qid");
						            	
%>

			<article class="post blog_2 clearfix">
					<div class="post-inner">
				        <h2 class="post-title"><span class="post-type"><i class="icon-picture"></i></span><a href="single_post.html"></><% out.print(question); %></a></h2>
			            <div class="post-img"><a href="single_post.html"><img src="../ask-me/images/demo/posts/loneliness-1440x900.jpg" alt=""></a></div>
				        <div class="post-meta">
				           <!--  <span class="meta-author"><i class="icon-user"></i><a href="#">Administrator</a></span>
				            <span class="meta-date"><i class="icon-time"></i>September 30 , 2013</span>
				            <span class="meta-categories"><i class="icon-suitcase"></i><a href="#">Wordpress</a></span>
				            <span class="meta-comment"><i class="icon-comments-alt"></i><a href="#">15 comments</a></span>
				            -->
				        </div>
				        <div class="post-content">
				         <p class=" button color small"> Category  <% out.print(category); %></p>
				            <p style="margin-left: 5px; margin-top:10px; font-size:28px;" ><% out.print(description); %></p>
				            
				            
				            
				            <a href="single_post.jsp?question=<%out.print(question); %>&&category=<% out.print(category);%>&&description=<% out.print(description); %>&&id=<%out.print(id); %>" class="post-read-more button color small">See Answers</a>
				            
				            
				        </div><!-- End post-content -->
				    </div><!-- End post-inner -->
				</article><!-- End article.post -->
				
			



<%        	
						            	count++;
				
						            	
						            }
						       	     
						            
						            
						            
						            }catch(Exception e){
						            	out.print(e);
						            }

	
						            
 %>
			
			

		
		
				
			<!-- 	
			
				<div class="pagination">
				    <a href="#" class="prev-button"><i class="icon-angle-left"></i></a>
				    <span class="current">1</span>
				    <a href="#">2</a>
				    <a href="#">3</a>
				    <a href="#">4</a>
				    <a href="#">5</a>
				    <span>...</span>
				    <a href="#">11</a>
				    <a href="#">12</a>
				    <a href="#">13</a>
				    <a href="#" class="next-button"><i class="icon-angle-right"></i></a>
				</div>
				
				-->
				<!-- End pagination -->
			</div><!-- End main -->
			<aside class="col-md-3 sidebar">
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
				
				
				<div class="widget widget_tag_cloud">
					<h3 class="widget_title">Tags</h3>
					<a href="#">projects</a>
					<a href="#">Portfolio</a>
					<a href="#">Wordpress</a>
					<a href="#">Html</a>
					<a href="#">Css</a>
					<a href="#">jQuery</a>
					<a href="#">2code</a>
					<a href="#">vbegy</a>
				</div>
				
				<div class="widget">
					<h3 class="widget_title">Recent Questions</h3>
					<ul class="related-posts">
						<li class="related-item">
							<h3><a href="#">This is my first Question</a></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							<div class="clear"></div><span>Feb 22, 2014</span>
						</li>
						<li class="related-item">
							<h3><a href="#">This Is My Second Poll Question</a></h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							<div class="clear"></div><span>Feb 22, 2014</span>
						</li>
					</ul>
				</div>
				
			</aside><!-- End sidebar -->
		</div><!-- End row -->
	</section><!-- End container -->
	
<%@ include file="footer.jsp" %>