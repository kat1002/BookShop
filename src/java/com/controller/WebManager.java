/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controller;

import com.model.account.Account;
import com.model.category.CategoryDAO;
import com.model.account.AccountDAO;
import com.model.author.AuthorDAO;
import com.model.book.BookDAO;
import com.model.category.Category;
import com.model.item.Item;
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
    public List<Item> cartItems;
    
    public Account CurrentAccount;
    
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

    public AccountDAO getAccountDAO() {
        return accountDAO;
    }

    public void setAccountDAO(AccountDAO accountDAO) {
        this.accountDAO = accountDAO;
    }

    public BookDAO getBookDAO() {
        return bookDAO;
    }

    public void setBookDAO(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    public OrderDAO getOrderDAO() {
        return orderDAO;
    }

    public void setOrderDAO(OrderDAO orderDAO) {
        this.orderDAO = orderDAO;
    }

    public OrderDetailDAO getOrderDetailDAO() {
        return orderDetailDAO;
    }

    public void setOrderDetailDAO(OrderDetailDAO orderDetailDAO) {
        this.orderDetailDAO = orderDetailDAO;
    }

    public CategoryDAO getCategoryDAO() {
        return categoryDAO;
    }

    public void setCategoryDAO(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }

    public AuthorDAO getAuthorDAO() {
        return authorDAO;
    }

    public void setAuthorDAO(AuthorDAO authorDAO) {
        this.authorDAO = authorDAO;
    }

    public PublisherDAO getPublisherDAO() {
        return publisherDAO;
    }

    public void setPublisherDAO(PublisherDAO publisherDAO) {
        this.publisherDAO = publisherDAO;
    }

    public List<Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<Item> cartItems) {
        this.cartItems = cartItems;
    }
    
    
}
