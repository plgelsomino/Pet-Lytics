package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import classes.Appointment;
import utils.DBUtils;
import utils.MyUtils;
 
@WebServlet(urlPatterns = { "/doEditAppointment" })
public class DoEditAppointmentServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public DoEditAppointmentServlet() {
       super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       	Connection conn = MyUtils.getStoredConnection(request);
 
		String apptDate = (String) request.getParameter("apptDate");
		String apptStartTime = (String) request.getParameter("apptStartTime");
		String apptEndTime = (String) request.getParameter("apptStartTime");
		String vetLocation = (String) request.getParameter("apptEndTime");
		String doctorName = (String) request.getParameter("doctorName");
		String visitTitle = (String) request.getParameter("visitTitle");
		String visitDescripton = (String) request.getParameter("visitDescription");

		Appointment appt = new Appointment(apptDate, apptStartTime, apptEndTime, vetLocation, doctorName, visitTitle, visitDescripton);

		String errorString = null;
 
       try {
           DBUtils.updateAppointment(conn, appt);
       } catch (SQLException e) {
           e.printStackTrace();
           errorString = e.getMessage();
       }
 
       // Store information to request attribute, before forward to views.
       request.setAttribute("errorString", errorString);
       request.setAttribute("Appointment", appt);
 
 
       // If error, forward to Edit page.
       if (errorString != null) {
           RequestDispatcher dispatcher = ((GenericServlet) request).getServletContext()
                   .getRequestDispatcher("/WEB-INF/pages/EditAppointmentPage.jsp");
           dispatcher.forward(request, response);
       }
        
       // If everything nice.
       // Redirect to the Appointment listing page.            
       else {
           response.sendRedirect(request.getContextPath() + "/appointmentList");
       }
 
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request, response);
   }
 
}