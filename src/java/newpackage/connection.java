/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author hp
 */
public class connection {

    Connection con;
Statement st;
    void addSub(String email) {
    try {
        connectDB();
        String sql="insert into subscription values('"+email+"')";
        st.executeUpdate(sql);
    } catch (SQLException ex) {
        Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
    }
    
    }
    public void connectDB(){
    try {
        Class.forName("com.mysql.jdbc.Driver");
        
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
       st=con.createStatement();
    } catch (ClassNotFoundException | SQLException  ex) {
        Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
    }
        
    }

    void addLogin(String loguname, String logpass, String logtype) {
         try {
        connectDB();
        
        String sql="insert into subscription values('"+loguname+"','"+logpass+"','"+logtype+"')";
        st.executeUpdate(sql);
    } catch (SQLException ex) {
        Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
    }
    
    }

    void addSign(String first, String last, String uname, String type, String password,String grade,String email,int id) {
            try {
        connectDB();
        
         if(type.equals("Staff")){
           String sql="insert into checkstaff values('"+first+"','"+last+"','"+type+"','"+password+"','"+uname+"','"+grade+"','"+email+"','"+id+"')";
        st.executeUpdate(sql);
        
        }
         else if(type.equals("User")){
            String sql="insert into userlogin values('"+first+"','"+last+"','"+type+"','"+password+"','"+uname+"','"+email+"','"+id+"')";
        st.executeUpdate(sql); 
        }
         
    } catch (SQLException ex) {
        Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
    }
    }
    
    public User userlogin(String logtype,String loguname, String logpass) throws SQLException,
            ClassNotFoundException {
       
        connectDB();
        String sql = "SELECT * FROM userlogin WHERE username = ? and password = ?";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, loguname);
        statement.setString(2, logpass);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
 
        if (result.next()) {
            user = new User();
            user.setType(result.getString("type"));
            user.setUsername(loguname);
        }
       
        con.close();
 
        return user;
    }
      public Admin adminlogin(String logtype,String loguname, String logpass) throws SQLException,
            ClassNotFoundException {
       
        connectDB();
        String sql = "SELECT * FROM adminlogin WHERE username = ? and password = ?";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, loguname);
        statement.setString(2, logpass);
 
        ResultSet result = statement.executeQuery();
 
        Admin admin = null;
 
        if (result.next()) {
            admin = new Admin();
            admin.setType(result.getString("type"));
            admin.setUsername(loguname);
        }
       
        con.close();
 
        return admin;
    }
       public Staff stafflogin(String logtype,String loguname, String logpass,String grade) throws SQLException,
            ClassNotFoundException {
       
        connectDB();
        String sql = "SELECT * FROM stafflogin WHERE username = ? and password = ? ";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, loguname);
        statement.setString(2, logpass);
       
        ResultSet result = statement.executeQuery();
 
        Staff staff = null;
 
        if (result.next()) {
            staff = new Staff();
            staff.setType(result.getString("type"));
            staff.setUsername(loguname);
        }
       
        con.close();
 
        return staff;
    }

    List  checkflight( String flyfrom, String flyto, String tclass, String ddate, String rdate) throws SQLException {
         
           connectDB();
           String sql="Select*from checkflights ";
           List flist=new ArrayList();
           try{
               ResultSet rs=st.executeQuery(sql);
               while(rs.next())
               {
                  flist.add(rs.getString("origin"));
                  flist.add(rs.getString("destination"));
                  flist.add(rs.getString("depdate"));
                  flist.add(rs.getString("retdate"));
                  flist.add(rs.getString("class"));
               }
           }catch(Exception e)
           {
               
           }
    return flist;
    
    }

    void addReserve(String fname, String depcountry, String aricountry, String travelclass, int adults, int kids, String country, String ddate, String rdate,int id,String email,String triptype,int seats) {
       connectDB();
       String sql="insert into reseravation values('"+fname+"','"+depcountry+"','"+aricountry+"','"+travelclass+"','"+adults+"','"+kids+"','"+country+"','"+ddate+"','"+rdate+"','"+id+"','"+email+"','"+triptype+"','"+seats+"')";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    void updateticket(int ticketno, String passengername, int seatno, String boardtime, String depdate, int flightno, String tclass) {
        connectDB();
        String sql="update ticket set Seat_No="+seatno+",Class='"+tclass+"',Boarding_time='"+boardtime+"',flight_No="+flightno+",Passengername='"+passengername+"',depdate='"+depdate+"'where ID="+ticketno+"";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void Deleteticket(int ticketno) {
       connectDB();
       String sql="Delete from ticket where ID="+ticketno+"";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void Addticket(int ticketno, String passengername, int seatno, String boardtime, String depdate, int flightno, String tclass) {
       connectDB();
       String sql="Insert into ticket values("+ticketno+","+seatno+",'"+tclass+"','"+boardtime+"',"+flightno+",'"+passengername+"','"+depdate+"');";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     void updateflight(String flightid, String origin, String destination, String depdate1, String retdate1, String tclass1, String tript) {
        connectDB();
        String sql="update flight set origin='"+origin+"',destination='"+destination+"',depdate='"+depdate1+"',retdate='"+retdate1+"',triptype='"+tript+"',class='"+tclass1+"'where ID='"+flightid+"'";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    void Addflight(String flightid, String origin, String destination, String depdate1, String retdate1, String tclass1, String tript) {
        connectDB();
        String sql="Insert into flight values('"+origin+"','"+destination+"','"+depdate1+"','"+retdate1+"','"+flightid+"','"+tript+"','"+tclass1+"');";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void Deleteflight(String flightid) {
        connectDB();
        String sql="delete from flight where id='"+flightid+"'";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    

    
      
    User2 userlogin2(String loguname, String logpass)  throws SQLException,
            ClassNotFoundException {
       
        connectDB();
        String sql = "SELECT * FROM userlogin WHERE username = ? and password = ?";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setString(1, loguname);
        statement.setString(2, logpass);
 
        ResultSet result = statement.executeQuery();
 
        User2 user = null;
 
        if (result.next()) {
            user = new User2();
            user.setType(result.getString("type"));
            user.setUsername(loguname);
        }
       
        con.close();
 
        return user;
    }

    void updateuprofile(int id, String fn, String ln, String un, String mail, String pss) {
       
     connectDB();
          String sql="update userlogin set FirstName='"+fn+"',lastname='"+ln+"',username='"+un+"',email='"+mail+"',password='"+pss+"'where id='"+id+"'"; 
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }

    void Updater(int id, String tc, int ad, int ki, String depd, String retd, String tt,int seat) {
         connectDB();
        String sql="update reseravation set triptype='"+tt+"',travelc='"+tc+"',adults="+ad+",kids="+ki+",depdate='"+depd+"',retdate='"+retd+"',seats="+seat+" where id="+id+"";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void addstaff(String first, String last, String uname, String type, String password, String grade, String email, int id) {
      
        try {connectDB();
      String sql="insert into stafflogin values('"+first+"','"+last+"','"+type+"','"+password+"','"+uname+"','"+grade+"','"+email+"','"+id+"')";
            st.executeUpdate(sql);
                    } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void Addflight2(String flightid, String origin, String destination, String depdate1, String retdate1, String tclass1, String tript) {
        connectDB();
        String sql="Insert into flight values('"+origin+"','"+destination+"','"+depdate1+"','"+retdate1+"','"+flightid+"','"+tript+"','"+tclass1+"');";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void addReserve2(String fname, String depcountry, String aricountry, String travelclass, int adults, int kids, String country, String ddate, String rdate, int id, String email, String triptype, int seats) {
        connectDB();
       String sql="insert into reseravation values('"+fname+"','"+depcountry+"','"+aricountry+"','"+travelclass+"',"+adults+","+kids+",'"+country+"','"+ddate+"','"+rdate+"',"+id+",'"+email+"','"+triptype+"',"+seats+")";
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void updateuprofile2(int id, String fn, String ln, String un, String mail, String pss) {
             connectDB();
          String sql="update userlogin set FirstName='"+fn+"',lastname='"+ln+"',username='"+un+"',email='"+mail+"',password='"+pss+"'where id='"+id+"'"; 
        try {
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
    
    

    
        

    

 
   





       
        
    

       
        
    

   
    

   
 


        
    
    
    

