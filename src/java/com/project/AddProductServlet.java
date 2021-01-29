/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author lenovo
 */
public class AddProductServlet extends HttpServlet {

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
        System.out.println("hi");
            
      String pid=request.getParameter("pid");
      String ptitle=request.getParameter("ptitle");
      String pdesc =request.getParameter("pdesc");
      String pphoto=request.getParameter("pphoto");
      String pseller=request.getParameter("pseller");
      int pprice=Integer.parseInt(request.getParameter("pprice"));
      int pdiscount=Integer.parseInt(request.getParameter("pdiscount"));
      int pquantity=Integer.parseInt(request.getParameter("pquantity"));
      String categoryid=request.getParameter("categoryid");
      
      PrintWriter out=response.getWriter();
    
    
      String sql = String.format("insert into product values('%s','%s','%s','%s','%s','%d','%d','%d','%s')",pid,ptitle,pdesc,pphoto,pseller,pprice,pdiscount,pquantity,categoryid);
       try{
            ResultSet rs=DatabaseBean.executeQuery(sql);
            if(rs.next())
            {
                ProductBean pb=new ProductBean(pid, ptitle, pdesc, pphoto, pseller, pprice, pdiscount, pquantity, categoryid);
                
                JOptionPane.showMessageDialog(null,"Successful product added");
             //   DatabaseBean.commit();
                out.print("success tilu");
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
