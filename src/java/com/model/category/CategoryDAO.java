/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.category;

import com.model.DAO;
import java.util.List;
import java.util.Optional;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.utils.DBUtils;
import java.util.ArrayList;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kat1002
 */
public class CategoryDAO implements DAO<Category>{

    //SQL Queries
    private final String GET        = "SELECT * FROM [categories] WHERE [id] = ?";
    private final String GETALL     = "SELECT * FROM [categories]";
    private final String DELETE     = "DELETE FROM [categories] WHERE [id] = ?";
    private final String INSERT     = "INSERT INTO [categories] ([title]) VALUES (?)";
    private final String UPDATE     = "UPDATE [categories] SET [title] = ? WHERE [id] = ?";
    
    
    @Override
    public Category get(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GET);
            ptm.setInt(1, id);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt("id"), rs.getString("title"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }

    @Override
    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(GETALL);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setTitle(rs.getString("title"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //System.out.println("CategoryDAO: " + list);

        return list;
    }

    @Override
    public void insert(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Category t, String[] params) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
