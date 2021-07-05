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
function checkflightvali()
{
    if(document.checkflight.flyfrom.value==0)
    {
        alert("Please Enter Departing Airport or City");
    }
    if(document.checkflight.flyto.value==0)
    {
        alert("Please Enter DDestination Airport or City");
    }
    
    if(document.checkflight.depdate.value==null || document.checkflight.depdate.value=='')
    {
        alert("Departure date is empty.Please enter a date");
    }
    
    if((!document.checkflight.triptype[0].checked )&& (!document.checkflight.triptype[1].checked)&&(!document.checkflight.triptype[2].checked )) 
    { 
        alert("Please select a triptype"); 
    }
    
    if(document.checkflight.retdate.value==null || document.checkflight.retdate.value=='')
    {
        alert("Return date is empty.Please enter a date");
    }
    if(document.checkflight.noadults.selectedIndex==0)
    { 
    alert("Please select number of adults you wish to visit"); 
    }
    if(document.checkflight.nokids.selectedIndex==0)
    { 
    alert("Please select number of kids  you wish to visit"); 
    }
    if(document.checkflight.tclass.selectedIndex==0)
    { 
    alert("Please select the class of your booking"); 
    } 
}
 function reservevalidate()
 {
     if(document.fare.country.selectedIndex==0)
     {
      alert("Plese select the place of orgin") ;  
     }
     if(document.fare.country1.selectedIndex==0)
     {
      alert("Plese select the place of destination") ;  
     }
     if(document.fare.farebudget.value=="")
     {
      alert("Please enter a maximum budjet of your visit");
     } 
     
 }
 function flightavaliability()
 {
     if((!document.Flightreserve.triptype[0].checked )&& (!document.Flightreserve.triptype[1].checked)&& !document.Flightreserve.triptype[2].checked ) 
     { 
     alert("Please select option for the triptype"); 
     }
  if(document.Flightreserve.deptcountry.selectedIndex==0)
    {
    alert("Please enter your departure country"); 
    }
  if(document.Flightreserve.arrivalcountry.selectedIndex==0)
  {
      alert("Please  enter your arrival country");
  }
  if (document.Flightreserve.travelclass.selectedIndex==0)
  {
      alert("Please enter your travel class");
  }
  if (document.Flightreserve.Numberofadults.selectedIndex==0)
  {
      alert("Please enter the number of adults");
  }
  if(document.Flightreserve.Numberofkids.selectedIndex==0)
  {
   alert("Please enter the number of kids");
  }
  if(document.Flightreserve.depdate.value==null || document.Flightreserve.depdate.value=='')
    {
        alert("Departure date is empty.Please enter a date");
    }
    if(document.Flightreserve.returndate.value==null || document.Flightreserve.returndate.value=='')
    {
        alert("flight return date is empty.Please enter a return date");
    }  
 }
 function signupvalidate()
 {
  if(document.signup.first.value=="")
  {
   alert("Please enter your first name");
  }
  if(document.signup.last.value=="")
  {
     alert("Please enter your last name");
  }
if(document.signup.user.value=="")
{
    alert("Please enter your user name");
}
if(document.signup.type.selectedIndex==0)
{
   alert("Please enter the type of your account"); 
}

var psw=document.signup.pass.value;
var confrimpsw=document.signup.loguname.value;
 if(psw!=confrimpsw)
 {
     alert("Please retype your password correctly");
 }
}
function flightreservevalidate()
{
    if((!document.flightreserve2.triptype1[0].checked)&&(!document.flightreserve2.triptype1[1].checked)&&(!document.flightreserve2.triptype1[2].checked))
    {
    alert("Please tic a option accorading to the your trip type")    
    }
    if(document.flightreserve2.loguname.value=0)
    {
        alert("Please enter your full name");
    }
  if(document.flightreserve2.deptcountry1.selectedIndex==0)
  {
     alert("Please enter your depature country acoording to flight reservation"); 
  } 
  if(document.flightreserve2.arrivalcountry1.selectedIndex==0)
  {
     alert("Please enter your arrival country acoording to flight reservation"); 
  } 
  if(document.flightreserve2.travelclass1.selectedIndex==0)
  {
     alert("Please select a  travel class"); 
  } 
  if(document.flightreserve2.noofadults.selectedIndex==0)
  {
     alert("Please select the number of adults"); 
  } 
  if(document.flightreserve2.noofkids.selectedIndex==0)
  {
     alert("Please select the number of kids"); 
  } 
  if(document.flightreserve2.yourcountry.selectedIndex==0)
  {
     alert("Please select your country"); 
  }
  window.location.href=" flightreservation.html";
}
  function paymentvalidate(inputText)
{
var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
if(!(inputText.value.match(mailformat)))
{
alert("You have entered an invalid email address!");
}
if(document.paymentdetails.cardtype.selectedIndex==0)
  {
     alert("Please select your cardtype"); 
  }
}

 



