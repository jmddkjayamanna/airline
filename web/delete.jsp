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
 int id=Integer.parseInt(request.getParameter("d"));
 Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline","root","");
        String sql="delete from checkstaff where id='"+id+"'";
        Statement st=con.createStatement();
        st.executeUpdate(sql);
        response.sendRedirect("checku.jsp");
 

%>
