/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // processRequest(request, response);
            response.setContentType("text/html");
            PrintWriter out=response.getWriter();
            String loguname=request.getParameter("loguname");
            String logpass=request.getParameter("logpass");
            String logtype=request.getParameter("logtype");
            String grade=request.getParameter("grade");
            HttpSession s1=request.getSession(true);
             s1.setAttribute("uname",loguname);
            if(logtype.equals("User")){
            connection co=new connection();
            User user=co.userlogin(logtype,loguname,logpass);
           
            String page="Home.html";
            if(user!=null){
                
                response.sendRedirect("homeUser.jsp");
    
            }
            else{
               
            RequestDispatcher rs=request.getRequestDispatcher(page);
            rs.include(request,response);}}
            
             if(logtype.equals("Admin")){
            connection co1=new connection();
            Admin admin=co1.adminlogin(logtype,loguname,logpass);
            String page="Home.html";
            if(admin!=null){
               response.sendRedirect("homeAdmin.jsp");
            }
            else{
               RequestDispatcher rs=request.getRequestDispatcher(page);
            rs.forward(request,response);}
            }
           
                     
                     
                     if(logtype.equals("Staff") && grade.equals("grade 2")){
            connection co1=new connection();
            Staff staff=co1.stafflogin(logtype,loguname,logpass,grade);
            String page="Home.html";
            if(staff!=null){
                  response.sendRedirect("homeStaff2.jsp");
               
            }
            
            else{
              RequestDispatcher rs=request.getRequestDispatcher(page);
            rs.forward(request,response);}
            }
            
                      if(logtype.equals("Staff") && grade.equals("grade 1")){
            connection co1=new connection();
            Staff staff=co1.stafflogin(logtype,loguname,logpass,grade);
            String page="Home.html";
            if(staff!=null){
                 response.sendRedirect("homeStaff1.jsp");
                
            }
            
            else{
                RequestDispatcher rs=request.getRequestDispatcher(page);
            rs.forward(request,response);}
            }
           
                     
                     
                     
                           
                    
        } catch (SQLException |ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } 
        

        } 
        
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
