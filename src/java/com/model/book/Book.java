/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.book;

import com.model.author.Author;
import com.model.category.Category;
import com.model.publisher.Publisher;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author kat1002
 */
public class Book {
   private int id;
   private String title;
   private double price;
   private int stock;
   private Category category;
   private Publisher publisher;
   private Author author;

    public Book() {
    }

    public Book(int id, String title, double price, int stock, Category category, Publisher publisher, Author author) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.stock = stock;
        this.category = category;
        this.publisher = publisher;
        this.author = author;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    
}
