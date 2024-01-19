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
import java.util.ArrayList;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Account Data Access Object
 * Handles database operations related to Account objects
 */
public class AccountDAO implements DAO<Account> {
    
    // SQL queries
    private final String LOGIN    = "SELECT id, role FROM accounts WHERE username = ? AND password = ?";
    private final String REGISTER = "INSERT INTO accounts (username, password, role) VALUES (?, ?, 0)";
    private final String GETALL   = "SELECT * FROM accounts";
    private final String GET      = "SELECT * FROM accounts WHERE id = ?";
    private final String DELETE   = "DELETE FROM accounts WHERE id = ?";
    private final String INSERT   = "INSERT INTO accounts (username, password, role) VALUES (?, ?, ?)";
    private final String UPDATE   = "UPDATE accounts SET username = ?, password = ?, role = ? WHERE id = ?";
    /**
     * Check if the provided username and password match an account in the database
     * @param username The username to check
     * @param password The password to check
     * @return The Account object if the login is successful, null otherwise
     * @throws SQLException if a database access error occurs
     * @throws ClassNotFoundException if the JDBC driver class is not found
     */
    public Account checkLogin(String username, String password) throws SQLException, ClassNotFoundException {
        Account curAccount = null;
        
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(LOGIN);
            if (conn != null) {
                ptm.setString(1, username);
                ptm.setString(2, password);
                ResultSet rs = ptm.executeQuery();
                    
                if (rs.next()) {
                    int id = rs.getInt("id");
                    int role = rs.getInt("role");
                        
                    if (role == 1)
                        curAccount = new Admin(id, username, password);
                    else if (role == 0)
                        curAccount = new User(id, username, password);
                        
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return curAccount;
    }

    public Account register(String username, String password) throws ClassNotFoundException{
        
        int id;
        
        do{
            id = generateId();
        } while(isIdExisted(id));
        
        User newAccount = new User(id, username, password);
        // code to insert the new account to the database
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement(REGISTER);
            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return newAccount;
    }
    
    private int generateId(){
        return (int) (Math.random() * 1000);
    }

    private boolean isIdExisted(int id) throws ClassNotFoundException{
        // code to check if the id exists in the database
        // return true if id exists, false otherwise
        // rewritten code
        // assuming the database connection is established and the id column is named "id" in the table "users"
        try {
            Connection conn = DBUtils.getConnection();
            String query = "SELECT COUNT(*) FROM accounts WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    /**
     * Get an Account object by its ID
     * @param id The ID of the Account to retrieve
     * @return An Optional containing the Account if found, empty otherwise
     */
    @Override
    public Optional<Account> get(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(GET);
            ptm.setInt(1, id);
            ResultSet rs = ptm.executeQuery();
    
            if (rs.next()) {
                int accountId = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                int role = rs.getInt("role");
    
                if (role == 1)
                    return Optional.of(new Admin(id, username, password));
                else if (role == 0)
                    return Optional.of(new User(id, username, password));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        return null;
    }

    /**
     * Get a list of all Account objects
     * @return The list of all Account objects
     */
    @Override
    public List<Account> getAll() {
        List<Account> accounts = new ArrayList<>();
    
        try {
            Connection conn = DBUtils.getConnection();
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(GETALL);
    
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                int role = rs.getInt("role");
    
                if (role == 1)
                    accounts.add(new Admin(id, username, password));
                else if (role == 0)
                    accounts.add(new User(id, username, password));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        return accounts;
    }
    
    /**
     * Insert a new Account object into the database
     * @param t The Account object to insert
     */
    @Override
    public void insert(Account t) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(INSERT);
            ptm.setString(1, t.getUsername());
            ptm.setString(2, t.getPassword());
            ptm.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Update an existing Account object in the database
     * @param t The Account object to update
     * @param params The updated parameters for the Account object
     */
    @Override
    public void update(Account t, String[] params) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(UPDATE);
            ptm.setString(1, params[0]);
            ptm.setString(2, params[1]);
            ptm.setInt(3, Integer.parseInt(params[2]));
            ptm.setInt(4, t.getId());
            ptm.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Delete an existing Account object from the database
     * @param t The Account object to delete
     * @throws java.lang.ClassNotFoundException
     */
    @Override
    public void delete(Account t){
        try (
            Connection conn = DBUtils.getConnection();
            PreparedStatement ptm = conn.prepareStatement(DELETE)) {
            ptm.setInt(1, t.getId()); // Set the parameter value for the query
            ptm.executeUpdate(); // Execute the delete query
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}