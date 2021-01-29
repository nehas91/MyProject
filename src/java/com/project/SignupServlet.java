
package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import sun.security.provider.MD5;

/**
 *
 * @author lenovo
 */
public class SignupServlet extends HttpServlet {

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
      String userId=request.getParameter("userId");
      String userName=request.getParameter("userName");
      String userEmail=request.getParameter("userEmail");
      
      

  
      
      String userPhone=request.getParameter("userPhone");
      String userAddress=request.getParameter("userAddress");
      String userpassword=request.getParameter("userPassword");
      String cpassword=request.getParameter("cpassword");
     
      // cpassword=Encrypt_Decrypt.encode(cpassword);
      PrintWriter out=response.getWriter();
         if(!userpassword.equals(cpassword))
     {
            out.println("password and conform password must be equal");
            return;
        }
         
         userpassword=Encrypt_Decrypt.encode(userpassword);
    // cpassword=Encrypt_Decrypt.encode(cpassword);
      String sql = String.format("insert into users values('%s','%s','%s','%s','%s','%s')",userId,userName,userEmail,userPhone,userAddress,userpassword);
       try{
            ResultSet rs=DatabaseBean.executeQuery(sql);
            if(rs.next())
            {
                DatabaseBean.commit();
                SessionBean sb=new SessionBean( userId,  userName,  userEmail, userPhone,  userAddress,  userpassword);
                               
                
                HttpSession session=request.getSession(true);
                                
                session.setAttribute("message","Registration successful " +userName);
                
                getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
                
               
            }
            else{
                out.println("access denies ,try again");
            }    
        }
        catch(Exception se)
        {
            out.println("process request" +se.toString());
        }   
    
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
        processRequest(request, response);
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
