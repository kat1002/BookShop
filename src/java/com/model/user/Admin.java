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
public class Admin extends Account{
    
    public Admin(int id, String username, String password, String fullName, String phoneNumber, String email, int gender, Date dob, int role) {
        super(id, username, password, fullName, phoneNumber, email, gender, dob, role);
    }
    
}
