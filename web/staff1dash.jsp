<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/staff1dash.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/tble.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
       <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
       
        
 
        
 </head>
 <body>
     <div class="content" style="height: 1200px;">
         
         
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
                        
                    
                     <a href="Home.html" class="ab"><input type="submit" value="Logout" class="loginsub"></a>
                        
               
                    </form>
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
                             <div class="div2" style="height: 900px;" >
        
        <div class="reservation" style="background-color: transparent;">
                   
                     
         <ol>
             <li><a href="#"><button class="staff1b" onclick="togglePopup7()">Add Ticket Information</button></a>
          <div class="popup" id="popup-8">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup7()">&times;</div>
    <h1>Add Ticket Information</h1>
    <form method="post" action="Addticket">
                        <div class="txt_field">
                            <input type="text" name="tId" required>
                            <label>Ticket ID</label>
                        </div>
                        <div class="txt_field">
                            
                            <input type="text" name="pname" required >
                            <label>Passenger Name</label>
                        </div>
                            <div class="txt_field">
                            <input type="text" name="seatno" required>
                            <label>Seat No</label>
                        </div>
                            <div class="txt_field">
                            <input type="text" name="btime" required>
                            <label>Boarding Time</label>
                        </div>
                            <div class="txt_field">
                            <input type="text" name="depdate" required>
                            <label>Departure Date</label>
                        </div>
                        
                        <div class="txt_field">
                            <input type="text" name="flightno" required> 
                            <label>Flight No</label>
                        </div>
                        
                            
                       
                        <div class="txt_field">
                            <select name="class" required>
                                <option>Select</option>
                                <option>Economy Class</option>
                                <option>Business Class</option>
                                <option>First Class</option>
                                
                            </select>
                            <label>Travel Class</label>
                        </div>
                        
                        
                        <input type="submit" value="Add" class="loginsub">
                        
               
                    </form>
  </div>
          </div></li>
             <li><a href="#"><button class="staff1b" onclick="togglePopup()">Update Ticket Information</button></a>
          <div class="popup" id="popup-1">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup()">&times;</div>
    <h1>Update Ticket Information</h1>
    <form method="post" action="updateticket.jsp">
                         <div class="txt_field">
                            <input type="text" name="tid" required>
                            <label> Enter Ticket ID</label>
                        </div>
                        
                        <input type="submit" value="Check" class="loginsub">
                        
               
                    </form>
  </div>
          </div>
         
         <li><a href="#"><button class="staff1b" onclick="togglePopup1()">Delete Ticket Information</button></a>
             <div class="popup" id="popup-2">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup1()">&times;</div>
    <h1>Delete Ticket Information</h1>
    <form method="post" action="staff1dash">
                        <div class="txt_field">
                            <input type="text" name="tId" required>
                            <label>Enter Ticket ID</label>
                        </div>
                        
                       
                        <input type="submit" value="Delete" class="loginsub">
                        
               
                    </form>
  </div>
         </li>
         <li><a href="#"><button class="staff1b" onclick="togglePopup2()">Add Flight</button></a>
         <div class="popup" id="popup-3">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup2()">&times;</div>
    <h1>Add Flight</h1>
    <form method="post" action="flightAdd">
                        <div class="txt_field">
                            <input type="text" name="fId" required>
                            <label>Flight ID</label>
                        </div>
                        <div class="txt_field">
                            <select name="origin" required>
                                <option>Select</option>
                                <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>
                            </select>
                            <label>Origin</label>
                        </div>
                            <div class="txt_field">
                            <select name="destination" required>
                                <option>Select</option>
                                 <option>Sri Lanka</option>
                                 <option>USA</option>
                                 <option>Thailand</option>
                                 <option>India</option>
                            </select>
                                <label>Destination</label>
                        </div>
                            <div class="txt_field">
                            <input type="Date" name="depdate1" required>
                            <label>Departure Date</label>
                        </div>
                                 <div class="txt_field">
                            <input type="Date" name="retdate1" required>
                            <label>Return Date</label>
                        </div>
                           
                                    <div class="txt_field">
                            <select name="class1" required>
                                <option>Select</option>
                                <option>Economy Class</option>
                                <option>Business Class</option>
                                <option>First Class</option>
                                
                            </select>
                                        <label>Travel Class</label>
                                    </div>
                                         <div class="txt_field">
                            <select name="type" required>
                                <option>Select</option>
                                <option>Roundtrip</option>
                                <option>One Way</option>
                                <option>Multi-City</option>
                                
                            </select>
                            <label>Trip Type</label>
                        </div>
                        
                        
                        <input type="submit" value="Add" class="loginsub">
                        
               
                    </form>
  </div>
          
    
         </li>
         <li><a href="#"><button class="staff1b" onclick="togglePopup3()">Update Flight</button></a>
         <div class="popup" id="popup-4">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup3()">&times;</div>
    <h1>Update Flight Information</h1>
    <form method="post" action="flightUpdate.jsp">
                        <div class="txt_field">
                            <input type="text" name="fId" required>
                            <label>Enter Ticket ID</label>
                        </div>
                       
                        
                        <input type="submit" value=Check class="loginsub">
                        
               
                    </form>
  
          
    
  
    
  </div></li>
         <li><a href="#"><button class="staff1b" onclick="togglePopup4()">Delete Flight</button></a>
         <div class="popup" id="popup-5">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup4()">&times;</div>
    <h1>Delete Flight</h1>
    <form method="post" action="flightdelete">
                        <div class="txt_field">
                            <input type="text" name="fId" required>
                            <label>Ticket ID</label>
                        </div>
                        
                       
                        <input type="submit" value="Delete" class="loginsub">
                        
               
                    </form>
  </div>
    
  </div></li>
         <li><a href="#"><button class="staff1b" onclick="togglePopup5()">Check User Accounts</button></a>
         <div class="popup" id="popup-6">
  <div class="overlay"></div>
  <div class="content1" style="width:700px; margin-top: -50px;">
    <div class="close-btn" onclick="togglePopup5()">&times;</div>
    <h1>Check User Accounts</h1>
    <table class="styled-table">
		<thead>
		<tr>
			<th>User ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
                        <th>Password</th>
                        <th>Email</th>
                        
		</tr>
    <%
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        String sql="select * from userlogin";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
       
        while(rs.next()){
            %>
            	
	</thead>

			<tbody>
			<tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("FirstName")%></td>
                            <td><%=rs.getString("lastname")%></td>
                            <td><%=rs.getString("username")%></td>
                             <td><%=rs.getString("password")%></td>
                            <td><%=rs.getString("email")%></td>
                            
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
  </div>
  </div>
          <li><a href="#"><button class="staff1b" onclick="togglePopup8()">Update and Block Accounts</button></a>
             <div class="popup" id="popup-9">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup8()">&times;</div>
    <h1>Update and Block User Accounts</h1>
    
            <a href="bnuuser.jsp"><button class="staff1b">Update & Block Accounts</button></a>
             <a href="unblockuser.jsp"><button class="staff1b">Unblock Accounts</button></a>
               
                    
  </div>
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
function togglePopup7(){
  document.getElementById("popup-8").classList.toggle("active");
}
function togglePopup8(){
  document.getElementById("popup-9").classList.toggle("active");
}
</script>
  
 
        
    </body>
     
</html>
