/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;

import com.model.account.AccountDAO;
import com.model.book.BookDAO;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author kat1002
 */
public class WebManager {
    AccountDAO accountDAO;
    BookDAO bookDAO;
    
    private static WebManager instance;
    
    private WebManager(){
        accountDAO = new AccountDAO();
        bookDAO = new BookDAO();
    }
    
    public static WebManager getInstance(){
        if(instance == null) instance = new WebManager();
        
        return instance;
    }
}
