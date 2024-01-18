/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.genres;

import com.model.book.Book;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author asus
 */
public class Genres {
    private String title;
    private List<Book> book =new ArrayList<>();

    public Genres() {
    }

    public Genres(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Book> getBook() {
        return book;
    }

    public void setBook(List<Book> book) {
        this.book = book;
    }
    
}
