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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/userdash.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/tble.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
       
        
 
        
 </head>
 <body>
     <div class="content" style="height: 1000px;">
         
         
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
                    
                      <h1>You Are Logged as User</h1>
                    
                      
                     <p style="font-family:'Emirates'; Color:#0088dd; font-size: 20px;">Username :${uname} </p>
                    
                    <a href="userpupdate.jsp" class="ab"><input type="submit" value="Update Profile" class="loginsub"></a>
                  
                        
                     <a href="Home.html" class="ab"><input type="submit" value="Logout" class="loginsub"></a>
                        
               
                    </form>
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
    <div class="div2" style="height: 800px;" >
        
        <div class="reservation" style="background-color: transparent;">
                   
                     
         <ol>
         <li><a href="#"><button class="userb" onclick="togglePopup4()">Check Flight</button></a>
             <div class="popup" id="popup-5">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup4()">&times;</div>
    <h1>Check Flight</h1>
    <form method="post" action="flight.jsp">
                        <div class="rad">
                 <input type="radio" value="Roundtrip"  name="triptype" ><label>Roundtrip</label>
                <input type="radio" value="One Way"  name="triptype"><label>One Way</label>
                <input type="radio" value="Multi-City"  name="triptype" ><label>Multi-City</label>
                        </div>
                       
                        
                        <div class="txt_field">
                            <select name="flyfrom" >
                                 <option>Country</option>
                                   
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
                        
                       
       <input type="submit" value="Check Now" class="loginsub">
                        
               
                    </form>
           
  </div>
            
</li>
<li><a href="#"><button class="userb" onclick="togglePopup()">Reserve Seats</button></a>
    <div class="popup" id="popup-1">
  <div class="overlay"></div>
  <div class="content1" style="margin-top: 230px;">
    <div class="close-btn" onclick="togglePopup()">&times;</div>
    <h1>Reserve Seats</h1>
     <form method="post" name="flightreserve2" action="reserve2">
                        <div class="rad">
                   <input type="radio" name="triptype1" value="Roundtrip"><label>Roundtrip</label>
                   <input type="radio"  name="triptype1" value="One Way"><label>One Way</label>
                <input type="radio" name="triptype1" value="Multi-City"><label>Multi-City</label>
                        </div>
                        <div class="txt_field">
                            <input type="text" name="fname" required>
                            <label>Full Name</label>
                        </div>
                        <div class="txt_field">
                            <input type="text" name="id" required>
                            <label>ID</label>
                        </div>
                        <div class="txt_field">
                            <input type="text" name="email" required>
                            <label>Email</label>
                        </div>
                        
                        <div class="txt_field">
                            <select name="deptcountry1" >
                                 <option>Country</option>
                
                                 <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>
                            </select>
                            
                            <label>Flying From</label>
                        </div>
                        <div class="txt_field">
                            <select name="arrivalcountry1" >
                                 <option>Country</option>
                                 <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>

                
                            </select>
                            
                            <label>Flying To</label>
                        </div>
                            
                        <div class="txt_field">
                            <select name="travelclass1" >
                                <option>Enter a travel class</option>
                                <option>Economy Class</option>
                                <option>Business Class</option>
                                <option>First Class</option>
                                
                            </select>
                            <label>Travel Class</label>
                        </div>
                        <div class="txt_field">
                            <select name="noofadults" >
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
                            <select name="noofkids" >
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
                            <select name="yourcountry" >
                                <option>Country</option>
                                 <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>
                            </select>
                            <label>Country</label>
                        </div>
                        <div class="txt_field">
                            <input type="date" name="depdate" required>
                            <label>Departing Date</label>
                        </div>
                        <div class="txt_field">
                            <input type="date" name="retdate" required>
                            <label>Returning Date</label>
                        </div>
                        
                       
                        <input type="submit" value="Book Now" class="loginsub" onclick="flightreservevalidate();">
                        
              
                    </form>
  </div></li>
          
         <li><a href="#"><button class="userb" onclick="togglePopup1()">Check Reservation </button></a>
         <div class="popup" id="popup-2">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup1()">&times;</div>
    <h1>Check Reservation</h1>
    <form method="post"  action="checkreserv.jsp">
                        <div class="txt_field">
                            <input type="text" name="id" required>
                            <label>Enter Reservation ID</label>
                        </div>
            <input type="submit" value="Check" class="loginsub" onclick="flightreservevalidate();">
                        
    </form>
		
  </div></li>
         <li><a href="#"><button class="userb" onclick="togglePopup2()">Search Flights </button></a>
         <div class="popup" id="popup-3">
  <div class="overlay"></div>
  <div class="content1" style="width: 700px; margin-top: -50px;">
    <div class="close-btn" onclick="togglePopup2()">&times;</div>
    <h1>Search Flights</h1>
     <table class="styled-table">
		<thead>
		<tr>
			<th>Flight ID</th>
			<th>Travel Class</th>
			<th>Trip Type</th>
			<th>Origin</th>
                        <th>Destination</th>
                        <th>Departure Date</th>
                        <th>Return Date</th>
		</tr>
    <%
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        String sql="select * from flight";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
       
        while(rs.next()){
            %>
            	
	</thead>

			<tbody>
			<tr>
                            <td><%=rs.getString("ID")%></td>
                            <td><%=rs.getString("class")%></td>
                            <td><%=rs.getString("triptype")%></td>
                            <td><%=rs.getString("origin")%></td>
                            <td><%=rs.getString("destination")%></td>
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

</table
  </div></li>
       <li><a href="#"><button class="userb" onclick="togglePopup3()">Update Reservations </button></a>
         <div class="popup" id="popup-4">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup3()">&times;</div>
    <h1>Update Reservations</h1>
     <form method="post" name="flightreserve2"  action="updatereservation.jsp">
         <div class="txt_field">
                            <input type="text" name="id" required>
                            <label>ID</label>
                        </div>
                   

			
                       
                        <input type="submit" value="Check" class="loginsub">
                        
               
                    </form>

  </div></li>  
   <li><a href="#"><button class="userb" onclick="togglePopup6()">Check Ticket Details </button></a>
         <div class="popup" id="popup-7">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup6()">&times;</div>
    <h1>Check Ticket</h1>
    <form method="post"  action="ticketdisplay.jsp">
                        <div class="txt_field">
                            <input type="text" name="tid" required>
                            <label>Enter Ticket ID</label>
                        </div>
            <input type="submit" value="Check" class="loginsub" >
                        
    </form>
		
  </div></li>
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
    function togglePopup(){
  document.getElementById("popup-1").classList.toggle("active");
}
function togglePopup1(){
  document.getElementById("popup-2").classList.toggle("active");
}
function togglePopup2(){
  document.getElementById("popup-3").classList.toggle("active");
}

function togglePopup3(){
  document.getElementById("popup-4").classList.toggle("active");
}
function togglePopup4(){
  document.getElementById("popup-5").classList.toggle("active");
}
function togglePopup5(){
  document.getElementById("popup-6").classList.toggle("active");
}
function togglePopup6(){
  document.getElementById("popup-7").classList.toggle("active");
}
</script>
  
 
        
    </body>
     
</html>
