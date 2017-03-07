package servlets;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = { "/createAppointment" })
public class CreateAppointmentServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
 
  public CreateAppointmentServlet() {
      super();
  }
 
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
 
      RequestDispatcher dispatcher = ((GenericServlet) request).getServletContext()
              .getRequestDispatcher("/WEB-INF/pages/CreateAppointmentPage.jsp");
      dispatcher.forward(request, response);

  }
 
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      doGet(request, response);
  }
 
}