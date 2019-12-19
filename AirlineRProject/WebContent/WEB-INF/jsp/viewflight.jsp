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
</head>
<body>


<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Flight Id</th>
      <th scope="col">Flight Name </th>
      <th scope="col">From</th>
      <th scope="col">To</th>
	  <th scope="col">Arrival Time</th>
	  <th scope="col">Departure Time</th>
	  <th scope="col">Fare</th>
	  <th scope="col">Number of seats Avaliable</th>
	  <th scope="col">Days</th>
    </tr>
  </thead>
  <tbody>
   
<%
FlightBo fb = new FlightBo();
List<Flight> li = fb.getAllFlight();
for(Flight p:li){
%>
	<tr>
	<td><%=p.getFlightId() %></td>
	<td><%=p.getFlightName() %></td>
	<td><%=p.getSourceName()%></td>
	<td><%=p.getDestinationName() %></td>
	<td><%=p.getArrivalTime() %></td>
	<td><%=p.getDepartureTime() %></td>
	<td><%=p.getFare() %></td>
	<td><%=p.getNoofSeatAvailble() %></td>
	<td><%=p.getAvailbleDays() %>
	<td><a href="./editflight?fid=<%=p.getFlightId()%>">Edit</a></td>
	<td><a href="./deleteFlight?fid=<%=p.getFlightId()%>">delete</a></td>
	
	
	</tr>
<% }
%>

  </tbody>
</table>
</body>
</html>