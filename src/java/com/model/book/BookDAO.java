/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.book;

import com.controller.WebManager;
import com.model.DAO;
import com.model.author.Author;
import com.model.category.Category;
import com.model.publisher.Publisher;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author phucnt
 */
public class BookDAO implements DAO<Book> {
    // SQL queries
    private final String GETALL   = "SELECT * FROM books";
    private final String GET      = "SELECT * FROM books WHERE id = ?";
    private final String DELETE   = "DELETE FROM books WHERE id = ?";
    private final String INSERT   = "INSERT INTO books (username, password, role) VALUES (?, ?, ?)";
    private final String UPDATE   = "UPDATE books SET title = ?, password = ?, role = ? WHERE id = ?";
    
    @Override
    public Book get(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GET);
            ptm.setInt(1, id);
            ResultSet rs = ptm.executeQuery();
    
            if (rs.next()) {
                int bookId = rs.getInt("id");
                String bookTitle = rs.getString("title");
                double bookPrice = rs.getDouble("price");
                int bookStock = rs.getInt("stock");
                Category c = WebManager.getInstance().categoryDAO.get(rs.getInt("category_id"));
                Author a = WebManager.getInstance().authorDAO.get(rs.getInt("author_id"));
                Publisher p = WebManager.getInstance().publisherDAO.get(rs.getInt("publisher_id"));
                
                return new Book(bookId, bookTitle, bookPrice, bookStock, c, p, a);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        return null;
    }

    @Override
    public List<Book> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Book t, String[] params) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
        // 1> List products get by Category
    public List<Book> getProductsByCategoryid(int cid) throws ClassNotFoundException {
        List<Book> list = new ArrayList<>();
        
        String sql = "SELECT * FROM books";
        if (cid != 0) {
            sql += " where category_id = ?";
        } else {
            sql += " where 0 = ?";
        }
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = WebManager.getInstance().categoryDAO.get(cid);
                Publisher p = WebManager.getInstance().publisherDAO.get(rs.getInt("publisher_id"));
                Author a = WebManager.getInstance().authorDAO.get(rs.getInt("author_id"));
                Book b = new Book(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDouble("price"),
                        rs.getInt("stock"),
                        c, p, a);
                list.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        return list;
    }
}
