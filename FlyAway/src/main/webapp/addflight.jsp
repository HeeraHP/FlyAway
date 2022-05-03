<%@page import="com.flyaway.dto.Route"%>
<%@page import="com.flyaway.dto.Flight"%>
<%@page import="java.util.Set"%>
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
            
            	<li> <h1 style="color:silver;font-size:30px;"> FlyAway</hi></li>
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
                                <li><a href="GetallFlightsServlet"><em>Edit Flight Details</a></li>
                                 <li><a href="GetallFlightsServlet"><em>Delete Flight Details</a></li>
                                  <li><a href="GetallFlightsServlet"><em>Show Available Flights</a></li>
                               
                               </ul>
                        </div>
                        
                         
                        
                    
                </div>
                
                
                <div class="col-md-5 col-md-offset-1">
                    
                        
                            <div class="submit-form">
                                 <h4> ADD FLIGHT DETAILS</h4>
            <form action="AddFlightServlet" method="post">
              
              <div class="form-group">
                <label>Flight Number<span class="req">*</span> </label>
                <input type="text" class="form-control" name="flightno" required data-validation-required-message="Please enter flight number." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label>Flight Name<span class="req">*</span> </label>
                <input type="text" class="form-control" name="flightname" required data-validation-required-message="Please enter flight name." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label> From City<span class="req">*</span> </label>
                <select name="source" id="source">
					<%  Set<Route> allroute= ((Set<Route>) session.getAttribute("allrouteforaddflight"));			   
					for(Route route : allroute)
					{	%>
    					<option value='<%=route.getSource()%>'><%=route.getSource()%></option>
  					  
  					 <%} %>

				</select>
              </div>
              <div class="form-group">
                <label> To City<span class="req">*</span> </label>
                 <select name="destination" id="destination">
               <%  
					for(Route route : allroute)
					{	%>
    					<option value='<%=route.getDestination()%>'><%=route.getDestination()%></option>
  					  
  					 <%} %>
  					 </select>
              </div>
              <div class="form-group">
                <label> Date<span class="req">*</span> </label>
                <input type="date" class="form-control" name="date" required data-validation-required-message="Please enter date" autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              
               <div class="form-group">
                <label>Time<span class="req">*</span> </label>
                <input type="time" class="form-control" name="time" required data-validation-required-message="Please enter time." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label> Travel Duration<span class="req">*</span> </label>
                <input type="time" class="form-control" name="duration" required data-validation-required-message="Please enter duration."  autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
             <div class="form-group">
                <label> Airlines<span class="req">*</span> </label>
                <input type="text" class="form-control" name="airlines"  required data-validation-required-message="Please enter airlines" autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label> Price<span class="req">*</span> </label>
                <input type="text" class="form-control" name="price"  required data-validation-required-message="Please enter price." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label> Seat Number<span class="req">*</span> </label>
                <input type="text" class="form-control" name="seat" required data-validation-required-message="Please enter seat number." autocomplete="off">
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
        
                    <font color="white" size=8px;></font>Copyright &copy; 2022 FlyAway Company
                
                |
               
    </footer>
</html>