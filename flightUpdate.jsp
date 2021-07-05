<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/userup.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/tble.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
                  <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
 <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
       
       
        
 
        
 </head>
 <body>
     <div class="content" style="height: 1100px;">
         
         
 <div class="div1"> 
     
  <nav>
  <div class="logoi"><a href="#"><img src="Images/logo.png" style="width: 100px;height: 100px"></a></div>
   <label class="logo"> Phoenix Airline PVT</label>
      <ul>
                   
          
<li><a  href="homeStaff1.jsp">HOME</a></li>
<li><a href="#">PLAN & BOOK
          <i class="fas fa-caret-down"></i>
        </a>
<ul>
<li><a href="staff1reservation.jsp">FIGHT RESERVATION</a></li>
<li><a href="staff1checka.jsp">CHECK AVAILABILITY</a></li>

</ul>
</li>

<li><a href="staff1expeirence.jsp">EXPERIENCE</a></li>




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
                    <h1>Logged as Staff Grade 1</h1>
                    
                        <p style="font-family:'Emirates'; Color:#0088dd; font-size: 20px;">Username : ${uname} </p>
                   
                   
                    <a href="staff1dash.jsp" class="ab"><input type="submit" value="Dashboard" class="loginsub"></a>
                    
                    <a href="Home.html" class="ab"><input type="submit" value="Logout" class="loginsub"></a>
                        
               
                    </form>
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul
    
  </nav>


  </div>
    <div class="div2" style="height: 1100px;">
       <div class="reservation">
           <%
               
                Class.forName("com.mysql.jdbc.Driver");
                Connection con;
                Statement st;
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
                st=con.createStatement();
               %>
                <h1>Update Here</h1>
                    <form method="post" action="flightUpdate">
                        <%
                            int id1=Integer.parseInt(request.getParameter("fId"));
                            String sql="select * from flight where ID='"+id1+"'";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next()){
                            %>
                        <div class="txt_field">
                            <input type="text" name="id" readonly value="<%=rs.getString("ID")%>" >
                            <label> Ticket ID</label>
                        </div>
                            <div class="txt_field">
                            <input type="text" name="origin"  value="<%=rs.getString("origin")%>" >
                            <label>Origin</label>
                        </div>
                        <div class="txt_field">
                            <input type="text" name="destination" value="<%=rs.getString("destination")%>" >
                            <label>Destination</label>
                        </div>
                        <div class="txt_field">
                            <input type="date" name="ddate" value="<%=rs.getString("depdate")%>" >
                            <label>Departure Date</label>
                        </div>
                        <div class="txt_field">
                            <input type="date" name="rdate" value="<%=rs.getString("retdate")%>" >
                            <label>Return Date</label>
                        </div>
                                                
                            
                        
                            <div class="txt_field">
                            <input type="text" name="triptype" value="<%=rs.getString("triptype")%>" >
                            <label>Trip Type</label>
                        </div>
                                 
                       
                            <div class="txt_field">
                            <input type="text" name="class" value="<%=rs.getString("class")%>" >
                            <label>Travel Class</label>
                        </div>
                        
                            <%
                               } %>
                
                        <input type="submit" value="Update" class="loginsub" >
                        
               
                    </form>
                    
                
  </div>		
    </div>
     <div class="div8" style="margin-top: -250px;">
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
