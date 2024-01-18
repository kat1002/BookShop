/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.order;

/**
 *
 * @author kat1002
 */
public class OrderDetail {
   private int bookId;
   private int orderId;
   private int amount; 
    public OrderDetail() {
    }

    public OrderDetail(int bookId, int orderId, int amount) {
        this.bookId = bookId;
        this.orderId = orderId;
        this.amount = amount;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    
}
