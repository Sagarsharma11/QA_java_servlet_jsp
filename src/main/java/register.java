

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("cpass");
		String status="user";
		String type=request.getParameter("type");
		out.print(type);
		
		
		//		out.print(uname);
//		out.print(email);
//		out.print(pass);
//		out.print(cpass);
		
		try {
		
		

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faq","root","");
				Statement stmt = con.createStatement();
				String q1 = String.format("INSERT INTO `register` (`id`, `user`, `email`, `password1`, `status`,`type`) "
						+ "VALUES (NULL, '%s', '%s', '%s', '%s','%s');",uname,email,pass,status,type);
				int x = stmt.executeUpdate(q1);
				if (x > 0) {
		            out.print("Successfully Inserted");
					response.sendRedirect("http://localhost:8080/QA/?register=success");
				}
		        else           
		            out.print("Insert Failed");
	             
	            con.close();
			
			
		}catch(Exception e) {System.out.print(e);}
		
	}

}
