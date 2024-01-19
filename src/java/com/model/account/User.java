/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.account;

import java.util.Date;
import java.util.List;

/**
 *
 * @author kat1002
 */
public class User extends Account{
    
    private String fullName;
    private String phoneNumber;
    private String email;
    private int gender;
    private Date dob;
    private List<Integer> discounts;
    
    public User(int id, String username, String password) {
        super(id, username, password, 0);
    }

    public User( int id, String username, String password, int role, String fullName, String phoneNumber, String email, int gender, Date dob) {
        super(id, username, password, role);
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.gender = gender;
        this.dob = dob;
    }
    
    @Override
    public String getRole() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getPage() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean checkRole(String url) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public String getButton() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public void addDiscount(int id){
        discounts.add(id);
    }
}
