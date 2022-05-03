<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FlyAway-An Airline Booking Portal</title>
  <link rel="stylesheet" href="css/tooplate-style.css"> 
  
</head>

<body> 
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
		
		
		

<%
   String sAction = (String) request.getAttribute("msg");
   if ( sAction != null && (sAction).equals("y")) { %>
   <script> alert("Flight Added Successfully!!");</script>
<% }
   else if( sAction != null && (sAction).equals("N")) {%>
	 <script> alert("Operation Failed..Please try again!!");</script>
<%} 
   else if( sAction != null && (sAction).equals("D")) {%>
	 <script> alert("Flight Deleted Successfully!!");</script>

<%} 
   else if( sAction != null && (sAction).equals("U")) {%>
	 <script> alert("Flight Updated Successfully!!");</script>

<%} %>		
		




		
		
	<section class="banner" id="top">
    
    <div class="col-md-am">
    <h6><font color="blue" style="font:bolder;text-shadow:navy;" size="40px">
                       <%
                  		String userName = request.getParameter("uname");
                       session.setAttribute("name", userName);
                  		
                  		 %>   </font></h6>
    </div>
   
        <div class="container">
            <div class="row">
               <div class="left-side">
                <div class="col-md-5">
                   
                        <div class="tabs-content">
                           
                            <ul class="social-links">
                            	
                            	<li><a href="GetallRoutesServlet?selection=add"><em>Add Flight Details</em></a></li>
                                 <li><a href="GetallFlightsServlet"><em>Edit Flight Details</a></li>
                                 <li><a href="GetallFlightsServlet"><em>Delete Flight</a></li>
                                  <li><a href="GetallFlightsServlet"><em>Show Available Flights</a></li>
                                  
                                  
       
                                
                            </ul>
                        </div>
                        
                         <div class="page-direction-button">
                            <a href="#"><i class=""></i> Explore The World!!</a>
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