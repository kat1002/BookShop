/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.book.Book;
import com.model.item.Item;
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
@WebServlet(name = "CartInsert", urlPatterns = {"/cartInsert"})
public class CartInsert extends HttpServlet {

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
        
        if(WebManager.getInstance().CurrentAccount != null){
            String method = request.getParameter("method");

            Book book = WebManager.getInstance().bookDAO.get(Integer.parseInt(request.getParameter("bookid")));
            Item item = new Item(book, Integer.parseInt(request.getParameter("qty")));

            //System.out.println(method + " " + request.getParameter("bookid") + " " + request.getParameter("qty"));
            System.out.println(book.getTitle());


            if(method.equals("insert")) {
                WebManager.getInstance().cart.addItem(item);
            }

            if(method.equals("remove")){
                WebManager.getInstance().cart.removeItem(item);
            }

            if(method.equals("change")){
                WebManager.getInstance().cart.changeItem(item);
            }

            System.out.println(WebManager.getInstance().cart.getItems());

            response.sendRedirect(request.getParameter("link"));
        }
        else response.sendRedirect("login.jsp");
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
