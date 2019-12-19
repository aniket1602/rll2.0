<%@page import="com.mphasis.AirlineRProject.Bo.* , java.util.*"%>
<%@page import="com.mphasis.AirlineRProject.Model.* ,com.mphasis.AirlineRProject.Controller.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>add flight</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/style1.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <style>
  
  h2{
  text-align:center;
  }
    body{
        background-image: 2jpg;;

    }
    .form-group
    {
        width:60%;
        

    }
    .form-group1
    {
    width:60%;
    }
   label{
       color:blue;

   }
   .container{
   max-width:400px;
	border:1px solid #cde4da;
    margin:10px auto 0;
    height:850px;
    background-color: #F2F2F2;
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
        <a class="nav-link" href="register">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus"><b>About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contactus"><b>Contact Us</a>
      </li>
	  
	  
    </ul>
    <form class="form-inline my-2 my-lg-0" action="logout">
      <div align="right">
        
         <button class="btn btn-primary" type="submit">Logout</button>
      </div>
      
    </form>
  </div>
</nav>


<div class="container">
  <h2>Add Flight Page</h2>
  <form action="./insertflight" method="POST">
  
  <div class="form-group">
   <label for="Arrival">Flight Id:</label>
      <input type="text" class="form-control"  placeholder="arrival time" name="flightid" required="required">
    </div>
     <div class="form-group">
      <label for="Arrival">Flight Name:</label>
      <input type="text" class="form-control"  placeholder="arrival time" name="flightname" required="required">
    </div>
    
    
    <div class="form-group1">     
      <label>Flight To </label>
      <select name="destname" required="required"> 
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
    </div>
    
   		 <div class="form-group1">
      <label>Flight From</label>
      <Select name="sourcename" required="required">
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
    </div>
     <div class="form-group">
      <label for="Arrival">Arrival Time:</label>
      <input type="time" class="form-control"  placeholder="arrival time" name="arrivaltime" required="required">
    </div>
    <div class="form-group">
            <label for="Departur">Departur time</label>
            <input type="time" class="form-control"  name="departuretime" required="required">
      </div>
      <div class="form-group">
            <label for="Fare">Fare</label>
            <input type="number" class="form-control"  name="fare" required="required">
          </div>

          <div class="form-group">
                <label for="noseat">no of seat Available Departure</label>
                <input type="text" class="form-control"  name="noseat" required="required">
          </div>
          <div class="form-group">
     
                <label>Available Day</label>
                <select name="availday" required="required"> 
                  <option value="mon">Monday</option>
                  <option value="tue">Tuesday</option>
                  <option value="wed">Wednesday</option>
                  <option value="thu">Thursday</option>
                  <option value="fri">Friday</option>
                  <option value="sat">Saturday</option>
                  <option value="Sun">Sunday</option>
                  </Select><br><br>
              </div>

  
   <center><input  type="submit" class="btn btn-primary" value="submit"></center> 
  </form>
</div>

</body>

</html>
