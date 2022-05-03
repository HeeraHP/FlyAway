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




<%  String sAction = (String) request.getAttribute("msg");
   if ( sAction != null && (sAction).equals("y")) { %>
   <script> alert("!");</script>
<% }
   else if( sAction != null && (sAction).equals("N")) {%>
	 <script> alert("No Matching Flight Details Found!!");</script>
<%} 
   else if( sAction != null && (sAction).equals("bookunable")) {%>
	 <script> alert("Unable to book the flight..Please try again!");</script>

<%} %>
    
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
                                <li><a href="login.html"><em>Admin Login</em></a></li>
                                 <li><a href="welcomepage.html"><em>Back To Home Page</em></a></li>
                               
                                 
                                 
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
                                <h4><em>Choose Your Direction</em>:</h4>
                                <form id="form-submit" action="MainFlightSearchServlet" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset>
                                            	 <label> Source City:<span class="req">*</span> </label>                        
                                                <input name="source" type="text" class="form-control date"  placeholder="Select Source" required data-validation-required-message="Please enter Source." autocomplete="off"/>
                                          
                                            </fieldset>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <fieldset>
                                            	<label> Destination City:<span class="req">*</span> </label>       
                                                <input name="destination" type="text" class="form-control date"  placeholder="Select destination" required data-validation-required-message="Please enter destination." autocomplete="off"/>
                                          
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                            <label> Departure date:<span class="req">*</span> </label>   
                                                
                                                <input name="deparure" type="date" class="form-control date" placeholder="Select date"required data-validation-required-message="Please enter date." autocomplete="off" />
                                            </fieldset>
                                        </div>
                                      <br/>
                                        
                                        <div class="col-md-6">
                                            <fieldset>
                                                <button type="submit" id="form-submit" class="btn">Order Ticket Now</button>
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



   


   
</body>
<footer>
        
                    <font color="white" size=10px;></font>Copyright &copy; 2022 FlyAway Company
                
                |
               
    </footer>
</html>