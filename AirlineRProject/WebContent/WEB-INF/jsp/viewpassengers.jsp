
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.util.* , com.mphasis.AirlineRProject.Model.*, com.mphasis.AirlineRProject.Bo.*" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<h1>Welcome flight details</h1>
<table border="1">
<tr>
<th>Passenger Id </th>
<th>Ticket No </th>
<th>First Name </th>
<th>Last Name </th>
<th>Age </th>


</tr>
<%
PassengerBo pb = new PassengerBo();
List<Passenger> pi = pb.getAllPassenger();
for(Passenger p:pi){
%>
	<tr>
	<td><%=p.getPassengerNo()%></td>
	<td><%=p.getTicketNo() %></td>
	<td><%=p.getFirstName()%></td>
	<td><%=p.getLastName() %></td>
	<td><%=p.getAge() %></td>
	
	
	
	</tr>
<% }
%>
</table>


</body>
</html>