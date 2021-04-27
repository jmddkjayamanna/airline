/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kreshan Jayamannna
 */
@WebServlet(name = "reserve", urlPatterns = {"/reserve"})
public class reserve extends HttpServlet {

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
        processRequest(request, response);
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
        //processRequest(request, response);
        String triptype=request.getParameter("triptype1");
        String fname=request.getParameter("fname");
        int id=Integer.parseInt(request.getParameter("id"));
        String email=request.getParameter("email");
        String depcountry=request.getParameter("deptcountry1");
        String aricountry=request.getParameter("arrivalcountry1");
        String travelclass=request.getParameter("travelclass1");
        int adults=Integer.parseInt(request.getParameter("noofadults"));
        int kids=Integer.parseInt(request.getParameter("noofkids"));
        String country=request.getParameter("yourcountry");
        String ddate=request.getParameter("depdate");
        String rdate=request.getParameter("retdate");
        int seats=adults+kids;
        
        
           connection p=new connection();
           p.addReserve( fname,depcountry,aricountry,travelclass,adults,kids,country,ddate,rdate,id,email,triptype,seats);
           
           response.sendRedirect("flightreservation.html");
          
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
