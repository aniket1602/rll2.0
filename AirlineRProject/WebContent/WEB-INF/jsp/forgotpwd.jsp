<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* , com.mphasis.AirlineRProject.Model.*, com.mphasis.AirlineRProject.Bo.*" %>

<!DOCTYPE html>


<html>
<head>




<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/style4.css">
<script>
    var a=document.getElementsByName("uname");
    if(a=='')
    {
        alert("please fill the feild");
    }
    else if(!isNaN(a))
    {
        alert("please enter the feild exactly");
        return false;
    }
    
    </script>
</head>
<body>
<div class="container forget-password">
            <div class="row">
                <div class="col-md-12 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <img src="https://usa.afsglobal.org/SSO/SelfPasswordRecovery/images/send_reset_password.svg?v=3" alt="car-key" border="0">
                                <h2 class="text-center">Forgot Password?</h2>
                                <p>You can reset your password here.</p>
								
                                <form id="register-form" role="form" autocomplete="off" action="./forgotpwd" class="form" method="post">
                                    <div class="form-group">
                                               
                                     <div class='form-row'>
                                            <div class='col-md-12 form-group' required>
                                              <label class='control-label'>Email</label>
                                              <input autocomplete="off" class="form-control card-number" name="umail" size="50" type="text" required="required" >
                                            </div>
                                          </div>     
                                        </div>
                                    </div>
                                <div class="form-group">
                                        <input name="btnForget" class="btn btn-lg btn-primary" value="Reset Password" type="submit" required="required">
                                    </div>
                                </div>

                                </form>
								
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>