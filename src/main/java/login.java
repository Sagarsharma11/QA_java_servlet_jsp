

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class register
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session = request.getSession(); //Fetch session object
		
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
	
	
		
		//		out.print(uname);
	out.print(email);
		out.print(pass);
//		out.print(cpass);
		
		try {
		
		

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faq","root","");
				Statement stmt = con.createStatement();
				
				String q1 = String.format("SELECT * FROM `register`");
				
				ResultSet rs = stmt.executeQuery(q1);
				
				boolean flag = false;
				
				String isType = "";
				String isSession = "";
				String isUserId = "";
				String isName="";
				String isEmail="";
				
				while(rs.next()) {
					String eml = rs.getString("email");
					String password = rs.getString("password1");
					
					
					if(eml.trim().equals(email)) {
						if(pass.trim().equals(password)) {
							flag=true;
							isSession = eml;
							isUserId=rs.getString("id");
							isType = rs.getString("type");
							isName = rs.getString("user");
							isEmail = rs.getString("email");
						}
					}
					
					out.print(eml);
					out.print(password);
				}
				
//				String q1 = String.format("INSERT INTO `register` (`id`, `user`, `email`, `password1`, `status`,`type`) "
//						+ "VALUES (NULL, '%s', '%s', '%s', '%s','%s');",uname,email,pass,status,type);
//				int x = stmt.executeUpdate(q1);
				
				
				if (flag == true) {
		            out.print("Successfully Inserted");
		            session.setAttribute("isType", isType);
		            session.setAttribute("isSession", isSession);
		            session.setAttribute("isUserId",isUserId);
		            session.setAttribute("isName", isName);
		            session.setAttribute("isEmail",isEmail);
		            
					response.sendRedirect("http://localhost:8080/QA/?login=success");
				}
		        else           
		            response.sendRedirect("http://localhost:8080/QA/index.jsp");
	             
	            con.close();
			
			
		}catch(Exception e) {System.out.print(e);}
		
	}

}
