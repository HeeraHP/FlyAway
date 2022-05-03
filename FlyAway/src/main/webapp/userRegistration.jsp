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
<%HttpSession session1 = request.getSession();
String flightno =(String)(request.getParameter("flightno")) ;
String airlines =(String)(request.getParameter("airlines")) ;
String price =(String)(request.getParameter("price")) ;
String source =(String)(request.getParameter("source")) ;
String destination =(String)(request.getParameter("destination")) ;

%>
    
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
                               <br/><br/>
                               
                                  <li><a href="flightSearch.jsp"><em>Search Flights</a></li>
                                  <li><a href="welcomepage.html"><em>Back To Home Page</em></a></li>
                               
                               </ul>
                        </div>
                        
                         
                        <div class="page-direction-button">
                            <a href="#"><i class=""></i> Explore The World!!</a>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-md-5 col-md-offset-1">
                    
                        
                            <div class="submit-form">
                                 
                                 
                                 
                    <p align="center" style="color:black;"><span><strong><h4>Enter Passenger Details</h4></strong></span></p>
                    
            <form action="BookFlightServlet" method="post">
     		
     		
     		<div class="form-group">
                <label>Selected Flight Number<span class="req">*</span> </label>
                <input type="text" value="<%=session1.getAttribute("Currentflightno")%>"  readonly class="form-control" name="flightno" >
                <p class="help-block text-danger"></p>
              </div>
              
              <div class="row">
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label> Source<span class="req"></span> </label>
                    <input type="text" value="<%=session.getAttribute("Currentsource")%>" readonly class="form-control" name="source" >
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label>Destination<span class="req"></span> </label>
                    <input type="text" value="<%=session.getAttribute("Currentdestination")%>" readonly class="form-control" name="destination">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
              </div>
       
               <div class="row">
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label> Airlines<span class="req"></span> </label>
                    <input type="text" value="<%=session1.getAttribute("Currentairlines")%>" readonly class="form-control" name="airlines" >
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label>Price<span class="req"></span> </label>
                    <input type="text" value="<%=session1.getAttribute("Currentprice")%>" readonly class="form-control" name="price">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
              </div>
           
              
              <div class="row">
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label> First Name<span class="req">*</span> </label>
                    <input type="text" class="form-control" name="fname" placeholder="First name"required data-validation-required-message="Please enter your name." autocomplete="off">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label> Last Name<span class="req">*</span> </label>
                    <input type="text" class="form-control" name="lname" placeholder="Last name"required data-validation-required-message="Please enter your name." autocomplete="off">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
              </div>
           
              <div class="form-group">
                <label> Your Email<span class="req">*</span> </label>
                <input type="email" class="form-control" name="email" placeholder="Your Email"required data-validation-required-message="Please enter your email address." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
               <div class="form-group">
                <label> Age<span class="req">*</span> </label>
                <input type="number" class="form-control" name="age" placeholder="Your age"required data-validation-required-message="Please enter your age." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
               <div class="form-group">
                <label> Your Address<span class="req">*</span> </label>
                <input type="text" class="form-control" name="address"  placeholder="Address"required data-validation-required-message="Please enter your address." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label> Your Phone<span class="req">*</span> </label>
                <input type="tel" class="form-control"  placeholder="Phone number" name="ph" required data-validation-required-message="Please enter your phone number." autocomplete="off">
                <p class="help-block text-danger"></p>
              </div>
             
              <div class="form-group">
                    <label for="source">Personal Id</label>
                    <select  class="form-control" id="source" name="verificationid">
                      <option value="">Select option</option>
                        <option value="Aadhar card">Aadhar card</option>
                        <option value="SSN">SSN</option>
                        <option value="Passport">Passport</option>
                        <option value="Voter ID">Voter ID</option>
                        <option value="Driving license">Driving license</option>
                    </select>
                    <div class="form-group">
                   <label> Enter No<span class="req">*</span> </label> 
                        <input type="text" class="form-control" id="verificationidno" name="enterno" placeholder="Enter No">
                         <p class="help-block text-danger"></p>
                  </div>
              </div>
               <div class="form-group">
                   <label> Return date:<span class="req"></span> </label> 
                        <input type="date" class="form-control"  name="returndate" placeholder="Enter date">
                         <p class="help-block text-danger"></p>
                  </div>
              
               <div class="form-group">
                   <label> Adults:<span class="req">*</span> </label> 
                        <input type="number" class="form-control" name="adults" placeholder="Enter number"required data-validation-required-message="Please enter number of adults">
                         <p class="help-block text-danger"></p>
                  </div>
                
       			 <div class="form-group">
                   <label> Children:<span class="req">*</span> </label> 
                        <input type="number" class="form-control"  name="child" placeholder="Enter number"required data-validation-required-message="Please enter number of Children">
                         <p class="help-block text-danger"></p>
                  </div>
                  
                   <div class="form-group">
                    <label for="source">Class:</label>
                    <select  class="form-control" name="typeclass">
                         <option value="">Select class.</option>
                           <option value="Economy">Economy</option>
                            <option value="Business">Business</option>
                           <option value="First Class">First Class</option>
                    </select>
                    </div>
                    
                     <div class="form-group">
                     <div class="row">
                    	 <div class="col-md-6 col-sm-6 col-xs-6">
                          <label for="round">Round</label>
                          <input type="radio" name="trip" id="round" value="round" required="required">
                           </div>
                           <div class="col-md-6 col-sm-6 col-xs-6">
                           <label for="oneway">Oneway</label>
                          	<input type="radio" name="trip" id="oneway" value="one-way" required="required">
                        	</div>
                      </div>
                      </div>
                                        
                                      
                                       
                                                
              
              
              <div class="mrgn-30-top">
                <button type="submit" class="btn btn-larger btn-block"/>
                Book Flight
                <button type="reset" class="btn btn-larger btn-block">Reset</button>
               
              </div>
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