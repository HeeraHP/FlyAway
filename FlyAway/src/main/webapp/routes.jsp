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
    <header>
        <nav class="navbar">
            <ul>
            	<<li> <h1 style="color:silver;font-size:30px;"> FlyAway</hi></li>
                <li><a href="adminhome.jsp">Home</a></li>
                <li><a href="GetallRoutesServlet?selection=route">Routes</a></li>
                <li><a href="GetallFlightsServlet">Flights</a></li>
                 <li><a href="test">Airlines</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <div class="search">
                    <h4 font-color: black>Hi Admin</h4>
                </div>
		</ul>
		</nav>
		</header>

<body>

<%
   String sAction = (String) request.getAttribute("msg");
   if ( sAction != null && (sAction).equals("y")) { %>
   <script> alert("Route Added Successfully!!");</script>
<% }
   else if( sAction != null && (sAction).equals("N")) {%>
	 <script> alert("Operation Failed..Please try again!!");</script>
<%} 
   else if( sAction != null && (sAction).equals("D")) {%>
	 <script> alert("Route Deleted Successfully!!");</script>

<%} 
   else if( sAction != null && (sAction).equals("U")) {%>
	 <script> alert("Route Updated Successfully!!");</script>

<%} %>


    <section class="banner" id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    
                        <div class="logo">
                            <img src="img/logo.png" alt="Flight Template">
                        </div>
                        <div class="tabs-content">
                           
                            <ul class="social-links">
                               <br/><br/>
                                <li><a href="GetallRoutesServlet?selection=route"><em>Edit Route </a></li>
                                 <li><a href="GetallRoutesServlet?selection=route"><em>Delete Route</a></li>
                                  <li><a href="GetallRoutesServlet?selection=route"><em>Show Available Routes</a></li>
                               
                               </ul>
                        </div>
                        
                         
                        
                    
                </div>
                
                
                <div class="col-md-5 col-md-offset-1">
                    
                        
                            <div class="submit-form">
                                 <h4> ADD Route </h4>
            <form action="AddRouteServlet" method="post">
              
              <div class="form-group">
                <label>Source<span class="req">*</span> </label>
                <input type="text" class="form-control" name="source" required data-validation-required-message="Please enter source." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label>Destination<span class="req">*</span> </label>
                <input type="text" class="form-control" name="destination" required data-validation-required-message="Please enter destination." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
                  <button type="submit" class="btn btn-larger btn-block">Submit</button>
                
                <button type="reset" class="btn btn-larger btn-block">Reset</button>
            
            </form>
             
           
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