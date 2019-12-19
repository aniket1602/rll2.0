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
h2{
  color:green;
}
}
</style>
</head>

<body>
<table class="table table-striped">
  
<h2> User Details</h2>
  <thead>
    <tr>
      <th scope="col">UserName</th>
      <th scope="col">Mobile</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
	   <th scope="col">Address</th>
	    <th scope="col">Security question</th>
		 <th scope="col">Answer</th>
		  <th scope="col">Date Of Birth</th>
          <th scope="col">Gender</th>
          <th scope="col">Identification Name</th>
          <th scope="col">Id Number</th>
          <th scope="col">User Type</th>
    </tr>
  </thead>
  <tbody>
   <%
UserBo ub = new UserBo();
List<User> li = ub.getAllUser();
for(User p:li){
%>
	<tr>
	<td><%=p.getName() %></td>
	<td><%=p.getMobile() %></td>
	<td><%=p.getEmail()%></td>
	<td><%=p.getPassword() %></td>
	<td><%=p.getAddress() %></td>
	<td><%=p.getSecurityQuestion() %></td>
	<td><%=p.getAnswer() %></td>
	<td><%=p.getDob() %></td>
	<td><%=p.getGender() %>
	<td><%=p.getIdName() %>
	<td><%=p.getIdNumber() %>
	<td><%=p.getUserType() %>
	<td><a href="./deleteuser?umobile=<%=p.getMobile()%>?idnum=<%=p.getIdNumber()%>">delete</a></td>
	
	
	</tr>
<% }
%>
  </tbody>
</table>
</body>
</html>