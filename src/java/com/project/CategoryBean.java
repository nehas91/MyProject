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
public class CategoryBean {

    private String categoryId ,categoryTitle ,categoryDescription,dated;
    
    public CategoryBean()
    {
        categoryId=categoryTitle=categoryDescription=dated=null;
    }

    public CategoryBean(String categoryId, String categoryTitle, String categoryDescription) {
        this();
        this.categoryId = categoryId;
        this.categoryTitle = categoryTitle;
        this.categoryDescription = categoryDescription;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public String getDated() {
        return dated;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public void setDated(String dated) {
        this.dated = dated;
    }
    
    
    

}
