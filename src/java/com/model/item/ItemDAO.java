/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.item;

import com.controller.WebManager;
import com.model.DAO;
import com.model.author.Author;
import com.model.book.Book;
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
 * @author kat1002
 */
public class ItemDAO implements DAO<Item> {

    // SQL queries
    private final String GETALL   = "SELECT * FROM [cart_items] WHERE [account_id] = ?";
    private final String GET      = "SELECT * FROM [cart_items] WHERE [account_id] = ? AND [book_id] = ?";
    private final String DELETE   = "DELETE FROM [cart_items] WHERE [account_id] = ? AND [book_id] = ?";
    private final String INSERT   = "INSERT INTO [cart_items] VALUES (?, ?, ?)";
    private final String UPDATE   = "UPDATE [cart_items] SET [amount] = ? WHERE [account_id] = ? AND [book_id] = ?";
    
    @Override
    public Item get(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GET);
            ptm.setInt(1, WebManager.getInstance().CurrentAccount.getId());
            ptm.setInt(2, id);
            ResultSet rs = ptm.executeQuery();

            if (rs.next()) {
                int amount = rs.getInt("amount");
                return new Item(WebManager.getInstance().bookDAO.get(id), amount);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Item> getAll() {
        List<Item> list = new ArrayList<>();
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GETALL);
            ptm.setInt(1, WebManager.getInstance().CurrentAccount.getId());
            System.out.println(WebManager.getInstance().CurrentAccount.getId());
            ResultSet rs = ptm.executeQuery();

            if (rs.next()) {
                int amount = rs.getInt("amount");
                list.add(new Item(WebManager.getInstance().bookDAO.get(rs.getInt("book_id")), amount));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public void insert(Item t) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(INSERT);
            ptm.setInt(1, WebManager.getInstance().CurrentAccount.getId());
            ptm.setInt(2, t.getBook().getId());
            ptm.setInt(3, t.getAmount());
            ptm.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Item t, String[] params) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(UPDATE);
            ptm.setInt(1, t.amount);
            ptm.setInt(2, WebManager.getInstance().CurrentAccount.getId());
            ptm.setInt(3, t.book.getId());
            ptm.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(Item t) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(DELETE);
            ptm.setInt(2, WebManager.getInstance().CurrentAccount.getId());
            ptm.setInt(3, t.book.getId());
            ptm.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
}
