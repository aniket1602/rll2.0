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
<link rel="stylesheet" href="style5.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"/>

</head>
<body background="1.jpg">
<div class="container">
	<div class="row">
		 <h3> Check Otp</h3>
       
        </div><br /><br />
         
            <form action="./insert" method = "post">
                	<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user-tie"></i></span>
								</div>
								<input type="text" name="uotp" class="form-control" placeholder="Check Otp"/ required="required">
							</div><br/>
           
              <input type="submit" class="btn btn-success" value="submit">
    </form>
                
 </div>
    
 </body></html>
