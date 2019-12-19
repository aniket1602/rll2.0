<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int quantity =Integer.parseInt(request.getParameter("pass")); %>
<form action="./insertPassenger" method="POST">
First Name <input type="text" name="fname"><br><br>
Last Name <input type="text" name="lname"><br><br>
Age <input type="text" name="age"><br><br>
<input type="submit" value="submit">

</form>

</body>
</html>