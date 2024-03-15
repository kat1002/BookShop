/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.author;

import com.model.DAO;
import com.model.category.CategoryDAO;
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
public class AuthorDAO implements DAO<Author> {
    
    //SQL Queries
    private final String GET        = "SELECT * FROM [authors] WHERE [id] = ?";
    private final String GETALL     = "SELECT [id], [name] FROM [authors]";
    private final String DELETE     = "DELETE FROM [authors] WHERE [id] = ?";
    private final String INSERT     = "INSERT INTO [authors] VALUES (?)";
    private final String UPDATE     = "UPDATE [authors] SET [name] = ? WHERE [id] = ?";
    
    @Override
    public Author get(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GET);
            ptm.setInt(1, id);

            ResultSet rs = ptm.executeQuery();

            while (rs.next()) {
                return new Author(rs.getInt("id"), 
                        rs.getString("name"));
            }
        } catch (SQLException e) {
            System.out.println("AuthorDAO: " + e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;    
    }

    @Override
    public List<Author> getAll() {
        List<Author> list = new ArrayList<>();
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(GETALL);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Author a = new Author();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    @Override
    public void insert(Author t) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(INSERT);
            ptm.setString(1, t.getName());
            ptm.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }    
    }

    @Override
    public void update(Author t, String[] params) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Author t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
