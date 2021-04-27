<%-- 
    Document   : delete
    Created on : Apr 25, 2021, 11:20:49 PM
    Author     : Kreshan Jayamannna
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%
 int id=Integer.parseInt(request.getParameter("a"));
 String fname=request.getParameter("b");
 String lname=request.getParameter("c");
 String type=request.getParameter("d");
 String uname=request.getParameter("e");
 String grade=request.getParameter("f");
 String email=request.getParameter("g");
 String pass=request.getParameter("h");
 Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        
           Statement st=con.createStatement();
           String sql="insert into stafflogin values('"+fname+"','"+lname+"','"+type+"','"+pass+"','"+uname+"','"+grade+"','"+email+"','"+id+"')";
            st.executeUpdate(sql); 
            
            String sql2="delete from checkstaff where id='"+id+"'";
             st.executeUpdate(sql2);
            response.sendRedirect("checku.jsp");
 

%>
