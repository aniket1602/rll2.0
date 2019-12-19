<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* , com.mphasis.AirlineRProject.Model.*, com.mphasis.AirlineRProject.Bo.*" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
h1{
  color:green;
}
}
</style>
</head>

<body>
<table class="table table-striped">
  
<h2> Ticket Details</h2>
  <thead>
    <tr>
      <th scope="col">Booking Id</th>
      <th scope="col">Fiight No</th>
      <th scope="col">Mobile No</th>
      <th scope="col">Fare</th>
	   <th scope="col">Booking Date</th>
	    <th scope="col">Travelling Seat</th>
		 <th scope="col">No of Seats</th>
		  <th scope="col">status</th>
    </tr>
  </thead>
  <tbody>
   <%
BookingBo bo = new BookingBo();
List<Booking> li = bo.getAllTicket();
for(Booking b:li){
%>
	<tr>
	<td><%=b.getTicketNo() %></td>
	<td><%=b.getFlightId() %></td>
	<td><%=b.getMobile() %></td>
	<td><%=b.getTotalFare() %></td>
	<td><%=b.getBookingdate() %></td>
	<td><%=b.getTraveldate() %></td>
	<td><%=b.getNoofSeatBooked() %></td>
	<td><%=b.getStatus() %></td>
	</tr>
<% }
%>
  </tbody>
</table>
</body>
</html>