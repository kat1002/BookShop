/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.account;

import com.model.address.Address;
import java.util.Date;

/**
 *
 * @author kat1002
 */
public class Account {
    private int id;
    private String username;
    private String password;
    private String fullname;
    private String email;
    private int role;
    
    public Account(){}
    
    public Account(int id, String username, String password, String fullname, String email, int role) {
        setId(id);
        setUsername(username);
        setPassword(password);
        setRole(role);
        setFullname(fullname);
        setEmail(email);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(int role) {
        this.role = role;
    }
    
    public int getRole(){
        return role;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getRoleName(){
        if(role == 0) return "Customer";
        return "Admin";
    }
    
}
