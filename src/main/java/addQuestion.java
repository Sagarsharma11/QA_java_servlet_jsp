

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
@WebServlet("/addQuestion")
public class addQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("id");
		String question=request.getParameter("question");
		String category=request.getParameter("category");
		String details=request.getParameter("details");
		
		//String type=request.getParameter("type");
		
		//out.print(type);
		
		
		out.print(id);
		out.print(question);
		out.print(category);
		out.print(details);
		
		try {
		
		

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faq","root","");
				Statement stmt = con.createStatement();
				String q1 = String.format("INSERT INTO `question` (`qid`, `question`, `category`, `details`, `id`) "
															+"VALUES (NULL, '%s', '%s', '%s', '%s');",question,category,details,id);
				int x = stmt.executeUpdate(q1);
				if (x > 0) {
		            out.print("Successfully Inserted");
		            response.sendRedirect("http://localhost:8080/QA/ask_question.jsp?questionAdd=successfull");
				}
		        else           
		            response.sendRedirect("http://localhost:8080/QA/ask_question.jsp");
	             
	            con.close();
			
			
		}catch(Exception e) {System.out.print(e);}
		
	}

}
