/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.reviews;

import com.model.account.Account;
import com.model.book.Book;
import java.util.Date;

/**
 *
 * @author asus
 */
public class Review {
    private int id;
    private Account customerId;
    private Book bookId;
    private int review;
    private Date reviewDate;
    private String detail;

    public Review() {
    }

    public Review(int id, Account customerId, Book bookId, int review, Date reviewDate, String detail) {
        this.id = id;
        this.customerId = customerId;
        this.bookId = bookId;
        this.review = review;
        this.reviewDate = reviewDate;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Account customerId) {
        this.customerId = customerId;
    }

    public Book getBookId() {
        return bookId;
    }

    public void setBookId(Book bookId) {
        this.bookId = bookId;
    }

    public int getReview() {
        return review;
    }

    public void setReview(int review) {
        this.review = review;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }
    
}
