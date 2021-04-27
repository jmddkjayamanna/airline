<%-- 
    Document   : checkavail
    Created on : Apr 27, 2021, 5:52:28 PM
    Author     : Kreshan Jayamannna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/checkavail.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/back2.css" >
          <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
       
        
 
        
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
            <div class="login-form" style="height: auto;">
               
                <div class="center" style="border-bottom: none;">
                   
                     <label  class="close-btn fas fa-times"></label>
                    
                      <h1>You Are Logged as User</h1>
                     <p style="font-family:'Emirates'; Color:#0088dd; font-size: 20px;">Username :${uname} </p>
                     <a style="background-color: transparent;" href="userdash.jsp"><input type="submit" value="Dashboard" class="loginsub" style="margin-top: 10px;" ></a>
                                     <a style="background-color: white;" href="userpupdate.jsp"><input type="submit" value="Update Profile" class="loginsub"style="margin-top: 20px;"></a>
                   <a style="background-color: transparent;"  href="Home.html"><input type="submit" value="Logout" class="loginsub" style="margin-top: 20px;" ></a> 
                  
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
    <div class="div2" >
        
        <div class="reservation">
                   
                     
                    <h1>Check Flight Availability</h1>
                    <form method="post" action="flight2.jsp" name="checkflight">
                        <div class="rad">
                        <input type="radio" value="Roundtrip"  name="triptype" ><label>Roundtrip</label>
                <input type="radio" value="One Way"  name="triptype"><label>One Way</label>
                <input type="radio" value="Multi-City"  name="triptype" ><label>Multi-City</label>
                        </div>
                       
                        
                        <div class="txt_field">
                            <select name="flyfrom" >
                                 <option>Country</option>
                                    <option>Select</option>
                                <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>
                            </select>
                            
                            <label>Flying From</label>
                        </div>
                        <div class="txt_field">
                            <select name="destination" >
                                 <option>Country</option>
                                    <option>Select</option>
                                <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>
                            </select>
                            
                            <label>Flying To</label>
                        </div>
                            
                        <div class="txt_field">
                            <select name="tclass" >
                                <option>Select</option>
                                <option>Economy Class</option>
                                <option>Business Class</option>
                                <option>First Class</option>
                                
                            </select>
                            <label>Travel Class</label>
                        </div>
                        <div class="txt_field">
                            <select name="adults" >
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                
                             
                                
                            </select>
                            <label>No of Adults</label>
                        </div>
                        <div class="txt_field">
                            <select name="kids" >
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                
                             
                                
                            </select>
                            <label>No of Kids</label>
                        </div>
                       
                        <div class="txt_field">
                            <input type="date" name="depd" required>
                            <label>Departing Date</label>
                        </div>
                        <div class="txt_field">
                            <input type="date" name="retd" required>
                            <label>Returning Date</label>
                        </div>
                        
                       
                        <input type="submit" value="Check Now" class="loginsub" id="checkab" onclick="flightavaliability();">
                        
               
                    </form>
                    
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
  	 		</div>
  </footer>

       </div>
              </div>
        
         
             
      <div class="copyright">
            <h4>© 2021 Phoenix PVT,All Rights Reserved.</h4>
                
        </div>
        
  
  
  </div>
       
   


<script type="text/javascript" src="Javascript/popup.js"></script>
<script>
    function flightavaliability()
 {
     if((!document.checkflight.triptype[0].checked )&& (!document.checkflight.triptype[1].checked)&& !document.checkflight.triptype[2].checked ) 
     { 
     alert("Please select option for the triptype"); 
     }
  if(document.checkflight.flyfrom.selectedIndex==0)
    {
    alert("Please Select Your Departure Country"); 
    }
  if(document.checkflight.destination.selectedIndex==0)
  {
      alert("Please Select Your Arrival Country");
  }
  if (document.checkflight.tclass.selectedIndex==0)
  {
      alert("Please Select Your Travel Class");
  }
  if (document.checkflight.adults.selectedIndex==0)
  {
      alert("Please Select The Number Of Adults");
  }
  if(document.checkflight.kids.selectedIndex==0)
  {
   alert("Please Select The Number Of Kids");
  }
  if(document.checkflight.depd.value==null || document.checkflight.depd.value=='')
    {
        alert("Please Select Your Departure Date");
    }
    if(document.checkflight.retd.value==null || document.checkflight.retd.value=='')
    {
        alert("Please Select Your Return Date");
    }  
 }
 
</script>
    
    
 
        
    </body>
     
</html>

