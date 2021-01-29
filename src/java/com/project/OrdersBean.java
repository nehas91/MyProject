/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project;

/**
 *
 * @author lenovo
 */
public class OrdersBean {
    

    private String dated ,userid ,emailid, name,address,pdesc;
    private int orderid,totalprice;
    
    public OrdersBean()
    {
        userid=emailid=name=address=pdesc=null;
        orderid= totalprice=0;
        
    }

    public OrdersBean(String dated, String userid, String emailid, String name, String address, String pdesc, int orderid, int totalprice) {
        this.dated = dated;
        this.userid = userid;
        this.emailid = emailid;
        this.name = name;
        this.address = address;
        this.pdesc = pdesc;
        this.orderid = orderid;
        this.totalprice = totalprice;
    }

    
    
    
    
    public void setDated(String dated) {
        this.dated = dated;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public void setTotalprice(int totalprice) {
        this.totalprice = totalprice;
    }

    public String getDated() {
        return dated;
    }

    public String getUserid() {
        return userid;
    }

    public String getEmailid() {
        return emailid;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPdesc() {
        return pdesc;
    }

    public int getOrderid() {
        return orderid;
    }

    public int getTotalprice() {
        return totalprice;
    }

 

    

}
