/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.discount;

/**
 *
 * @author kat1002
 */
public class Discount {
   private int id;
   private String code;
   private float value;

    public Discount() {
    }

    public Discount(int id, String code, float value) {
        this.id = id;
        this.code = code;
        this.value = (float) value;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public double getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value =  value;
    }
    
}
