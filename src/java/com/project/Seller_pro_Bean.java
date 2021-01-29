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
public class Seller_pro_Bean {
    
    private int pid,userid,price,mobileno;
    private String dated,username,address,pdesc;
    
    public Seller_pro_Bean()
    {
        pid=userid=price=mobileno=0;
        dated=username=address=pdesc=null;
        
    }
    
    

    public Seller_pro_Bean(int pid, int userid, int price, int mobileno, String dated, String username, String address, String pdesc) {
        this.pid = pid;
        this.userid = userid;
        this.price = price;
        this.mobileno = mobileno;
        this.dated = dated;
        this.username = username;
        this.address = address;
        this.pdesc = pdesc;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setMobileno(int mobileno) {
        this.mobileno = mobileno;
    }

    public void setDated(String date) {
        this.dated = dated;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public int getPid() {
        return pid;
    }

    public int getUserid() {
        return userid;
    }

    public int getPrice() {
        return price;
    }

    public int getMobileno() {
        return mobileno;
    }

    public String getDated() {
        return dated;
    }

    public String getUsername() {
        return username;
    }

    public String getAddress() {
        return address;
    }

    public String getPdesc() {
        return pdesc;
    }

    
    
}
