
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
			
		