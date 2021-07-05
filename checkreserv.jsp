<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="shortcut icon" href="Images/favicon-16x16.png" />
        <title>Phoenix Airline PVT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/flight.css" >
          <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/tble.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
       
       
        
 
        
 </head>
 <body>
<div class="content">
         
         
 <div class="div1"> 
     
  <nav>
  <div class="logoi"><a href="#"><img src="Images/logo.png" style="width: 100px;height: 100px"></a></div>
   <label class="logo"> Phoenix Airline PVT</label>
      <ul>
                   
          
<li><a  href="homeUser.jsp">HOME</a></li>
<li><a href="#">PLAN & BOOK
          <i class="fas fa-caret-down"></i>
        </a>
<ul>
<li><a href="userreservation.jsp">FIGHT RESERVATION</a></li>
<li><a href="userchecka.jsp">CHECK AVAILABILITY</a></li>

</ul>
</li>

<li><a href="userexperience.jsp">EXPERIENCE</a></li>




</ul>
      <ul class="log">
          
          <li class="first" >
	<a id="book" href="#">
 	<span></span>
 	<span></span>
 	<span></span>
 	<span></span>
 	Logged
 </a>
            <div class="arrowup"></div>
            <div class="login-form">
               
                <div class="center">
                    
                   
                     <label  class="close-btn fas fa-times"></label>
                  
                 
                        <h1>Logged as User</h1>
                    
                                
                                                <p style="font-family:'Emirates'; Color:#0088dd; font-size: 20px;">Username : ${uname} </p>
                        
                    <a href="userdash.jsp" class="ab"><input type="submit" value="Dashboard" class="loginsub"></a>
                     <a href="userpupdate.jsp" class="ab"><input type="submit" value="Update Profile" class="loginsub"></a>
                      <a href="Home.html" class="ab"><input type="submit" value="Logout" class="loginsub"></a>
                        
                   
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
    <div class="div2" >
       
       <h1>Reservation Information</h1>

       <table class="styled-table" style="margin-left: 200px;">
		<thead>
		<tr>
			<th>Reservation ID</th>
			<th>Full Name</th>
                        <th>Travel Class</th>
			<th>Trip Type</th>
                        <th>Adults</th>
                        <th>Kids</th>
                        <th>No of Seats</th>
			<th>Origin</th>
                        <th>Destination</th>
                        <th>Departure Date</th>
                        <th>Return Date</th>
		</tr>
    <%
        
        String id=request.getParameter("id");
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        String sql="select * from reseravation  where id='"+id+"'";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
       
        while(rs.next()){
            %>
            	
	</thead>

			<tbody>
			<tr style="background-color: white;">
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("fullname")%></td>
                            <td><%=rs.getString("travelc")%></td>
                            <td><%=rs.getString("triptype")%></td>
                            <td><%=rs.getString("adults")%></td>
                            <td><%=rs.getString("kids")%></td>
                            <td><%=rs.getString("seats")%></td>
                            <td><%=rs.getString("depature")%></td>
                            <td><%=rs.getString("arrival")%></td>
                            <td><%=rs.getString("depdate")%></td>
                            <td><%=rs.getString("retdate")%></td>
                            
                             <%   
			
            
        }
    } catch(Exception ex)
{
ex.printStackTrace();
    }
        
        %>
        </tr>
		</tbody>

    </table>		
      
    
        
			
    </div>
     <div class="div8">
       <div class="div8sub">
           <footer class="footer">
  	 
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>Services</h4>
  	 			<ul>
  	 				<li><a href="#">Flight Booking</a></li>
  	 				<li><a href="#">Explore Fairs</a></li>
  	 				<li><a href="#">Check Flights</a></li>
  	 				
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>About US</h4>
  	 			<ul>
  	 				<li><a href="#">About Phoenix Airlines</a></li>
  	 				<li><a href="#">Experience</a></li>
  	 				
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Help</h4>
  	 			<ul>
  	 				<li><a href="#">Online Chat Support</a></li>
  	 				<li><a href="#">FAQs</a></li>
  	 				
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us on</h4>
  	 			<div class="social-links">
                                    <a href="#" ><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
                       <h4 style=" margin-left: 450px; font-size: 18px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
        font-family: 'Emirates';">Subscribe to receive latest news </h4>
                                <form class="newsletter" method="get" action="#">
  	 			<ul>
                                    
                                          
                                    <li style="margin-top: -15px; margin-left: 100px;"><input type="text" class="mail" placeholder="Your Email"><button class="emailb">Subscribe</button></li>
                                    
  	 				
                                    
  	 			</ul>
                                    </form>
  	 		</div>
  </footer>

       </div>
              </div>
        
         
             
      <div class="copyright">
            <h4>© 2021 Phoenix PVT,All Rights Reserved.</h4>
                
        </div>
        
  
  
  </div>
       

<script type="text/javascript" src="Javascript/popup.js"></script>

 
 
        
    </body>
     
</html>
