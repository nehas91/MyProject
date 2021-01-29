/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author lenovo
 */
public class SessionBean {
    private String userId,userName,userEmail,userPhone,userAddress,userPassword,dated;

    public SessionBean()
    {
     userId=userName=userEmail=userPhone=userAddress=userPassword=dated=null;    
    }
        
    public SessionBean(String userId, String userName, String userEmail, String userPhone, String userAddress, String userPassword) {
        this();
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userPassword = userPassword;
       
    }

    public String getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public String getDated() {
        return dated;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public void setDated(String dated) {
        this.dated = dated;
    }
    
    
    public static ArrayList<SessionBean> getUsers()
    {
       JOptionPane.showMessageDialog(null, "1");
        ArrayList<SessionBean>al=new ArrayList<>();
          JOptionPane.showMessageDialog(null, "2");
        String sql=String.format("select * from users");
          JOptionPane.showMessageDialog(null, "3");
        
        try {
              JOptionPane.showMessageDialog(null, "4");
            ResultSet rs=DatabaseBean.executeQuery(sql);
            if(rs==null)
            {
                  JOptionPane.showMessageDialog(null, "5");
                System.out.println("sorry! no users found");
            }
            
              JOptionPane.showMessageDialog(null, "6");
            
            String userId="" ,userName="", userEmail="" ,userPhone="" ,userAddress ="",userPassword ="";
              JOptionPane.showMessageDialog(null, "7");
            while(rs.next())
            {
                  JOptionPane.showMessageDialog(null, "8");
              userId=rs.getString("userId");
              userName=rs.getString("userName");
              userEmail=rs.getString("userEmail");
              userPhone=rs.getString("userPhone");
              userAddress=rs.getString("userAddress");
              userPassword=rs.getString("userPassword"); 
            }

             // now create object of sessionBean and pass above local variables into it
             
             SessionBean sb=new SessionBean(userId, userName, userEmail, userPhone, userAddress, userPassword);
             
          JOptionPane.showMessageDialog(null, "9");
             
             al.add(sb);
            
        } catch (Exception e) {
            
            JOptionPane.showMessageDialog(null,  "[SessionBean.getuser]"+e.toString());
            return null;
        }
        return al;
    }
   
}
