package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewUserServlet
 */
@WebServlet("/NewUserServlet")
public class NewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NewUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		response.setContentType("text/html");
//		PrintWriter pw = response.getWriter();
//		// String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";//
//		// newData is the database
//		// Connection connection;
//		Connection conn = null;
//		String url = "jdbc:mysql://localhost:3306/";
//		String dbName = "userlogindb";
//		String driver = "com.mysql.jdbc.Driver";
//		// String dbUserName="root";
//		// String dbPassword="root";
//
//		try {
//			String username = request.getParameter("username");
//			String password = request.getParameter("password");
//			String fName = request.getParameter("lname");
//			String lname = request.getParameter("username");
//			String petType = request.getParameter("petTypeList");
//			String petName = request.getParameter("petName");
//			String petBirthday = request.getParameter("petBirthday");
//			String petPurchaseLocList = request.getParameter("petPurchaseLocList");
//			String petColor = request.getParameter("petColor");
//
//			Class.forName(driver).newInstance();
//			conn = DriverManager.getConnection(url + dbName, "root", "root");
//			PreparedStatement pstUser = (PreparedStatement) conn.prepareStatement(
//					"insert into 'users'.'registerutable'(username,password,fName,lName) values(?,?,?,?)");
//			PreparedStatement pstPet = (PreparedStatement) conn.prepareStatement(
//					"insert into 'pet'.'registerutable'(username,petType,petName,petBirthday,petPurchaseLocList,petColor) values(?,?,?,?)");
//			
//			pstUser.setString(1, username);
//			pstUser.setString(2, password);
//			pstUser.setString(3, fName);
//			pstUser.setString(4, lname);
//			
//			pstPet.setString(1, username);
//			pstPet.setString(2, petType);
//			pstPet.setString(3, petName);
//			pstPet.setString(4, petBirthday);
//			pstPet.setString(5, petPurchaseLocList);
//			pstPet.setString(6, petColor);
//
//			int i = pstUser.executeUpdate();
//			int j = pstPet.executeUpdate();
//			String msg = " ";
//			if (i != 0 && j != 0) {
//				msg = "Welcome to Pet-Lytics, Lets Keep " + petName + " as healthy as possible";
//				System.out.println(msg);
//			} else {
//				msg = "Failed to create user please try again";
//				System.out.println(msg);
//			}
//			pstUser.close();
//			pstPet.close();
//		} catch (Exception e) {
//			pw.println(e);
//		}

		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/pages/NewUser.jsp");
		dispatcher.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
