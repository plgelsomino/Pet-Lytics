package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.sun.javafx.binding.Logging;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 System.out.println("Logging out user");
		
		 request.getSession().invalidate();
	     //response.sendRedirect(request.getContextPath() + "/LoginPage");
		 
		 System.out.println("Session terminated "
		 		+ "\nSending to JSP");
	     
	     RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/pages/LoginPage.jsp");
         dispatcher.forward(request, response);
	     
         System.out.println("Sent to JSP");
         
	     doGet(request, response);
	}

}
