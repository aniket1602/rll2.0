<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color:transparent;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
label{
color : lightblue;
font-size:24px;
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


 <div class="booking-form-box" >
       
          <center><label>Book Flight</label></center><br>
            <form div class="booking-form" action="./searchflight">
            <label>Flight From</label>
            <Select name="source" required="required">
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
               
              <label>Flight To </label>
               <select name="dest" required="required"> 
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
                
                <div class="input-grip">
                <label>Date of the journey</label>
                    <input type="date" name="date" required="required" class="form-control select-date"  placeholder="dd/mm/yyyy">
               
                
                
                 <div class="input-grip">
                <label>Passengers</label>
                    <input type="number" name="pass" required="required" class="form-control" value="1">
                </div>
              
                
                <div class="input-grip">
                <label>travel class</label>
                    <select class="custom-select">
                        <option value="1">Economy class</option>
                        <option value="2">Business class </option>
                      
                    </select>
                 </div>
                
                <div class="input-grip">
               <input  type="submit"  class="btn btn-primary flight" value="Show Flight">
                </div>
               
              
            </div>
</div>
</form>
</div>
</form>
	
		
<button class="open-button" onclick="openForm()">Login</button>

<div class="form-popup" id="myForm">
  <form action="./checkUser" class="form-container" method="post">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text"  placeholder="Enter Email" name="uvalue" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="upass" required>

    <button type="submit" class="btn">Login</button>
   
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
    <a href="forgot">Forget Password?</a>
  </form>
</div>

<script>

function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
 
</body>
</html>