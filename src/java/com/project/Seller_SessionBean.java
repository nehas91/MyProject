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
public class Seller_SessionBean {
    
    private int userid,Mobileno ;
    private String username ,shopname , proof_of_id,proof_id_no 
            , GSTIN ,Address ,state ,password ;

    public Seller_SessionBean()
    {
      username =shopname = proof_of_id = proof_id_no =GSTIN =Address =state =password =null;
       Mobileno=userid=0;
        
    }

    public void setMobileno(int Mobileno) {
        this.Mobileno = Mobileno;
    }

    public int getMobileno() {
        return Mobileno;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

   

    public void setProof_of_id(String proof_of_id) {
        this.proof_of_id = proof_of_id;
    }

    public void setProof_id_no(String proof_id_no) {
        this.proof_id_no = proof_id_no;
    }

    public void setGSTIN(String GSTIN) {
        this.GSTIN = GSTIN;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Seller_SessionBean(int userid, String username, String shopname, int Mobileno , String proof_of_id, String proof_id_no, String GSTIN, String Address, String state, String password) {
        this.userid = userid;
        this.username = username;
        this.shopname = shopname;
        this.Mobileno = Mobileno;
        this.proof_of_id = proof_of_id;
        this.proof_id_no = proof_id_no;
        this.GSTIN = GSTIN;
        this.Address = Address;
        this.state = state;
        this.password = password;
    }

    public int getUserid() {
        return userid;
    }

    public String getUsername() {
        return username;
    }

    public String getShopname() {
        return shopname;
    }

 

    public String getProof_of_id() {
        return proof_of_id;
    }

    public String getProof_id_no() {
        return proof_id_no;
    }

    public String getGSTIN() {
        return GSTIN;
    }

    public String getAddress() {
        return Address;
    }

    public String getState() {
        return state;
    }

    
    
   
    
}
