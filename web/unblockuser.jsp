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
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/back.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
       
       
        
 
        
 </head>
 <body>
     <div class="content" style="height: 800px;">
         
         
 <div class="div1"> 
     
  <nav>
  <div class="logoi"><a href="#"><img src="Images/logo.png" style="width: 100px;height: 100px"></a></div>
   <label class="logo"> Phoenix Airline PVT</label>
      <ul>
                   
          
<li><a  href="Home.html">HOME</a></li>
<li><a href="#">PLAN & BOOK
          <i class="fas fa-caret-down"></i>
        </a>
<ul>
<li><a href="flightreservation.html">FIGHT RESERVATION</a></li>
<li><a href="checkavail.html">CHECK AVAILABILITY</a></li>

</ul>
</li>

<li><a href="experience.html">EXPERIENCE</a></li>



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
    <div class="div2" style="height:600px;">
        
        <div class="reservation" style="background-color: transparent;">
                   
         
  
    <h1>Unblock User</h1>
 
        <table class="styled-table" style="margin-left:-120px;">
		<thead>
		<tr>
			<th>Staff Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Type</th>
                        <th>Username</th>
                   
                        <th>Email</th>
                        <th></th>
                       
                     
		</tr>
    <%
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        String sql="select * from blockuser";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
       
        while(rs.next()){
            %>
            <input type="hidden" value="<%=rs.getString("password")%>">	
	</thead>

			<tbody>
                            <tr style="background-color: white;">
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("FirstName")%></td>
                            <td><%=rs.getString("lastname")%></td>
                            <td><%=rs.getString("Type")%></td>
                            <td><%=rs.getString("username")%></td>
                            
                            <td><%=rs.getString("email")%></td>
                            <td><a href='unblock.jsp?i=<%=rs.getString("id")%>&ib=<%=rs.getString("FirstName")%>&ic=<%=rs.getString("lastname")%>&id=<%=rs.getString("Type")%>&ie=<%=rs.getString("username")%>&ig=<%=rs.getString("email")%>&ih=<%=rs.getString("password")%>' style="background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;">Unblock</a></td>
                           
                          
                        
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

   
				
				
			
    </div>
        <div class="div8" style="">
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
