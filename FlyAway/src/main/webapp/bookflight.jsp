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
                  <h4 font-color: black>Hi Guest</h4>
                </div>
		</ul>
		</nav>
		</header>

<body>

 
		
    
	
	<table class="table table-inverse  table-bordered table-hover mx-auto table-responsive">
		  <thead>
			<tr>
			 
			  <th>Flight</th>
			   <th>Flight Number</th>
			  <th>Source</th>
			  <th>Destination</th>
			  <th>Date</th>
			  <th>Time</th>
			  <th>Duration</th>
			  <th>Airlines</th>
			  <th>Price</th>
			  
			  <th>Book</th>
			  
			   </tr>
		  </thead>
			 <tbody>  
			 
		 
			 
			   <%  HttpSession session1 = request.getSession();
			   ArrayList<Flight> bookFlightList= ((ArrayList<Flight>)request.getAttribute("servletName"));
			   
					for(Flight flight : bookFlightList)
					{	
						out.println("<tr>");
						
						out.print("<td>"+ flight.getFlightname() +  "</td>");
						out.print("<td>"+ flight.getFlightno() +  "</td>");
						session1.setAttribute("Currentflightno", flight.getFlightno());
						out.print("<td>"+ flight.getFrom() +  "</td>");
						out.print("<td>" + flight.getTo() +  "</td>");
						out.print("<td>" + flight.getDate() +  "</td>");
						out.print("<td>" + flight.getTime() +  "</td>");
						out.print("<td>" + flight.getDuration() +  "</td>");
						out.print("<td> " + flight.getAirlines() +  "</td>");
						session1.setAttribute("Currentairlines", flight.getAirlines());
						out.print("<td>" + flight.getPrice() +  "</td>");
						session1.setAttribute("Currentprice", flight.getPrice());
						out.print("<td><a href="+"userRegistration.jsp?flightno="+flight.getFlightno() +"&price="+flight.getPrice()+"&airlines="+flight.getAirlines()+">Book</a></td>");
						out.print("</tr>");
						
						
						
					}
			  
				%>
           
		 
		  </tbody>
		  
		  
		  </table>
		
   
		  
		  <br/><br/><br/>
		 
                                
   
</body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<footer>
        
                    <font color="white" size=10px;></font>Copyright &copy; 2022 FlyAway Company
                
                |
               
    </footer>
</html>