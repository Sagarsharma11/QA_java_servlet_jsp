<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		
		
		
		
		
		
		
		
		<%
		int countQUS=0;
		int countANS=0;
		try{
			
		
								
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(  
									"jdbc:mysql://localhost:3306/faq","root","");
								
								
									
									//inserting data into database
								
								    Statement stmt1 = con.createStatement();
								    Statement stmt2 = con.createStatement();  

						            ResultSet rs = stmt1.executeQuery("SELECT * FROM `question`");
						            
						            while(rs.next()){
						            	countQUS++;
						            }
						            
						            ResultSet rs2 = stmt2.executeQuery("SELECT * FROM `answer`");
						            
						            while(rs2.next()){
						            	countANS++;
						            }
						            
						           
		}catch(Exception e){
			System.out.print(e);
		}
		
		%>
		
		
		
		
		
		
		
		
		
				<div class="widget widget_stats">
					<h3 class="widget_title">Stats</h3>
					<div class="ul_list ul_list-icon-ok">
						<ul>
							<li><i class="icon-question-sign"></i>Questions ( <span><% out.print(countQUS); %></span> )</li>
							<li><i class="icon-comment"></i>Answers ( <span><% out.print(countANS); %></span> )</li>
						</ul>
					</div>
				</div>