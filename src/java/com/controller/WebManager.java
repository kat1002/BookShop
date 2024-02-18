/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;

import com.model.category.CategoryDAO;
import com.model.account.AccountDAO;
import com.model.author.AuthorDAO;
import com.model.book.BookDAO;
import com.model.category.Category;
import com.model.order.OrderDAO;
import com.model.order.OrderDetailDAO;
import com.model.publisher.PublisherDAO;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Flow.Publisher;

/**
 *
 * @author kat1002
 */
public class WebManager {
    public AccountDAO accountDAO;
    public BookDAO bookDAO;
    public OrderDAO orderDAO;
    public OrderDetailDAO orderDetailDAO;
    public CategoryDAO categoryDAO;
    public AuthorDAO authorDAO;
    public PublisherDAO publisherDAO;
    
    private static WebManager instance;
    
    private WebManager(){
        accountDAO = new AccountDAO();
        bookDAO = new BookDAO();
        orderDAO = new OrderDAO();
        orderDetailDAO = new OrderDetailDAO();
        categoryDAO = new CategoryDAO();
        authorDAO = new AuthorDAO();
        publisherDAO = new PublisherDAO();
    }
    
    public static WebManager getInstance(){
        if(instance == null) instance = new WebManager();
        
        return instance;
    }
}
