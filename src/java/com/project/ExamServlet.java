/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author lenovo
 */
public class ExamServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        //response.setContentType("text/html");  
        //out.println("<script type=\"text/javascript\">");  
//out.println("alert('deadbeef');");  
//out.println("</script>");      

        String op = request.getParameter("op");

        if (op != null) {
            performOperation(op, request, response);
            return;  // terminate function
        }

        String userName = request.getParameter("userName");
        String userPassword = request.getParameter("userPassword");

        //---------- password encryption logic ---------------------------
        //  HttpSession session=request.getSession();
        // it will encode the password with which we are familiar with 
        // and we are having the necoded password in the database
        userPassword = Encrypt_Decrypt.encode(userPassword);

        //    String otp1=otp.generateOTP();
        // PrintWriter out = response.getWriter();  
        String sql = String.format("select * from users where userName='%s' and userPassword='%s'", userName, userPassword);
        try {

            ResultSet rs = DatabaseBean.executeQuery(sql);

            if (rs.next()) {

                //making object sb of sessionBean
                String userId = rs.getString("userId");
                String userEmail = rs.getString("userEmail");
                String userPhone = rs.getString("userPhone");
                String userAddress = rs.getString("userAddress");

                SessionBean sb = new SessionBean(userId, userName, userEmail, userPhone, userAddress, userPassword);

                //create cookie and httpsession object
                Cookie c1 = new Cookie("sb", sb.toString());

                //valid for 1 day
                c1.setMaxAge(24 * 60 * 60);

                //create a new session for the client if not already exit
                // here first time the session is created
                HttpSession session = request.getSession(true);

                session.setAttribute("sb", sb);

                // manually setted the user
                if (userName.equals("Hitesh Tilwani") && userPassword.equals("MTIzNDU=")) {
                    getServletContext().getRequestDispatcher("/Admin-index.html").forward(request, response);
                    return;
                }
                //System.out.println("Ok");

                getServletContext().getRequestDispatcher("/MainPage.jsp").forward(request, response);
                //  JOptionPane.showMessageDialog(null,userid);
                //     response.sendRedirect("MainPage.html");

            } else {
                //in case user not found then redirect to login page

                //do not keep previos request rresponse
                response.sendRedirect("Login.jsp");

            }

        } catch (Exception se) {
            out.println("process request" + se.toString());
        }

    }

    private void performOperation(String op, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        switch (op) {
            case "3":
                Logout(request, response);
                break;
            case "4":
                Order(request, response);
                break;
            case "5":
                Seller_registration(request, response);
                break;
            case "6":
                Seller_login(request,response);
                 break;
            case "7":
                Seller_Add_Product(request,response);
                break;
            case "8":
                Seller_logout(request,response);
                break;
            case "10":
                Seller_Delete_Product(request,response);
               
        }
    }

    private void Logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        session.removeAttribute("sb");
        session.invalidate();
        response.sendRedirect("Logout.jsp");
    }

    private void Order(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userid = request.getParameter("userid");
        String emailid = request.getParameter("emailid");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        int TotalPrice = Integer.parseInt(request.getParameter("TotalPrice"));
        String pdesc = request.getParameter("pdesc");

        PrintWriter out = response.getWriter();

        String sql = String.format("insert into orders values(orderid_seq.nextval,sysdate,'%s','%s','%s','%s','%d','%s')", userid, emailid, name, address, TotalPrice, pdesc);

        try {

            ResultSet rs = DatabaseBean.executeQuery(sql);

            out.println(rs);
            if (rs.next()) {
                      DatabaseBean.commit();
           
                getServletContext().getRequestDispatcher("/Orders.jsp").forward(request, response);

            } else {
                out.println("access denies ,try again");
            }
        } catch (Exception se) {
            out.println("process request" + se.toString());
        }

    }

    private void Seller_registration(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
//PrintWriter out = response.getWriter();
        
        PrintWriter out=response.getWriter();
        
       
        int userId = Integer.parseInt(request.getParameter("userId"));
        String Username = request.getParameter("userName");
        String shopName = request.getParameter("shopName");
        int Mobileno = Integer.parseInt(request.getParameter("mobile"));
        String proof_of_id = request.getParameter("id_name");
        String proof_id_no = request.getParameter("id_no");
        String GSTIN = request.getParameter("GSTIN_no");
        String Address = request.getParameter("address");
        String state = request.getParameter("state");
        String password = request.getParameter("password");
        String conformPassword = request.getParameter("conformpassword");
   //out.print("hii");
        // userid_seq.nexval
        if(!password.equals(conformPassword))
     {
            out.println("password and conform password must be equal");
            return;
        }
    // cpassword=Encrypt_Decrypt.encode(cpassword);
      String sql = String.format("insert into Seller values('%d', '%s' ,'%s' ,'%d' , '%s' , '%s' , '%s' , '%s' , '%s' , '%s' )", 
              userId , Username , shopName ,Mobileno, proof_of_id , proof_id_no 
              , GSTIN ,Address, state, password );
        try {

            ResultSet rs = DatabaseBean.executeQuery(sql);

            
            
            if (rs.next()) {
                
                
                DatabaseBean.commit();
                
        Seller_SessionBean ss=new Seller_SessionBean(userId, Username, shopName, Mobileno, proof_of_id, proof_id_no, GSTIN, Address, state, password);
                
                HttpSession session=request.getSession(true);
                               // DatabaseBean.commit();
          //     session.setAttribute("message","Registration successful " +Username);
               
//RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
//rd.include(request, response);

               
           
                getServletContext().getRequestDispatcher("/message2.jsp").forward(request, response);
                
               
                //making object sb of sessionBean
       

    }
        }catch(Exception e)
        {
           out.print("process request" +e);
        }
    }
    
    
        private void Seller_login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            PrintWriter out=response.getWriter();
            
            String userName = request.getParameter("username");
        String userPassword = request.getParameter("password");

        //---------- password encryption logic ---------------------------
        //  HttpSession session=request.getSession();
        // it will encode the password with which we are familiar with 
        // and we are having the necoded password in the database
     //   userPassword = Encrypt_Decrypt.encode(userPassword);

        //    String otp1=otp.generateOTP();
        // PrintWriter out = response.getWriter();  
        String sql = String.format("select * from seller where username='%s' and password='%s'", userName, userPassword);
        try {

            ResultSet rs = DatabaseBean.executeQuery(sql);

            if (rs.next()) {

                //making object sb of sessionBean
        int userId = rs.getInt("userId");
     
        String shopName = rs.getString("shopName");
        int Mobileno = rs.getInt("mobileno");
        String proof_of_id = rs.getString("proof_of_id");
        String proof_id_no = rs.getString("proof_id_no");
        String GSTIN = rs.getString("GSTIN");
        String Address = rs.getString("address");
        String state = rs.getString("state");
     
                Seller_SessionBean ss=new Seller_SessionBean(userId, userName, shopName, Mobileno, proof_of_id, proof_id_no, GSTIN, Address, state, userPassword);
                
        //create cookie and httpsession object
             Cookie c1 = new Cookie("ss", ss.toString());

                //valid for 1 day
                c1.setMaxAge(24 * 60 * 60);

                //create a new session for the client if not already exit
                // here first time the session is created
                HttpSession session = request.getSession(true);

                session.setAttribute("ss", ss);

               
                //System.out.println("Ok");

                getServletContext().getRequestDispatcher("/Seller-Your_Shop.jsp").forward(request, response);
                //  JOptionPane.showMessageDialog(null,userid);
                //     response.sendRedirect("MainPage.html");

            } else {
                //in case user not found then redirect to login page

                //do not keep previos request rresponse
                response.sendRedirect("Seller-StartPage.jsp");

            }

        } catch (Exception se) {
            out.println("process request" + se.toString());
        }
            
            
        
        }
        
        
        
         private void Seller_Add_Product(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
             
             
        int userid =  Integer.parseInt(request.getParameter("userid"));
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        int mobileno = Integer.parseInt(request.getParameter("mobileno"));
        int price= Integer.parseInt(request.getParameter("price"));
        String pdesc = request.getParameter("pdesc");

        PrintWriter out = response.getWriter();

        String sql = String.format("insert into sellerpro values(pid_seq.nextval,sysdate,'%d','%s','%s','%d','%d','%s')", userid,username,address,mobileno,price,pdesc);

        try {

            ResultSet rs = DatabaseBean.executeQuery(sql);

                        if (rs.next()) {
            DatabaseBean.commit();
                            

                getServletContext().getRequestDispatcher("/Seller-Your_Shop.jsp").forward(request, response);

            } else {
                out.println("access denies ,try again");
            }
        } catch (Exception se) {
            out.println("process request" + se.toString());
        }
    
             
             
         }
         
           private void Seller_logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        session.removeAttribute("ss");
        session.invalidate();
        response.sendRedirect("Seller-StartPage.jsp");
    }
           
           
           private void Seller_Delete_Product(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           int pid=Integer.parseInt(request.getParameter("pid"));
           
            PrintWriter out = response.getWriter();

        String sql = String.format("delete from sellerpro where pid='%d'",pid);

        try {

            ResultSet rs = DatabaseBean.executeQuery(sql);

                        if (rs.next()) {
            DatabaseBean.commit();
            
                getServletContext().getRequestDispatcher("/Seller-Your_Shop.jsp").forward(request, response);

            } else {
                out.println("access denies ,try again");
            }
        } catch (Exception se) {
            out.println("process request" + se.toString());
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
