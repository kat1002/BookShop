/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.book;

import com.model.author.Author;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.model.publisher.Publisher;

/**
 *
 * @author kat1002
 */
public class Book {
   private int id;
   private String title;
   private String ageRate;
   private double inPrice;
   private double outPrice;
   private int stock;
   private Publisher publisher;
   private String series;
   private String translator;
   private Date date;
   private String language;
   private String coverType;
   private float discount;
   private List<Author> author = new ArrayList<>();

    public Book() {
    }

    public Book(int id, String title, String ageRate, double inPrice, double outPrice, int stock, Publisher publisher, String series, String translator, Date date, String language, String coverType, float discount) {
        this.id = id;
        this.title = title;
        this.ageRate = ageRate;
        this.inPrice = inPrice;
        this.outPrice = outPrice;
        this.stock = stock;
        this.publisher = publisher;
        this.series = series;
        this.translator = translator;
        this.date = date;
        this.language = language;
        this.coverType = coverType;
        this.discount = discount;
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

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisherId(Publisher publisher) {
        this.publisher = publisher;
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

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public List<Author> getAuthor() {
        return author;
    }

    public void setAuthor(List<Author> author) {
        this.author = author;
    }



    
    
}
