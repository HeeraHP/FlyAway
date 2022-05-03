<%@page import="com.flyaway.dto.Route"%>
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
<%
   String sAction = (String) request.getAttribute("msg");
   if ( sAction != null && (sAction).equals("y")) { %>
   <script> alert("Route Updated Successfully!!");</script>
<% }
   else if( sAction != null && (sAction).equals("N")) {%>
	 <script> alert("No Matching Data Found!!");</script>
<%} 
   else if( sAction != null && (sAction).equals("D")) {%>
	 <script> alert("Route Deleted Successfully!!");</script>

<%} %>


		
    
	
	<table class="table table-inverse  table-bordered table-hover mx-auto table-responsive">
		  <thead>
			<tr>
			 <th>ID</th>
			 
			  <th>Source</th>
			  <th>Destination</th>
			  <th>Edit</th>
			  <th>Delete</th>
			  
			  
			   </tr>
		  </thead>
			 <tbody> 
			 

 <%   
			   
			   
			   Set<Route> allroute= ((Set<Route>) session.getAttribute("allroute"));
			   
					for(Route route : allroute)
					{	
						out.println("<tr>");
						out.print("<td><input id='routeid' readonly value='"+ route.getRouteid() + "'/></td>");
						//session.setAttribute("routeid", route.getRouteid());
						//request.setAttribute("editrouteid", route.getRouteid());
						out.print("<td><input name='source' readonly value='"+ route.getSource() +  "'</td>");
						out.print("<td><input name='destination' readonly value='"+ route.getDestination() +  "'</td>");
						
						out.print("<td><a href="+"SearchRouteServlet?routeid=" +route.getRouteid()+">Edit</a></td>");
						out.print("<td><a href="+"DeleteRouteServlet?routeid=" +route.getRouteid()+">Delete</a></td>");
						out.print("</tr>");
					}
					
				%>
				
			
				
           <script>  
			 function enable() 
			 { document.getElementById("routeid").disabled = true; } 
			 </script>
		 
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