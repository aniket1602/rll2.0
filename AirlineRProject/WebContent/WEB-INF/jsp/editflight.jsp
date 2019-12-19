<%@page import="com.mphasis.AirlineRProject.Bo.* , java.util.*"%>
<%@page import="com.mphasis.AirlineRProject.Model.* ,com.mphasis.AirlineRProject.Controller.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="./updateFlight" method="post">
Enter Flight Id :<input type="hidden" name="fid" value="${f.flightId}"><br><br>
Enter Flight Name :<input type="text" name="fname" value="${f.flightName}"><br><br>
Enter Source :<input type="text" name="from" value="${f.sourceName}"><br><br>
Enter Destination :<input type="text" name="to" value="${f.destinationName}"><br><br>
Enter Arrival Time :<input type="time" name="atime" value="${f.arrivalTime}"><br><br>
Enter Departure Time :<input type="time" name="dtime" value="${f.departureTime}"><br><br>
Enter Fare :<input type="text" name="fare" value="${f.fare}"><br><br>
Enter No of Seat :<input type="text" name="noseat" value="${f.noofSeatAvailble}"><br><br>
Enter Available day :<input type="text" name="days" value="${f.availbleDays}"><br><br>

<input type="submit" value="Update Flight">

</form>

</body>
</html>