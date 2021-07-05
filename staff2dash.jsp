<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.logging.Level"%>
<%@page import="newpackage.connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>

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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/staff2dash.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/tble.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
       
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
        
 
        
 </head>
 <body>
     <div class="content" style="height: 900px;">
         
         
 <div class="div1"> 
     
  <nav>
  <div class="logoi"><a href="#"><img src="Images/logo.png" style="width: 100px;height: 100px"></a></div>
   <label class="logo"> Phoenix Airline PVT</label>
      <ul>
                   
          
<li><a  href="homeStaff2.jsp">HOME</a></li>
<li><a href="#">PLAN & BOOK
          <i class="fas fa-caret-down"></i>
        </a>
<ul>
<li><a href="staff2reservation.jsp">FIGHT RESERVATION</a></li>
<li><a href="staff2checka.jsp">CHECK AVAILABILITY</a></li>

</ul>
</li>

<li><a href="staff2expeirence.jsp">EXPERIENCE</a></li>



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
                    <h1>Logged as Staff Grade 2</h1>
                    
                                
                                                        
                             <p style="font-family:'Emirates'; Color:#0088dd; font-size: 20px;">Username : ${uname} </p>    
                        
         <a href="homeStaff2.jsp" class="ab"><input type="submit" value="Back" class="loginsub"></a>
                     <a href="Home.html" class="ab"><input type="submit" value="Logout" class="loginsub"></a>
                        
               
                    </form>
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
    <div class="div2" style="height: 600px;">
        
        <div class="reservation" style="background-color: transparent;">
                   
                     
         <ol>
         <li><a href="#"><button class="staff2b" onclick="togglePopup()">View Flight Information</button></a>
         <div class="popup" id="popup-1">
  <div class="overlay"></div>
  <div class="content1" style="width: 700px;">
    <div class="close-btn" onclick="togglePopup()">&times;</div>
    <h1>View Flight Information</h1>
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
  </div></div></li>
         <li><a href="#"><button class="staff2b" onclick="togglePopup1()">Add Flight Information</button></a>
         <div class="popup" id="popup-2">
  <div class="overlay"></div>
  <div class="content1">
    <div class="close-btn" onclick="togglePopup1()">&times;</div>
    <h1>Add Flight Information</h1>
    <form method="post" action="addflights2">
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
function togglePopup8(){
  document.getElementById("popup-9").classList.toggle("active");
}

</script>
  
 
        
    </body>
     
</html>
