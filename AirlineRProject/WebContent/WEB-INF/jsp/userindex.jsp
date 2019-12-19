<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>user index</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>

.red{
    color:darkcyan;
    }
.form-area
{
    background-color:lightgray;
	padding: 10px 40px 90px;
	margin: 10px 0px 90px;
	border: 1px solid black;
	height:250px;
    position:center;
	}
    .form-group,a
    {
        color:darkgreen;
    }

</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-blue bg-light" content="width-device-width" width="100%" height="150px">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register"><b>Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus"><b>About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contactus"><b>Contact Us</a>
      </li>
    </ul>
    
    
    <form class="form-inline my-2 my-lg-0" action="logout">
      <div class="mr-auto" >
        
         <button class="btn btn-primary" type="submit" >LogOut</button>
      </div>
      
    </form>
  </div>
</nav>
<div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form role="form">
       
                    <h3 style="margin-bottom:10px; text-align: center;">Welcome User</h3>
 					
					<div class="form-group">
                        <a href= "home">Search flight</a>
					</div>

        </form>
    </div>
	
</div>
</div>
</body>
</html>