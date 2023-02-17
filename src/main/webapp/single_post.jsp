<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
 
	
	<div class="breadcrumbs">
		<section class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Answers</h1>
				</div>
			
			</div><!-- End row -->
		</section><!-- End container -->
	</div><!-- End breadcrumbs -->
<%

String question = request.getParameter("question");
String category = request.getParameter("category");

String description = request.getParameter("description");
int id_ans =  Integer.parseInt(request.getParameter("id"));

%>	

	
	<section class="container main-content">
		<div class="row">
			<div class="col-md-9">
				<article class="post single-post clearfix">
					<div class="post-inner">
				        <div class="post-img"><a href="single_post.html"><img src="../ask-me/images/demo/posts/loneliness-1440x900.jpg" alt=""></a></div>
			        	<h2 class="post-title"><span class="post-type"><i class="icon-film"></i></span><% out.print(question); %></h2>
			        	<p>Category : <% out.print(category); %> </p>
			        	<p>Details : <% out.print(description); %> </p>
			        	   <!--  <div class="post-meta">
			        	        <span class="meta-author"><i class="icon-user"></i><a href="#">Administrator</a></span>
			        	        <span class="meta-date"><i class="icon-time"></i>September 30 , 2013</span>
			        	        <span class="meta-categories"><i class="icon-suitcase"></i><a href="#">Wordpress</a></span>
			        	        <span class="meta-comment"><i class="icon-comments-alt"></i><a href="#">15 comments</a></span>
			        	    </div>
			        	    -->
				        <div class="post-content">
									<p> answer </p>
				        </div><!-- End post-content -->
				        <div class="clearfix"></div>
				    </div><!-- End post-inner -->
				</article><!-- End article.post -->
				
				
				
			
				
				<div id="commentlist" class="page-content">
					<div class="boxedtitle page-title"><h2>Answers </h2></div>
					<ol class="commentlist clearfix">
					  
					  <%
					  
						
						try {
							
							Class.forName("com.mysql.jdbc.Driver");
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/faq","root","");
							Statement stmt = con.createStatement();
							
							String q = String.format("select * from answer where aid ='%d'",id_ans);
							
							ResultSet rs = stmt.executeQuery(q);
							
							while(rs.next()){
								
								String AnsEmail = rs.getString("email");
								
								String Ans = rs.getString("answer");
							
							
							%>
				
					    <li class="comment">
					        <div class="comment-body clearfix"> 
					            <div class="avatar"><img alt="" src="images/avtar1.webp"></div>
					            <div class="comment-text">
					                <div class="author clearfix">
					                	<div class="comment-meta">
					                        <span><%= AnsEmail %></span>
					                       
					                    </div>
					                   
					                </div>
					                <div class="text"><p><%= Ans %></p>
					                </div>
					            </div>
					        </div>
					    </li>
					    
					   <%
							}
						}
					  catch(Exception e){
						  out.print(e);
					  }
					  
					 %>
					</ol><!-- End commentlist -->
				</div><!-- End page-content -->
				
				<% if(isType.equals("Teacher")){ %>
				
				<div id="respond" class="comment-respond page-content clearfix">
				    <div class="boxedtitle page-title"><h2>Send Your Answer</h2></div>
				    <form action="answer" id="commentform" class="comment-form">
				        <div id="respond-inputs" class="clearfix">
				        	<% String id = request.getParameter("id"); %>
				        	<input style="display:none;" type="text" value="<% out.print(id); %>" name="id" >
				            <p>
				                <label style="display:none;" class="required" for="comment_name">Name<span>*</span></label>
				                <input style="display:none;"   type="text" readonly value="<%= isName %>" name="name" id="comment_name" aria-required="true">
				            </p>
				            <p>
				                <label style="display:none;" class="required" for="comment_email">E-Mail<span>*</span></label>
				                <input style="display:none;" name="email" type="text" readonly value="<%= isEmail %>" id="comment_email" aria-required="true">
				            </p>
				         
				        </div>
				        <div id="respond-textarea">
				            <p>
				                <label class="required" for="comment">Answer<span>*</span></label>
				                <textarea id="comment" name="answer" aria-required="true" cols="58" rows="10"></textarea>
				            </p>
				        </div>
				        <p class="form-submit">
				        	<input name="submit" type="submit" id="submit" value="Post Comment" class="button small color">
				        </p>
				    </form>
				</div>
				
				<% } %>
			
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