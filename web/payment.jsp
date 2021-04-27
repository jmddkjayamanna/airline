<%-- 
    Document   : payment
    Created on : Apr 21, 2021, 10:05:44 AM
    Author     : bimsa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="Images/favicon-16x16.png" />
        <title>Phoenix Airline PVT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="Stylesheet" type="text/css" media="all" href="CSS/flightreservation.css" >
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/footer.css" >
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="Stylesheet" type="text/css" media="all" href="CSS/b.css" >
          <link rel="Stylesheet" type="text/css" media="all" href="CSS/back2.css" >
       <script type="text/javascript" src="Javascript/HomeValidation.js"></script>
       <style>
           h2{
    text-align:left;
}

* {
    box-sizing: border-box;
}

.error {
    color: red;
    border-color: red;
}

.row {
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
    margin: 0 -10px;
    width: 1100px;
}

.col-25 {
    width: 1000px;
    
}

.col-50 {
    width: 600px;
    margin-left: 50px;
}

.col-75 {
    width: 800px;
    margin-left: 300px;
    margin-top: 50px;
}

.col-25,.col-50,.col-75 {
    padding: 0 16px;
}

.container {
    background-color: #FFFFFF;
    padding: 3px 18px 13px 18px;
    border: 1px solid lightgrey;
    border-radius: 3px;
    box-shadow: 0 0 2rem 0 rgba(168, 180, 194, 0.37);
}


input[type=text] {
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid rgb(130, 26, 26);
    border-radius: 1px;
}
.cardtype{
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid rgb(130, 26, 26);
    border-radius: 1px;
}
#expdate{
    width: 100%;
    margin-bottom: 20px;
    padding: 12px;
    border: 1px solid rgb(130, 26, 26);
    border-radius: 1px;
}

label {
    margin-bottom: 10px;
    display: block;
}

.icon-container {
    margin-bottom: 20px;
    padding: 7px 0;
    font-size: 24px;
}

.btn {
    background-color: #01BAEF;
    color: white;
    padding: 12px;
    margin: 10px 0;
    border: none;
    width: 100%;
    border-radius: 3px;
    cursor: pointer;
    font-size: 17px;
    box-shadow: 0 0 1rem 0 rgba(99, 123, 150, 0.329);

}

.btn:hover {
    background-color: #0CBABA;
}

a {
    color: #2196F3;
}

hr {
    border: 1px solid lightgrey;
}

span.price {
    float: right;
    color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns 
    stack on top of each other instead of next to each other (also change the direction 
    - make the "cart" column go on top) 
*/
@media (max-width: 800px) {
    .row {
        flex-direction: column-reverse;
    }
    .col-25 {
        margin-bottom: 20px;
    }
}</style>
               
        
 
        
 </head>
 <body>
<div class="content">
         
         
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
<li><a href="payment.jsp">PAYMENT OPTIONS</a></li>
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
 	Login
 </a>
            <div class="arrowup"></div>
            <div class="login-form">
               
                <div class="center">
                    
                   
                     <label  class="close-btn fas fa-times"></label>
                    <h1>Login</h1>
                    <form method="post">
                        <div class="txt_field">
                            <input type="text" name="loguname" required>
                            <label>Username</label>
                        </div>
                        <div class="txt_field">
                            <input type="password" name="logpass" required>
                            <label>Password</label>
                        </div>
                        <div class="txt_field">
                            <select name="logtype" >
                                <option>Admin</option>
                                <option>Staff</option>
                                <option>User</option>
                                
                            </select>
                            <label>Select User Type</label>
                        </div>
                        <div class="fpass">Forget Password ? </div>
                        <input type="submit" value="Login" class="loginsub">
                        <div class="signuplink"><a href="signupform.html">Not a member ?</a></div>
               
                    </form>
                    
                </div>
                
                   
                </div>
           

  </li> 
  
      </ul>
    
  </nav>


  </div>
    <div class="div2" style="height:1350px;">
    <div class="row">
    <div class="col-75">
        <div class="container">
            <form id="validate" name="paymentdetails">
                <div class="row">
                    <div class="col-50">
                        <h3>Billing Address</h3>
                        <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                        <input type="text" id="fname" name="fullname"  required>
                        <label for="email"><i class="fa fa-envelope"></i> Email</label>
                        <input type="text" id="email" name="email" required>
                        <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                        <input type="text" id="adr" name="address" required>
                        <label for="city"><i class="fa fa-institution"></i> City</label>
                        <input type="text" id="city" name="city" required>

                        
                                <label for="state">Country</label>
                                <input type="text" id="state" name="state" required>
                            </div>
                            <div class="col-50">
                                <label for="zip">Postal Code</label>
                                <input type="text" id="zip" name="zip" required>
                           
                    </div>

                    <div class="col-50">
                        <h3>Payment</h3>
                        <label for="fname">Accepted Cards</label>
                        <div class="icon-container">
                            <i class="fa fa-cc-visa" style="color:navy;"></i>
                            <i class="fa fa-cc-amex" style="color:blue;"></i>
                            <i class="fa fa-cc-mastercard" style="color:red;"></i>
                            <i class="fa fa-cc-discover" style="color:orange;"></i>
                        </div>

                        <label for="cname">Name on Card</label>
                        <input type="text" id="cname" name="cardname" required>
                        <label for="cname">Type of the card</label>
                        <select class="cardtype" name="cardtype">
                            <option>Select your card type</option>
                            <option>Visa</option>
                            <option>Master</option>
                            <option>American Express</option>
                            <option>Discover</option>
                            
                        </select>
                        <label for="ccnum">Credit card number</label>
                        <input type="text" id="cardnumber" name="cardnumber" required>
                        <label for="expmonth">Expire date</label>
                        <input type="date" id="expdate" name="expdate" required>
                       
                              
                            </div>
                            <div class="col-50">
                                <label for="cvv">Security Card number</label>
                                <input type="text" id="seccardnumber" name="seccardnumber" required>
                                
                           
                    </div>
                </div>
                
                <a href="Home.html" ><input type="submit" value="Continue to checkout" class="btn" onclick="paymentvalidate(document.paymentdetails.email)"/></a>
            </form>
        </div>
    </div>
    </div>
</div>
<script>
    $('#validate').validate({
        roles: {
            fullname: {
                required: true,
            },
            email: {
                required: true,
            },
            address: {
                required: true,
            },
            city: {
                required: true,
            },
            state: {
                required: true,
            },
            zip: {
                required: true,
            },
            cardname: {
                required: true,
            },
            cardnumber: {
                required: true,
            },
            expmonth: {
                required: true,
            },
            expyear: {
                required: true,
            },
            seccardnumber: {
                required: true,
            },
           
        },
        messages: {
            fullname:"Please input full name*",
            email:"Please input email*",
            city:"Please input city*",
            address:"Please input address*",
            state:"Please input state*",
            zip:"Please input address*",
            cardname:"Please input card name*",
            cardnumber:"Please input card number*",
            expdate:"Please input expire date of your card*";
            seccardnumber:"Please input your security card number",
        },
    });
</script>
</body>
</html>