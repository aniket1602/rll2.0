<%@page import="java.time.Period"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
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
				<th scope="col">Flight Id </th>
				<th scope="col">Flight Name </th>
				<th scope="col">From </th>
				<th scope="col">To </th>
				<th scope="col">Arrival time </th>
				<th scope="col">Departure time </th>
				<th scope="col">fare </th>
				<th scope="col">No of Seat available</th>
				<th scope="col">days</th>
				
				
				</tr>
				</thead>
				<tbody>
				<%
				FlightBo fb = new FlightBo();
				//Flight f1 = new Flight();
				String source = request.getParameter("source");
				String dest = request.getParameter("dest");
				String strdate = request.getParameter("date");
				int passeng = Integer.parseInt(request.getParameter("pass"));
				LocalDate bokdate = LocalDate.parse(strdate);
				LocalDate curdate = LocalDate.now();
				if(bokdate.isAfter(curdate) || bokdate.isEqual(curdate)){
				
				List<Flight> li = fb.getFlightByPara(source,dest,strdate,passeng); 
				
				Period p = Period.between(curdate, bokdate);
				int days = p.getDays();
				double percentage = 0.0;
				if(days<=3)
				{
					percentage = 1.5;
				}
				else if(days>=4 && days<=7){
					percentage = 1.4;
				}
				else if( days >=8 && days<=15){
					percentage=1.3;
				}
				else if (days>= 16 && days<=21){
					percentage = 1.2;
				}
				else if (days>=22){
					percentage = 1.1;
				}
				
				
				for(Flight f:li){
				%>
					<tr>
					<td><%=f.getFlightId() %></td>
					<td><%=f.getFlightName() %></td>
					<td><%=f.getSourceName()%></td>
					<td><%=f.getDestinationName() %></td>
					<td><%=f.getArrivalTime() %></td>
					<td><%=f.getDepartureTime() %></td>
					<td><%=f.getFare()*percentage %></td>
					<td><%=f.getNoofSeatAvailble() %></td>
					<td><%=f.getAvailbleDays() %>
				<%-- <td><a href="allowbooking?fid=<%=f.getFlightId()%>&date=<%=request.getParameter("date")%>&passenger=<%=request.getParameter("pass")%>&fare=<%=(f.getFare()*percentage)%>">booking</a></td> --%>
					
					<%
					if (request.getSession().getAttribute("mobile")==null)
					{%>
						<td><a href="login">pls login</a></td>
						<%} 
					else{
						%>
						<td><a href="paymentdetails?fid=<%=f.getFlightId()%>&date=<%=request.getParameter("date")%>&passenger=<%=request.getParameter("pass")%>&fare=<%=(f.getFare()*percentage)%>">make payment</a></td>
					</tr>
					<% }
						
						%>	
				<% }}
				
				%>
				</tbody>
				</table>

</body>
</html>