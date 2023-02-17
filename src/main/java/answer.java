

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
@WebServlet("/answer")
public class answer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public answer() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String answer=request.getParameter("answer");
		String email=request.getParameter("email");
		String id=request.getParameter("id");

		
				out.print(answer);
		out.print(email);
		out.print(id);
//		out.print(cpass);
		
		try {
		
		

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faq","root","");
				Statement stmt = con.createStatement();
				String q1 = String.format("INSERT INTO `answer` (`id`, `answer`, `aid`, `email`) VALUES (NULL, '%s', '%s', '%s');",answer,id,email);
				int x = stmt.executeUpdate(q1);
				if (x > 0) {
		            out.print("Successfully Inserted");
			response.sendRedirect("http://localhost:8080/QA/?answer=success");
				}
		        else           
					response.sendRedirect("http://localhost:8080/QA/?answer=success");
	             
	            con.close();
			
			
		}catch(Exception e) {System.out.print(e);}
		
	}

}
