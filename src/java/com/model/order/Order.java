/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.order;

import com.model.discount.Discount;
import java.util.Date;

/**
 *
 * @author kat1002
 */
public class Order {
   private int id;
   private int customerId;
   private Date created;
   private String orderStatus;
   private Discount discountId;

    public Order() {
    }

    public Order(int id, int customerId, Date created, String orderStatus, Discount discountId) {
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

    public Discount getDiscountId() {
        return discountId;
    }

    public void setDiscountId(Discount discountId) {
        this.discountId = discountId;
    }
}
