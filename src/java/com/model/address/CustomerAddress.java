/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.address;

import com.model.account.Account;

/**
 *
 * @author asus
 */
public class CustomerAddress {
    private int id;
    private Account customer;
    private int street_number;
    private String street_name;
    private City city;

    public CustomerAddress() {
    }

    public CustomerAddress(int id, Account customer, int street_number, String street_name, City city) {
        this.id = id;
        this.customer = customer;
        this.street_number = street_number;
        this.street_name = street_name;
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getCustomer() {
        return customer;
    }

    public void setCustomer(Account customer) {
        this.customer = customer;
    }

    public int getStreet_number() {
        return street_number;
    }

    public void setStreet_number(int street_number) {
        this.street_number = street_number;
    }

    public String getStreet_name() {
        return street_name;
    }

    public void setStreet_name(String street_name) {
        this.street_name = street_name;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }
    
}
