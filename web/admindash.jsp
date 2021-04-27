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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/admindash.css" >
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/tble.css" >
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
                <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
       
       
        
 
        
 </head>
 <body>
<div class="content" style="height: 700px;">
         
         
 <div class="div1"> 
     
  <nav>
  <div class="logoi"><a href="#"><img src="Images/logo.png" style="width: 100px;height: 100px"></a></div>
   <label class="logo"> Phoenix Airline PVT</label>
      <ul>
                   
          
<li><a  href="homeAdmin.jsp">HOME</a></li>
<li><a href="#">PLAN & BOOK
          <i class="fas fa-caret-down"></i>
        </a>
<ul>
<li><a href="flightreservation.jsp">FIGHT RESERVATION</a></li>
<li><a href="checkavail.jsp">CHECK AVAILABILITY</a></li>

</ul>
</li>

<li><a href="experience.jsp">EXPERIENCE</a></li>



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
                    <h1>Logged as Admin</h1>
                    
                                <p style="font-family:'Emirates'; Color:#0088dd; font-size: 20px;">Username :${uname} </p>
                            
                        
                    <a href="homeAdmin.jsp" class="ab"><input type="submit" value="Back" class="loginsub"></a>
                     <a href="Home.html" class="ab"><input type="submit" value="Logout" class="loginsub"></a>
                        
               
                    </form>
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
                                <div class="div2" style="height: 500px;  width: 1350px; " >
        
                                    <div class="reservation" style=" background: transparent;">
                   
                     
         <ol>
         <li><a href="#"><button class="adminb"  onclick="togglePopup()">Add Staff</button></a>
         <div class="popup" id="popup-1">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup()">&times;</div>
    <h1>Add Staff</h1>
    <form method="post" action="addstaff">
         
                            <div class="txt_field">
                            <input type="text" name="id" required>
                            <label>ID</label>
                        </div>
                        <div class="txt_field">
                            <input type="text" name="fname" required>
                            <label>First Name</label>
                        </div>
                        <div class="txt_field">
                            
                            <input type="text" name="lname" required>
                            <label>Last Name</label>
                        </div>
                            <div class="txt_field">
                            <input type="text" name="loguname" required>
                            <label>Username</label>
                        </div>
                            <div class="txt_field">
                            <input type="text" name="mail" required>
                            <label>Email</label>
                       
                            </div>
                       
                        
                            
                       
                        <div class="txt_field">
                            <select name="grade" >
                                <option>Select</option>
                                <option>Grade 1</option>
                                <option>Grade 2</option>
                                
                            </select>
                            <label>Grade</label>
                        </div>
                         <div class="txt_field">
                            <input type="password" name="logpass" required>
                            <label>Password</label>
                        </div>
                        
                        <input type="submit" value="Add" class="loginsub">
                        
               
                    </form>
  </div>
</div>
 

            
           </li>
         <li><a href="#"><button class="adminb">Check Activity</button></a>
         </li>
         <li>
             <a href="checku.jsp"><button class="adminb" >Approve Staff</button></a>
       
         </li>
     </ol>
                   
                    
                </div>
				
				
			
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
  	 		
  </footer>

       </div>
              </div>
        
         
             
      <div class="copyright">
            <h4>© 2021 Phoenix PVT,All Rights Reserved.</h4>
                
        </div>
        
  
  
  </div>
       

<script type="text/javascript" src="Javascript/popup.js"></script>
<script>
    function togglePopup(){
  document.getElementById("popup-1").classList.toggle("active");
}
function togglePopup1(){
  document.getElementById("popup-2").classList.toggle("active");
}
</script>
  
 
        
    </body>
     
</html>
