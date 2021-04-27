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
 int id=Integer.parseInt(request.getParameter("i"));
 String fname=request.getParameter("ib");
 String lname=request.getParameter("ic");
 String type=request.getParameter("id");
 String uname=request.getParameter("ie");
 String email=request.getParameter("ig");
 String pass=request.getParameter("ih");
 Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        
           Statement st=con.createStatement();
           String sql="insert into userlogin values('"+fname+"','"+lname+"','"+type+"','"+pass+"','"+uname+"','"+email+"','"+id+"')";
            st.executeUpdate(sql); 
            
            String sql2="delete from blockuser where id='"+id+"'";
             st.executeUpdate(sql2);
            response.sendRedirect("bnuuser.jsp");
 

%>
