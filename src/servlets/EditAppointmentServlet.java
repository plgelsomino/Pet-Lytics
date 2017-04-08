//package servlets;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.SQLException;
//
//import javax.servlet.GenericServlet;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
// 
//import classes.Appointment;
//import utils.DBUtils;
//import utils.MyUtils;
// 
//@WebServlet(urlPatterns = { "/editAppointment" })
//public class EditAppointmentServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
// 
//    public EditAppointmentServlet() {
//        super();
//    }
// 
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        Connection conn = MyUtils.getStoredConnection(request);
// 
//        String apptDate = (String) request.getParameter("apptDate");
// 
//        Appointment appt = null;
// 
//        String errorString = null;
// 
//        try {
//            appt = DBUtils.findAppointment(conn, apptDate);
//        } catch (SQLException e) {
//            e.printStackTrace();
//            errorString = e.getMessage();
//        }
// 
//         
//        // If no error.
//        // The appointment does not exist to edit.
//        // Redirect to appointmentList page.
//        if (errorString != null && appt == null) {
//            response.sendRedirect(request.getServletPath() + "/appointmentList");
//            return;
//        }
// 
//        // Store errorString in request attribute, before forward to views.
//        request.setAttribute("errorString", errorString);
//        request.setAttribute("appointment", appt);
// 
//        RequestDispatcher dispatcher = ((GenericServlet) request).getServletContext()
//                .getRequestDispatcher("/WEB-INF/pages/EditAppointmentPage.jsp");
//        dispatcher.forward(request, response);
// 
//    }
// 
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        doGet(request, response);
//    }
// 
//}
