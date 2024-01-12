/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;


/**
 *
 * @author kat1002
 */
public class DBUtils {
    
    private static final String serverName = "localhost";
    private static final String dbName = "Book_Shop";
    private static final String portNumber = "1433";
    private static final String user = "sa";
    private static final String password = "123";
    
    public static Connection getConnection() throws SQLException, ClassNotFoundException{
        
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        
        Connection con = null;
        
        try{
            //Loading driver
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            //Creating a connection
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Error: " +  ex.toString());
            throw new SQLException(ex.getMessage());
        }
        
        return con;
    }
}
