<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title> editflight</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


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
<center>

<div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form role="form">
       
                    <h3 style="margin-bottom:10px; text-align: center;">Welcome Admin</h3>
    				<div class="form-group">
					
						<a href="addflight"> Add flight details</a>

					</div>
					<div class="form-group">
					<label> </label>
                    <a href= "viewflight">View flight</a>
					</div>
					<div class="form-group">
					
					<a href="viewticket"> View ticket</a>

					</div>
					<div class="form-group">
                        <a href= "viewuser">View User</a>
					</div>
					
                    
            
       
        </form>
    </div>
	
</div>
</div>
</center>
</body>
</html>