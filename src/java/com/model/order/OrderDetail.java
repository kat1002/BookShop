/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.order;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kat1002
 */
public class OrderDetail {
   private List<Integer> booksId = new ArrayList<>();
   private int orderId;
   private int amount; 
   
    public OrderDetail() {
    }

    public OrderDetail(int orderId, int amount) {
        this.orderId = orderId;
        this.amount = amount;
    }

    public List<Integer> getBooksId() {
        return booksId;
    }

    public void setBookId(List<Integer> booksId) {
        this.booksId = booksId;
    }
    
    public void insertBooksId(int id){
        booksId.add(id);
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
