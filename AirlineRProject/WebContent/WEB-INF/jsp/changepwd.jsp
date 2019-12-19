<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>
<link rel="stylesheet" href="style7.css">
<script>
var a=document.getElementById("upwd");
var b=document.getElementById("upwd1");

if(a=='' || b=='')
{
alert("fill the feild...");
}
</script>
</head>
<body>
<div class="container">
	<div class="row">
		 <h3> change Password</h3>
       
        </div><br /><br />
         
        <form action="./changepwd" method="post" class="main">
                	<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-key icon"></i></span>
								</div>
								<input type="password" id="upwd" name="upwd" class="form-control" placeholder="enter the Password" required>
							</div><br />
         
                	<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-key icon"></i></span>
								</div>
									<input type="Password" id="upwd1" name="upwd1" class="form-control" placeholder="Re-type Password" required>
							</div><br />
            
              <input type="submit" class="btn btn-success" value="submit">
         
 
	</div>
