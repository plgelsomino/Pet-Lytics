package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.print.attribute.ResolutionSyntax;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class doNewUserServlet
 */
@WebServlet("/doNewUserServlet")
public class doNewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public doNewUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

        String username = request.getParameter("username").toLowerCase();
        String password = request.getParameter("password").toLowerCase();
        String email = request.getParameter("email").toLowerCase();
        
        String petName = request.getParameter("petName");
        String petType = request.getParameter("petType");
        String petBreed = request.getParameter("petBreed");
        String petBirthDate = request.getParameter("petBirthDate");
        String petPurchasePlace = request.getParameter("petPurchasePlace");
        String petPurchaseTown = request.getParameter("petPurchaseTown");
        String petPurchaseDate = request.getParameter("petPurchaseDate");
        String petWeight = request.getParameter("petWeight");
        String petColor = request.getParameter("petColor");
         
        try {
			insertIntoUsersTable(username, password, email);
			insertIntoPetsTable(petName, petType, petBreed, petBirthDate, petPurchasePlace, petPurchaseTown, petPurchaseDate, petWeight, petColor);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        try {
        	int[] userPetArray = getNewUserIdAndPetId(username, email, petName, petType);
        	int idUser = userPetArray[0];
        	int idPet = userPetArray[0];
        	
			insertPetOwnerPetRelationship(idUser, idPet);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	} 
	
	/*
	 *  Returns array 
	 *  Array has new user id that was just created
	 * 	and has new petId that was just created
	 *  
	 *  parameters are from user variables just created
	 *  username and email are unique
	 *  petName and petType are unique
	 */ 
	public int[] getNewUserIdAndPetId(String username, String email, String petName, String petType) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException {
                 
         Connection connection = getDatabaseConnection();
         Statement stmt = (Statement) connection.createStatement();
         
         int dbUserId = 0;
         int dbPetId = 0;
         int[] userPetArray = new int[2];
         
         String queryUser = "SELECT idUser "
         		+ "FROM users "
         		+ "WHERE Username='" + username + "' AND Email='" + email + "';";
         
         String queryPets = "SELECT idPets "
          		+ "FROM pets "
          		+ "WHERE PetName='" + petName + "' AND PetType='" + petType + "';";
         
         stmt.executeQuery(queryUser);
         ResultSet rsUsers = stmt.getResultSet();
         while(rsUsers.next()){
             dbUserId = rsUsers.getInt("idUser");
             userPetArray[0] = dbUserId;
         }
         
         stmt.executeQuery(queryPets);
         ResultSet rsPets = stmt.getResultSet();
         while(rsPets.next()){
             dbPetId = rsPets.getInt("idPets");
             userPetArray[1] = dbPetId;
         }
         	return userPetArray;
	}
	
	
	
	public void insertIntoUsersTable(String username, String password, String email) throws SQLException {
		Connection connection = getDatabaseConnection();
		
		String query;
		
		 Statement stmt = (Statement) connection.createStatement();
         query = "INSERT INTO users "
        		 + "(Username, Password, UserEmail) "
        		 + "VALUES " 
        		 + "('"+ username + "', '" + password + "', '" + email + "';";				
	
         query = "SELECT username, password "
         		+ "FROM users "
         		+ "WHERE username='" + username + "' AND password='" + password + "';";
         stmt.executeQuery(query);
	}
	
	public void insertIntoPetsTable(String petName, String petType, 
			String petBreed, String petBirthDate, String petPurchasePlace, String petPurchaseTown, String petPurchaseDate,
			String petWeight, String petColor) throws SQLException {
		
		Connection connection = getDatabaseConnection();
		
		String query;
		
		 Statement stmt = (Statement) connection.createStatement();
         query = "INSERT INTO pets "
        		 + "(PetName, PetType, PetBreed, PetBirthDate, PetPurchasePlace, PetPurchaseTown, PetPurchaseDate, PetWeight, PetColor, PetPicture) "
        		 + "VALUES " 
        		 + "('"+ petName + "', '" + petType + "', '" + petBreed + "', '" + petBirthDate + "', '" + petPurchasePlace + "', '" + 
        		 petPurchaseTown + "', '" + petPurchaseDate + "', '" + petWeight + "', '" + petColor + "', '" + null + "';";				
	
         stmt.executeQuery(query);
	}
	
	public void insertPetOwnerPetRelationship(int idPetOwner, int idPets) throws SQLException {
		
		Connection connection = getDatabaseConnection();
		
		String insertQuery;
		
		Statement stmt = (Statement) connection.createStatement();
        insertQuery = "INSERT INTO petowner_has_pets "
        		 + "(PetOwner_idPetOwner, Pets_idPets) "
        		 + "VALUES " 
        		 + "('"+ idPetOwner + "', '" + idPets +  "';";				
	
         stmt.executeQuery(insertQuery);

	}
	
	
	public Connection getDatabaseConnection() throws SQLException {
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     Connection con = DriverManager.getConnection("jdbc:mysql://localhost/pets", "root", "gels0207");
	     
	     if(con!=null) {
	    	 System.out.println("PETE: Connection Successful");
	    	 return con;
	     }
	     	System.out.println("PETE: Connection failed");
	     	return null;
	}
	
	
	

}
