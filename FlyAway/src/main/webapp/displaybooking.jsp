<%@page import="com.flyaway.dto.Booking"%>
<%@page import="com.flyaway.dto.Flight"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>

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
            	<li><a href="welcomepage.html">Home</a></li>
                <li><a href="flightSearch.jsp">Flight Search</a></li>
             
                <li><a href="logout.jsp">Logout</a></li>
                <div class="search">
                  <h4 font-color: black> <%= session.getAttribute("fname")%></h4>
                </div>
		</ul>
		</nav>
		</header>

<body><%  String sAction = (String) request.getAttribute("msg");
   if ( sAction != null && (sAction).equals("y")) { %>
   <script> alert("Payment Success.");</script>
<% }
   else if( sAction != null && (sAction).equals("N")) {%>
	 <script> alert("No data found!");</script>

<%} %>

    
    
	<h3>Hi <%= session.getAttribute("fname")%>,Please find your booking details:</h3>
	<table class="table table-inverse  table-bordered table-hover mx-auto table-responsive">
		  <thead>
			<tr>
			 	
			  <th>Flight</th>
			  <th>From</th>
			  <th>To</th>
			  <th>Airlines</th>
			  <th>Class</th>
			  <th>Price</th>
			  <th>Adults</th>
			  <th>Children</th>
			  <th>Phone</th>
			  <th>Id No</th>
			  <th>Email</th>
			
			 
			   </tr>
		  </thead>
			 <tbody>  
			  
			   <%  
			   
			  ArrayList<Booking> booking= ((ArrayList<Booking>)request.getAttribute("booking"));
			   
					for(Booking bookflight : booking)
					{	
						
						out.println("<tr>");
					
						out.print("<td>" + bookflight.getFlightno() +  "</td>");
						out.print("<td>" + bookflight.getSource()+  "</td>");
						out.print("<td>" + bookflight.getDestination() +  "</td>");
						out.print("<td>" + bookflight.getAirlines() +  "</td>");
						out.print("<td>" + bookflight.getTypeclass() +  "</td>");
						out.print("<td>" + bookflight.getTotalAmount() +  "</td>");
						out.print("<td>" + bookflight.getAdults() +  "</td>");
						out.print("<td>" + bookflight.getChild() +  "</td>");
						out.print("<td>" + bookflight.getPh()+  "</td>");	
						out.print("<td>" + bookflight.getVerificationidno() +  "</td>");
						out.print("<td>" + bookflight.getEmail() +  "</td>");
						
						
						out.print("</tr>");
						
					}
			   
				%>
           
		 
		  </tbody>
		  
		  
		  </table>
		
   <br/><br/>
		<h4 >  Thank You for choosing FlyAway..Enjoy the journey!!!</h4>
		  <br/><br/><br/>
		 
                    
                                     
   
</body>
<br/><br/><br/><br/><br/><br/><br/><br/>
<footer>
        
                    <font color="white" size=10px;></font>Copyright &copy; 2022 FlyAway Company
                
                |
               
    </footer>