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
//import utils.DBUtils;
//import utils.MyUtils;
// 
//@WebServlet(urlPatterns = { "/deleteAppointment" })
//public class DeleteAppointmentServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
// 
//    public DeleteAppointmentServlet() {
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
//        String errorString = null;
// 
//        try {
//            DBUtils.deleteAppointment(conn, apptDate);
//        } catch (SQLException e) {
//            e.printStackTrace();
//            errorString = e.getMessage();
//        }
//         
// 
//        // If an error redirected to an error page.
//        if (errorString != null) {
// 
//            // Store the information in the request attribute, before forward to views.
//            request.setAttribute("errorString", errorString);
//            //
//            RequestDispatcher dispatcher = ((GenericServlet) request).getServletContext()
//                    .getRequestDispatcher("/WEB-INF/pages/DeleteAppointmentPage.jsp");
//            dispatcher.forward(request, response);
//        }
// 
//        // If everything nice.
//        // Redirect to the Appointment listing page.        
//        else {
//            response.sendRedirect(request.getContextPath() + "/appointmentList");
//        }
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
