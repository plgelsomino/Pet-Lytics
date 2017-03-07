<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Appointment</title>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
    
    <h3>Create Product</h3>
    
    <p style="color: red;">${errorString}</p>
    
    <form method="POST" action="doCreateAppointment">
       <table border="0">
          <tr>
             <td>Appointment Date</td>
             <td><input type="text" name="code" value="${appointment.apptDate}" /></td>
          </tr>
          <tr>
             <td>Appointment Start Time</td>
             <td><input type="text" name="name" value="${appointment.apptStartTime}" /></td>
          </tr>
          <tr>
             <td>Appointment End Time</td>
             <td><input type="text" name="price" value="${appointment.apptEndTime}" /></td>
          </tr>
          <tr>
             <td>Vet Location</td>
             <td><input type="text" name="price" value="${appointment.vetLocation}" /></td>
          </tr>
          <tr>
             <td>Doctor Name</td>
             <td><input type="text" name="price" value="${appointment.doctorName}" /></td>
          </tr>
          <tr>
             <td>Reason for Visit</td>
             <td><input type="text" name="price" value="${appointment.visitTitle}" /></td>
          </tr>
          <tr>
             <td>Appointment Description</td>
             <td><input type="text" name="price" value="${appointment.visitDescription}" /></td>
          </tr>

          <tr>
             <td colspan="2">                  
                 <input type="submit" value="Submit" />
                 <a href="productList">Cancel</a>
             </td>
          </tr>
          
       </table>
    </form>
    
    <jsp:include page="_footer.jsp"></jsp:include>
    
</body>
</html>