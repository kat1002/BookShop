/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.book;

import java.util.Date;

/**
 *
 * @author kat1002
 */
public class Book {
    int id;
    String title;
    String ageRate;
    double inPrice;
    double outPrice;
    int stock;
    int publisherId;
    String series;
    String translator;
    Date date;
    String language;
    String coverType;
    float discountId;

    public Book() {
    }

    public Book(int id, String title, String ageRate, double inPrice, double outPrice, int stock, int publisherId, String series, String translator, Date date, String language, String coverType, float discountId) {
        this.id = id;
        this.title = title;
        this.ageRate = ageRate;
        this.inPrice = inPrice;
        this.outPrice = outPrice;
        this.stock = stock;
        this.publisherId = publisherId;
        this.series = series;
        this.translator = translator;
        this.date = date;
        this.language = language;
        this.coverType = coverType;
        this.discountId = discountId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAgeRate() {
        return ageRate;
    }

    public void setAgeRate(String ageRate) {
        this.ageRate = ageRate;
    }

    public double getInPrice() {
        return inPrice;
    }

    public void setInPrice(double inPrice) {
        this.inPrice = inPrice;
    }

    public double getOutPrice() {
        return outPrice;
    }

    public void setOutPrice(double outPrice) {
        this.outPrice = outPrice;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(int publisherId) {
        this.publisherId = publisherId;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getTranslator() {
        return translator;
    }

    public void setTranslator(String translator) {
        this.translator = translator;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCoverType() {
        return coverType;
    }

    public void setCoverType(String coverType) {
        this.coverType = coverType;
    }

    public float getDiscountId() {
        return discountId;
    }

    public void setDiscountId(float discountId) {
        this.discountId = discountId;
    }
    
}
