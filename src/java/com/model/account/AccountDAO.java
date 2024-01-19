/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.account;

import com.model.DAO;
import java.util.List;
import java.util.Optional;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.utils.DBUtils;

/**
 *
 * @author kat1002
 */
public class AccountDAO implements DAO<Account> {
    
    //SQL
    private final String LOGIN = "SELECT id, role FROM tblUser WHERE username = ? AND password = ?";       
    
    public Account checkLogin(String username, String password) throws SQLException, ClassNotFoundException {
        Account curAccount = null;
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            if(conn != null){
                ptm.setString(1, username);
                ptm.setString(2, password);
                ResultSet rs = ptm.executeQuery();
                    
                if(rs.next()){
                    int id = rs.getInt("id");
                    int role = rs.getInt("role");
                        
                    if(role == 1)
                        curAccount = new Admin(id, username, password);
                    else if(role == 0) 
                        curAccount = new User(id, username, password);
                        
                }
            }
        } catch(SQLException e){
            System.out.println(e);
        }
        
        return curAccount;
    }

    @Override
    public Optional<Account> get(long id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Account> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Account t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Account t, String[] params) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Account t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
