<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/forgot.css">
</head>

<body class="sbook">
<jsp:include page="header.jsp"></jsp:include>
<form action="./checkpwdotp" method = "post" class="main">
  Enter Otp <input type = "text" name = "upwdotp" class="upwdotp" required="required"><br><br><br>
<input type = "submit" value = "submit" class="submit">
</form>
</body>
</html>