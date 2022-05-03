<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    	<title>FlyAway-An Airline Booking Portal</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/tooplate-style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>


<body>
<% 
String sAction = (String) request.getAttribute("msg");
   if ( sAction != null && (sAction).equals("y")) { %>
   <script> alert("Flight Booked Successfully!!Please make the payment.");</script>
<% }%>
   

    
    <section class="banner" id="top">
        <div class="container">
        <h6><font color="black" style="font:bolder;text-shadow:navy;" size="40px">
                          Welcome to FlyAway Airlines!</font></h6>
            <div class="row">
                <div class="col-md-5">
                    <div class="left-side">
                        <div class="logo">
                            <img src="img/logo.png" alt="Flight Template">
                        </div>
                        <div class="tabs-content">
                            <h4><font color="silver">
                            Life Is Short And The World Is Wide</font></h4>
                            <ul class="social-links">
                                
                               
                                 <li><a href="flightSearch.jsp"><em>Flight Search</em></a></li>
                                 
                               </ul>
                        </div>
                        
                         
                        <div class="page-direction-button">
                            <a href="#"><i class=""></i> Explore The World!!</a>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-md-5 col-md-offset-1">
               
                    <section id="first-tab-group" class="tabgroup">
                        <div id="tab1">
                            <div class="submit-form">
                                <h4><em>Hi <%= session.getAttribute("fname") %> Please Make Payment</em>:</h4>
                                <form id="form-submit" action="SearchBookingServlet" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset>
                                                 <label for="return">Name On Card:</label>
                                                <input name="cardholdername" type="text" class="form-control date" required data-validation-required-message="Please enter card holder's name" placeholder="Card holder's name" />
                                          
                                            </fieldset>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <fieldset>
                                                 <label for="return">Card Number:</label>
                                                <input name="cardnumber" type="text" class="form-control date"  required data-validation-required-message="Please enter card number" placeholder="Card number" />
                                          
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                <label for="departure">CVV</label>
                                                <input name="cvv" type="text" class="form-control date" required data-validation-required-message="Please enter cvv" placeholder="cvv" />
                                            </fieldset>
                                        </div>
                                      <br/>
                                        <%request.setAttribute("msg", "Y"); %>
                                         <div class="col-md-6">
                                            <fieldset>
                                                <label >Your Email</label>
                                                <input name="email" type="text" class="form-control date" value="<%= session.getAttribute("email") %> "readonly />
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                <label >Flight Number</label>
                                                <input name="flightno" type="text" class="form-control date" value="<%= request.getAttribute("flightno") %> "readonly />
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                <label >Total Amount</label>
                                                <input name="price" type="text" class="form-control date" value="<%= request.getAttribute("totalamount") %> "readonly />
                                            </fieldset>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <fieldset>
                                                <button type="submit" id="form-submit" class="btn">Make Payment</button>
                                            </fieldset>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div> 
            </div>
        </div>
    </section>


 <script src="js/datepicker.js"></script>
   


   
</body>
</html>