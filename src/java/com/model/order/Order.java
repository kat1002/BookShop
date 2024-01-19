/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.order;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author kat1002
 */
public class Order {
   private int id;
   private int customerId;
   private Date created;
   private String orderStatus;
   private int discountId;
   private List<OrderDetail> orderdetails= new ArrayList<>();

    public Order() {
    }

    public Order(int id, int customerId, Date created, String orderStatus, int discountId) {
        this.id = id;
        this.customerId = customerId;
        this.created = created;
        this.orderStatus = orderStatus;
        this.discountId = discountId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
    }

    public List<OrderDetail> getOrderdetails() {
        return orderdetails;
    }

    public void setOrderdetails(List<OrderDetail> orderdetails) {
        this.orderdetails = orderdetails;
    }
    public void insertOrderDetail(OrderDetail od){
        orderdetails.add(od);
    }
}
