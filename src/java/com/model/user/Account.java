/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.user;

import java.util.Date;

/**
 *
 * @author kat1002
 */
public abstract class Account {
    private int id;
    private String username;
    private String password;
    private int role;

    public Account(int id, String username, String password, int role) {
        setId(id);
        setUsername(username);
        setPassword(password);
        setRole(role);
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
    
    public abstract String getRole();
    public abstract String getPage();
    public abstract boolean checkRole(String url);
    public abstract String getButton();
    
    
    
}
