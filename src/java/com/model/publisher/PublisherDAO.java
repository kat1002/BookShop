/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.publisher;

import com.model.DAO;
import com.utils.DBUtils;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kat1002
 */
public class PublisherDAO implements DAO<Publisher>{
    
    //SQL Queries
    private final String GETALL   = "SELECT * FROM publishers";
    private final String GET      = "SELECT * FROM publishers WHERE id = ?";
    private final String DELETE   = "DELETE FROM publishers WHERE id = ?";
    private final String INSERT   = "INSERT INTO publishers VALUES (?)";
    private final String UPDATE   = "UPDATE publishers SET title = ? WHERE id = ?";
    
    @Override
    public Publisher get(int id) {
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GET);
            ptm.setInt(1, id);
            ResultSet rs = ptm.executeQuery();
    
            if (rs.next()) {
                return (new Publisher( rs.getInt("id"),
                        rs.getString("name")
                ));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        return null;
    }

    @Override
    public List<Publisher> getAll() {
        List<Publisher> list = new ArrayList<>();
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GETALL);
            ResultSet rs = ptm.executeQuery();
    
            if (rs.next()) {
                list.add(new Publisher( rs.getInt("id"),
                        rs.getString("name")
                ));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        return list;
    }

    @Override
    public void insert(Publisher t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Publisher t, String[] params) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Publisher t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
