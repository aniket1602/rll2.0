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
<form action="./checkUser" method="post">
Mobile And Email : <input type="text" name="uvalue"><br><br>
Password : <input type="password" name="upass"><br><br>
<input type="submit" value="submit">
<a href="forgot">Forget Password</a>
</form>

</body>
</html>