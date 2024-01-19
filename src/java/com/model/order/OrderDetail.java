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

    private int booksId;
    private int orderId;
    private int amount;

    public OrderDetail() {
    }

    public OrderDetail(int booksId, int orderId, int amount) {
        this.booksId = booksId;
        this.orderId = orderId;
        this.amount = amount;
    }

    public int getBooksId() {
        return booksId;
    }

    public void setBooksId(int booksId) {
        this.booksId = booksId;
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
