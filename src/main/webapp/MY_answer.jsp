<%
try{
								
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(  
									"jdbc:mysql://localhost:3306/faq","root","");
								
								
									
									//inserting data into database
								
								    Statement stmt1 = con.createStatement(); 
									String qoo = String.format("SELECT * FROM `answer` where email='%s'",isEmail);
						            ResultSet rs = stmt1.executeQuery(qoo);
						            
						            
						            
						        	
						            while(rs.next()){
						        
						            	String answer = rs.getString("answer");
					
						            	
						            	String aid = rs.getString("aid");
						            	
%>

			<article class="post blog_2 clearfix">
					<div class="post-inner">
			            <div class="post-img"><a href="single_post.html"><img src="../ask-me/images/demo/posts/loneliness-1440x900.jpg" alt=""></a></div>
				        <div class="post-meta">
				           <!--  <span class="meta-author"><i class="icon-user"></i><a href="#">Administrator</a></span>
				            <span class="meta-date"><i class="icon-time"></i>September 30 , 2013</span>
				            <span class="meta-categories"><i class="icon-suitcase"></i><a href="#">Wordpress</a></span>
				            <span class="meta-comment"><i class="icon-comments-alt"></i><a href="#">15 comments</a></span>
				            -->
				        </div>
				        <div class="post-content">
				         <p class=" button color small"> Question Id :   <%= aid %></p>
				            <p style="margin-left: 5px; margin-top:10px; font-size:18px;" ><%= answer %></p>
				            
				            
				            
				            
				            
				        </div><!-- End post-content -->
				    </div><!-- End post-inner -->
				</article><!-- End article.post -->
				
	<%		


				
						            	
						            }
						       	     
						            
						            
						            
						            }catch(Exception e){
						            	out.print(e);
						            }

	
						            
 %>
		