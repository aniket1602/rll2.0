<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.* , com.mphasis.AirlineRProject.Model.*, com.mphasis.AirlineRProject.Bo.*" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Payment</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
     <script type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
	</script>
</head>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
    
    <table border="1" class="table table-striped">
        <thead>
<tr>
<th scope="col">Flight Id</th>
<th scope="col">Traveling Date</th>
<th scope="col">Passenger</th>
<th scope="col">Total Fare</th>
</tr>
            </thead>
        <tbody>

<%
FlightBo fb = new FlightBo();
String fid = request.getParameter("fid");
/* String mobile = (String) request.getSession().getAttribute("mobile"); */
String travlingDate = request.getParameter("date");
LocalDate travalDtae = LocalDate.parse(travlingDate);

int passenger = Integer.parseInt(request.getParameter("passenger"));
double fare = Double.parseDouble(request.getParameter("fare"));
double totalfare = fare * passenger;

%>
<tr>
<td><%=fid %></td>
<td><%=travlingDate %></td>
<td><%=passenger %></td>
<td><%=totalfare %></td>
</tr>
</tbody>
</table>
    
    
<br>

<div class="container">
  <h2>Payment</h2>
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">Credit Card</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">Debit card</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">Net Banking</a>
    </li>
	<li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu3">UPI Pay</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active">
<div class='form-row'>
     <div class='col-md-6 form-group' required>
                          <label class='control-label'>Name on Card</label>
                          <input class='form-control'  width="40%" size='30' type='text'>
                        </div>
                      </div>
                      <div class='form-row'>
                        <div class='col-md-6 form-group' required>
                          <label class='control-label'>Card Number</label>
                          <input autocomplete='off' class='form-control card-number' size='30' type='text'>
                        </div>
                      </div>
                      <div class='form-row'>
                        <div class='col-xs-4 form-group cvc required'>
                          <label class='control-label'>CVC</label>
                          <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'>
                        </div>
                        <div class='col-xs-4 form-group expiration required'>
                          <label class='control-label'>Expiration</label>
                          <input class='form-control card-expiry-month' placeholder='MM' size='2' type='text'>
                        </div>
                        <div class='col-xs-4 form-group expiration required'>
                          <label class='control-label'> </label>
                          <input class='form-control card-expiry-year' placeholder='YYYY' size='4' type='text'>
                        </div>
                      </div>
                     
                      <div class='form-row'>
                        <div class='col-md-2 form-group'>
                           <input type="hidden" name="mobile" value="<%=request.getSession().getAttribute("mobile")%>"><br><br>
                            <a href="allowbooking?fid=<%=fid%>&date=<%=travlingDate%>&passenger=<%=passenger%>&fare=<%=totalfare%>&mobileNO=<%=request.getSession().getAttribute("mobile")%>"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal4">Pay</button></a>
                         <div class="modal fade" id="myModal1" role="dialog">
                      <div class="modal-dialog">
      
        <!-- Modal content-->
                  <div class="modal-content">
                <div class="modal-header">
				<form action="viewticket.html">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             
               </div>
              <div class="modal-body">
               <p>Trascation Successful</p>
              </div>
              <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</form>
          </div>
        </div>
        
      </div>
    </div>
      </div>
      </div>
	
	</div>
	
    <div id="menu1" class="container tab-pane fade"><br>
      <div class='form-row'>
     <div class='col-md-6 form-group' required>
                          <label class='control-label'>Name on Card</label>
                          <input class='form-control'  width="40%" size='30' type='text'>
                        </div>
                      </div>
                      <div class='form-row'>
                        <div class='col-md-6 form-group' required>
                          <label class='control-label'>Card Number</label>
                          <input autocomplete='off' class='form-control card-number' size='30' type='text'>
                        </div>
                      </div>
                      <div class='form-row'>
                        <div class='col-xs-4 form-group cvc required'>
                          <label class='control-label'>CVC</label>
                          <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'>
                        </div>
                        <div class='col-xs-4 form-group expiration required'>
                          <label class='control-label'>Expiration</label>
                          <input class='form-control card-expiry-month' placeholder='MM' size='2' type='text'>
                        </div>
                        <div class='col-xs-4 form-group expiration required'>
                          <label class='control-label'> </label>
                          <input class='form-control card-expiry-year' placeholder='YYYY' size='4' type='text'>
                        </div>
                      </div>
                     
                     			  <div class='form-row'>
                        <div class='col-md-2 form-group'>
                            <input type="hidden" name="mobile" value="<%=request.getSession().getAttribute("mobile")%>"><br><br>
                            <a href="allowbooking?fid=<%=fid%>&date=<%=travlingDate%>&passenger=<%=passenger%>&fare=<%=totalfare%>&mobileNO=<%=request.getSession().getAttribute("mobile")%>"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal4">Pay</button></a>
                         <div class="modal fade" id="myModal2" role="dialog">
                      <div class="modal-dialog">
      
        <!-- Modal content-->
                  <div class="modal-content">
                <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             
               </div>
              <div class="modal-body">
               <p>Transaction Succefull</p>
              </div>
              <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      </div>
    </div>
      </div>
      </div>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
      <div class='form-row'>
     <div class='col-md-6 form-group' required>
                          <label class='control-label'>Bank Name</label>
                          <input class='form-control'  width="40%" size='30' type='text'>
                        </div>
                      </div>
                      <div class='form-row'>
                        <div class='col-md-6 form-group' required>
                          <label class='control-label'>UserID</label>
                          <input autocomplete='off' class='form-control card-number' size='30' type='text'>
                        </div>
                      </div>
                      <div class='form-row'>
                        <div class='col-md-6 form-group' required>
                          <label class='control-label'>Password</label>
                          <input autocomplete='off' class='form-control card-number' size='30' type='text'>
                        </div>
                      </div>
                      
                      			  <div class='form-row'>
                        <div class='col-md-2 form-group'>
                           <input type="hidden" name="mobile" value="<%=request.getSession().getAttribute("mobile")%>"><br><br>
                            <a href="allowbooking?fid=<%=fid%>&date=<%=travlingDate%>&passenger=<%=passenger%>&fare=<%=totalfare%>&mobileNO=<%=request.getSession().getAttribute("mobile")%>"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal4">Pay</button></a>
                         <div class="modal fade" id="myModal3" role="dialog">
                      <div class="modal-dialog">
      
        <!-- Modal content-->
                  <div class="modal-content">
                <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             
               </div>
              <div class="modal-body">
               <p>Transaction Succefull</p>
              </div>
              <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      </div>
    </div>
      </div>
      </div>
    </div>
	<div id="menu3" class="container tab-pane fade"><br>
      <div class='form-row'>
     <div class='col-md-6 form-group' required>
                          <label class='control-label'>UPI address</label>
                          <input class='form-control'  width="40%" size='30' type='text'>
						  
                        </div>
                      </div>
	
					  <div class='form-row'>
                        <div class='col-md-2 form-group'>
                        <input type="hidden" name="mobile" value="<%=request.getSession().getAttribute("mobile")%>"><br><br>
                            <a href="allowbooking?fid=<%=fid%>&date=<%=travlingDate%>&passenger=<%=passenger%>&fare=<%=totalfare%>&mobileNO=<%=request.getSession().getAttribute("mobile")%>"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal4">Pay</button></a>
                        
							 <div class="modal fade" id="myModal4" role="dialog">
                      <div class="modal-dialog">
      
        <!-- Modal content-->
                  <div class="modal-content">
                <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             
               </div>
              <div class="modal-body">
               <p>Upi payment Successful</p>
              </div>
              <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      </div>
    </div>
      </div>
      </div>
  </div>
</div>
</div>   
    

</body>
</html>
