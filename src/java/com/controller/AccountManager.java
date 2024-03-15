/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.account.Account;
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
@WebServlet(name = "AccountManager", urlPatterns = {"/accountManager"})
public class AccountManager extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
        String method = request.getParameter("method");
        
        
        if(method.equals("view")){
            request.setAttribute("accounts", WebManager.getInstance().accountDAO.getAll());
            request.getRequestDispatcher("AdminAccount.jsp").forward(request, response);
    
        }
        
        if(method.equals("remove")){
            request.getRequestDispatcher("AdminAccount.jsp").forward(request, response);

        }
        
        if(method.equals("edit")){
            int accountId = Integer.parseInt(request.getParameter("accountid"));
            request.setAttribute("account", WebManager.getInstance().accountDAO.get(accountId));
            request.getRequestDispatcher("AccountEdit.jsp").forward(request, response);
        }   
        
        if(method.equals("done")){
            int accountId = Integer.parseInt(request.getParameter("accountid"));
            
            Account account = WebManager.getInstance().accountDAO.get(accountId);
            
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String role = request.getParameter("role");
            
            WebManager.getInstance().accountDAO.update(account, new String[]{fullname, email});
            
            if(role != null)
                if(role.equals("admin")) WebManager.getInstance().accountDAO.roleUpdate(account, 1);
                else WebManager.getInstance().accountDAO.roleUpdate(account, 0);
            
            String msg = "Done Edit";
            response.sendRedirect("accountManager?method=edit&accountid=" + accountId+"&msg="+msg);
            //request.getRequestDispatcher("AccountEdit.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

}
