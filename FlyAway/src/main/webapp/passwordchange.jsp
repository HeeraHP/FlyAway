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


    
     <section class="banner" id="top">
        <div class="container">
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
                            	<li><a href="updateflight.jsp"><em>Add/Edit Flight Details</em></a></li>
                                
                                  <li><a href="GetallFlightsServlet"><em>Show Available Flights</a></li>
                                <li><a href="logout.jsp"><em>Logout</em></a></li>
                            </ul>
                        </div>
                        
                         
                        <div class="page-direction-button">
                            <a href="#"><i class=""></i> Explore The World!!</a>
                        </div>
                    </div>
                </div>
                
                 
                <div class="col-md-5 col-md-offset-1">
                    
                        
                            <div class="submit-form">
                                                          
                                          
                <h4> Change Password</h4>
            <form  action="changepasswordServlet1" method="post">
              <div class="form-group">
                <label> User Name<span class="req">*</span> </label>
                <input type="text" value="admin"readonly class="form-control" name="uname" required data-validation-required-message="Please enter your email address." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label>New Password<span class="req">*</span> </label>
                <input type="password" class="form-control" name="password" required data-validation-required-message="Please enter your password" autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="mrgn-30-top">
                <button type="submit" class="btn btn-larger btn-block"/>
                Update
                <button type="reset" class="btn btn-larger btn-block">Reset</button>
                          
               
     
  </div>
                                           
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    
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