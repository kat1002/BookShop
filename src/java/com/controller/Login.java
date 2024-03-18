/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.account.Account;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author kat1002
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        login(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            //System.out.println(username + " " + password);

            WebManager.getInstance().CurrentAccount = WebManager.getInstance().accountDAO.checkLogin(username, password);
            
            System.out.println(WebManager.getInstance().CurrentAccount);
            
            if(WebManager.getInstance().CurrentAccount != null){
                HttpSession session = request.getSession(false);
                session.setAttribute("account", WebManager.getInstance().CurrentAccount);
                response.sendRedirect("shop");
            } else {
                // loginError : 1 is wrongPassword, 2 is noAccount, 0 is nothing
                if(WebManager.getInstance().accountDAO.isUsernameExists(username)) request.setAttribute("loginError", "Wrong Password");
                else request.setAttribute("loginError", "This username does not exists!");
                
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}
