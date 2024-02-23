/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.item;

import com.model.book.Book;

/**
 *
 * @author kat1002
 */
public class Item {
    Book book;
    int amount;
    boolean isChoosen = false;

    public Item(Book book, int amount) {
        this.book = book;
        this.amount = amount;
    }

    public Item() {
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public boolean isIsChoosen() {
        return isChoosen;
    }

    public void setIsChoosen(boolean isChoosen) {
        this.isChoosen = isChoosen;
    }
}
