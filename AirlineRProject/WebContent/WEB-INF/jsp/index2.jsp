<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script>
$(function(){

    $("#date").datepicker({
        dateFormat:"dd/mm/yy",
        minDate:0,
        maxDate:"+2M"
    });
});
    
</script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>bismillah</h1>
<form action="searchflight">

source :<Select name="source">
<option value=""></option>
<option value="Pune">Pune</option>
<option value="Bangalore">Bangalore</option>
<option value="Patna">Patna</option>
<option value="Bhubaneswar">Bhubaneswar</option>
<option value="Ranchi">Ranchi</option>
<option value="Delhi">Delhi</option>
<option value="Kolkata">Kolkata</option>
<option value="Luckhnow">Luckhnow</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Chennai">Chennai</option>
<option value="Mumbai">Mumbai</option>
<option value="Tirupati">Tirupati</option>
<option value="Gujarat">Gujarat</option>
<option value="Vizag">Vizag</option>
</Select><br><br>
destination :<select name="dest"> 
<option value=""></option>
<option value="Pune">Pune</option>
<option value="Bangalore">Bangalore</option>
<option value="Patna">Patna</option>
<option value="Bhubaneswar">Bhubaneswar</option>
<option value="Ranchi">Ranchi</option>
<option value="Delhi">Delhi</option>
<option value="Kolkata">Kolkata</option>
<option value="Luckhnow">Luckhnow</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Chennai">Chennai</option>
<option value="Mumbai">Mumbai</option>
<option value="Tirupati">Tirupati</option>
<option value="Gujarat">Gujarat</option>
<option value="Vizag">Vizag</option>
</Select><br><br>
date :<input type="date" name="date" id="date"><br><br>
passengers :<input type="text" name="pass"> <br><br>
<input type="submit" value="search">
</form>
</body>
</html>