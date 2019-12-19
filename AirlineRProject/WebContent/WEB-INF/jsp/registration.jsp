<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* , com.mphasis.AirlineRProject.Model.*, com.mphasis.AirlineRProject.Bo.*" %>

<!DOCTYPE html>


<html>
<head>
<title>Registration></title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="css/style1.css">


<script src="aaa.js"></script>
<script>
    
function fun1(form)
{
	var a=document.getElementById("uname").value;
	var b=document.getElementById("upass").value;
	var c=document.getElementById("cupass").value;
	var d=document.getElementById("umob").value;
	var e = document.getElementById("udob").value;
         var f = document.getElementById("uadd").value;
         var g = document.getElementById("uid").value;
          var h = document.getElementById("uans").value;
	var mailformat = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;


	if(a=='')
	{
		alert("Please Enter a vaild Name");
		return false; 
	}
	else if(!isNaN(a))
	{
		alert("Please enter alphabets only in the Name");
		return false;
	}
if(b.length<8)
	{
		alert("Please enter the password max of 8 characters");
		return false;
	}
if(c=='')
	{
		alert("Please fill the appropriate password");
		return false; 
	}

if(d.length!=10)
	{
		alert("Please enter the correct mobile number");
		return false;
	}
	else if(isNaN(d))
	{
		alert("Please enter valid mobile number");
		return false;
	}

if(b!=c)
	{
		alert("password didnot match:Please try again");
		return false;
	}

if(e=='')
	{
		alert("Please enter Email");
		return false;
	}
	else if(mailformat.test(e)==false)
	{
		alert("Please enter a valid email id");
		return false;
	}
}
</script>
</head>
<body background="2.jpg">

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
      <div class="ml-auto" >
        
         <button class="btn btn-primary" type="submit" >LogOut</button>
      </div>
      
    </form>
  </div>
</nav>

<div class="container">
            
            <form class="form-horizontal" role="form" action="./insertUser" method="post" onsubmit="return fun1(this)" >
                <h2>Registration</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-9">
                        <input type="text" id="uname"name="uname" placeholder="UserName" class="form-control" autofocus required="required">
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email* </label>
                    <div class="col-sm-9">
                        <input type="email" id="uemail"name="uemail" placeholder="Email" class="form-control" name= "email" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password*</label>
                    <div class="col-sm-9">
                        <input type="password" id="upass" name="upass" placeholder="Password" class="form-control" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Confirm Password*</label>
                    <div class="col-sm-9">
                        <input type="password" id="cupass" name="cupass" placeholder="Password" class="form-control" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of birth</label>
                    <div class="col-sm-9">
                        <input type="text" name="udob" placeholder="DD/MM/YYYY" required="required" 
									pattern="(?:30))|(?:(?:0[13578]|1[02])-31))-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])" 
										title="Enter a date in this format DD-MM-YYYY"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Phone number </label>
                    <div class="col-sm-9">
                        <input type="phoneNumber" id="umob" name="umob" placeholder="Mobile Number" class="form-control" required="required">
                        <span class="help-block">Your phone number won't be disclosed anywhere </span>
                    </div>
                </div>
                <div class="form-group">
                        <label for="Address" class="col-sm-3 control-label"> Address</label>
                    <div class="col-sm-9">
                        <input type="text" name="uadd" placeholder="Please fill the address in the given feild" class="form-control" required="required">
                    </div>
                </div>
              
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Male">Male
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Other">Other
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <label class="control-label col-sm-3">Id Proof</label>
                    <div class="col-sm-9">
                    <select name="idname" required=" "> 
                        <option value="Aadhaar" >Aadhar Number</option>
                        <option value="Pan card">Pan Card</option>
                        <option value="Voter card">Voter Id</option>
                        <option value="Passport">Passport </option>
                        <option value="Driving Licence">Driving Licence</option>
                        <option value="Other">Other Government Id Proof Number </option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="Address" class="col-sm-3 control-label"> Id Number</label>
            <div class="col-sm-9">
                <input type="number" name="uidnum" placeholder="Please fill the address in the given feild" class="form-control" required="required">
            </div>
        </div>
                
            
            <div class="form-group">
                <label for="security" class="col-sm-3 control-label"> Security Question</label>
                <div class="col-sm-9">
                    <select name="uques" required="required"> 
                        <option value="favouritecolor" >Favourite Color</option>
                        <option value="favouriteactor">Favourite Actor</option>
                        <option value="latestcrush">Latest Crush</option>
                        <option value="childhoodschool">Childhood School</option>
                       

                    </select>
                </div>
            </div>
        
        <div class="form-group">
            <label for="answer" class="col-sm-3 control-label"> Answer</label>
        <div class="col-sm-9">
            <input type="text" name="uans" placeholder="Please fill the address in the given feild" class="form-control" required="required">
        </div>
    </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </form> <!-- /form -->
        </div> <!-- ./container -->
		
		
		</body>
		</html>
		