package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import classes.UserAccounts;
import classes.Appointment;
 
public class DBUtils {
 
	// See if user exists in database
	// Returns user if exists
	// returns null if no user exists in database
  public static UserAccounts findUser(Connection conn, String userName, String password) throws SQLException {
 
      String sql = "Select a.User_Name, a.Password, from User_Account a "
              + " where a.User_Name = ? and a.password= ?";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
      pstm.setString(1, userName);
      pstm.setString(2, password);
      ResultSet rs = pstm.executeQuery();
 
      if (rs.next()) {
          UserAccounts user = new UserAccounts();
          user.setUsername(userName);
          user.setPassword(password);
          return user;
      }
      	  return null;
  }
  
  /*  Overloaded method for setting a new user
   *  takes in database connection and a username
   *  checks if username is already in database
   * */
  public static UserAccounts findUser(Connection conn, String userName) throws SQLException {
 
      String sql = "Select a.User_Name, a.Password, from User_Accounts a " + " where a.User_Name = ? ";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
      pstm.setString(1, userName);
 
      ResultSet rs = pstm.executeQuery();
 
      if (rs.next()) {
          String password = rs.getString("Password");
          UserAccounts user = new UserAccounts();
          user.setUsername(userName);
          user.setPassword(password);
          return user;
      }
      return null;
  }
 
  // Creates and ArrayList of appointments
  public static List<Appointment> queryAppointment(Connection conn) throws SQLException {
      String sql = "Select a.ApptDate, a.StartTime, a.ApptEndTime, a.VetLocation, a.DoctorName, a.VisitTitle, a. VisitLocation "
      				+ "from Appointment a ";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
 
      ResultSet rs = pstm.executeQuery();
      List<Appointment> list = new ArrayList<Appointment>();
      while (rs.next()) {
    	  String apptDate = rs.getString("ApptDate");
    	  String apptStartTime = rs.getString("ApptStartTime");
    	  String apptEndTime = rs.getString("ApptEndTime");
    	  String vetLocation = rs.getString("VetLocation");
    	  String doctorName = rs.getString("DoctorName");
    	  String visitTitle = rs.getString("VisitTitle");
    	  String visitDescripton = rs.getString("VisitDescription");
    	  
          Appointment appt = new Appointment(apptDate, apptStartTime, apptEndTime, vetLocation, doctorName, visitTitle, visitDescripton);
      }
      
      	  return list;	
  }
 
  public static Appointment findAppointment(Connection conn, String apptDate) throws SQLException {
      String sql = "Select a.ApptDate, a.StartTime, a.ApptEndTime, a.VetLocation, a.DoctorName, a.VisitTitle, a. VisitLocation "
      		+ " from Appointment a "
      		+ "where a.ApptDate=?";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
      pstm.setString(1, apptDate);
 
      ResultSet rs = pstm.executeQuery();
 
      while (rs.next()) {
    	  //String apptDate = rs.getString("ApptDate");
    	  String apptStartTime = rs.getString("ApptStartTime");
    	  String apptEndTime = rs.getString("ApptEndTime");
    	  String vetLocation = rs.getString("VetLocation");
    	  String doctorName = rs.getString("DoctorName");
    	  String visitTitle = rs.getString("VisitTitle");
    	  String visitDescripton = rs.getString("VisitDescription");
    	  
    	  Appointment appt = new Appointment(apptDate, apptStartTime, apptEndTime, vetLocation, doctorName, visitTitle, visitDescripton);
          return appt;
      }
      	  return null;
  }
 
  public static void updateAppointment(Connection conn, Appointment appt) throws SQLException {
      String sql = "Update Appointment set ApptDate =?, ApptStartTime=?, ApptEndTime=?, VetLocation=?, DoctorName=?, VisitTitle=?, VisitDescription=? "
      			+ "where Code=? ";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
 
      pstm.setString(1, appt.getApptDate());
      pstm.setString(2, appt.getApptStartTime());
      pstm.setString(3, appt.getApptEndTime());
      pstm.setString(4, appt.getApptLocation());
    //  pstm.setString(5, appt.getDoctorName());
      pstm.setString(6, appt.getVisitTitle());
      pstm.setString(7, appt.getVisitDescripton());
      
      pstm.executeUpdate();
  }
 
  public static void insertAppointment(Connection conn, Appointment appt) throws SQLException {
      String sql = "Insert into Appointment(Code, ApptDate, ApptStartTime, ApptEndTime, VetLocation, DoctorName, VisitTitle, VisitDescription) values (?,?,?,?,?,?,?)";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
 
      pstm.setString(1, appt.getApptDate());
      pstm.setString(2, appt.getApptStartTime());
      pstm.setString(3, appt.getApptEndTime());
      pstm.setString(4, appt.getApptLocation());
    //  pstm.setString(5, appt.getDoctorName());
      pstm.setString(6, appt.getVisitTitle());
      pstm.setString(7, appt.getVisitDescripton());
      
      pstm.executeUpdate();
  }
 
  public static void deleteAppointment(Connection conn, String apptDate) throws SQLException {
      String sql = "Delete Appointment where ApptDate= ?";
 
      PreparedStatement pstm = conn.prepareStatement(sql);
 
      pstm.setString(1, apptDate);
 
      pstm.executeUpdate();
  }
}