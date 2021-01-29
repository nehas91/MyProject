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
public class ProductBean {
    
      private String pid, ptitle,pdesc,pphoto,pseller,categoryid;          
      private int pprice,pdiscount,pquantity;

      public ProductBean()
      {
          pid=ptitle=pdesc=pphoto=pseller=categoryid=null;
          pprice=pdiscount=pquantity=0;
      }
      
      
      
      
    public ProductBean(String pid, String ptitle, String pdesc, String pphoto, String pseller, int pprice, int pdiscount, int pquantity, String categoryid) {
        this();
        this.pid = pid;
        this.ptitle = ptitle;
        this.pdesc = pdesc;
        this.pphoto = pphoto;
        this.pseller = pseller;
        this.pprice = pprice;
        this.pdiscount = pdiscount;
        this.pquantity = pquantity;
        this.categoryid = categoryid;
    }

    public String getPid() {
        return pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public String getPdesc() {
        return pdesc;
    }

    public String getPphoto() {
        return pphoto;
    }

    public String getPseller() {
        return pseller;
    }

    public String getCategoryid() {
        return categoryid;
    }

    public int getPprice() {
        return pprice;
    }

    public int getPdiscount() {
        return pdiscount;
    }

    public int getPquantity() {
        return pquantity;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public void setPphoto(String pphoto) {
        this.pphoto = pphoto;
    }

    public void setPseller(String pseller) {
        this.pseller = pseller;
    }

    public void setCategoryid(String categoryid) {
        this.categoryid = categoryid;
    }

    public void setPprice(int pprice) {
        this.pprice = pprice;
    }

    public void setPdiscount(int pdiscount) {
        this.pdiscount = pdiscount;
    }

    public void setPquantity(int pquantity) {
        this.pquantity = pquantity;
    }
    
}
