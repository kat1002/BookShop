/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.author.Author;
import com.model.book.Book;
import com.model.publisher.Publisher;
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
@WebServlet(name = "BookManager", urlPatterns = {"/bookManager"})
public class BookManager extends HttpServlet {

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
            request.setAttribute("books", WebManager.getInstance().bookDAO.getAll());
            request.setAttribute("WebManager", WebManager.getInstance());
            request.getRequestDispatcher("AdminBook.jsp").forward(request, response);
            
        }
        
        if(method.equals("remove")){
            int bookId = Integer.parseInt(request.getParameter("bookid"));
            WebManager.getInstance().bookDAO.delete(WebManager.getInstance().bookDAO.get(bookId));
        
            response.sendRedirect("bookManager?method=view");
        }
        
        if(method.equals("edit")){
            int bookId = Integer.parseInt(request.getParameter("bookid"));
            
            request.setAttribute("book", WebManager.getInstance().bookDAO.get(bookId));
            request.setAttribute("WebManager", WebManager.getInstance());
            request.getRequestDispatcher("BookEdit.jsp").forward(request, response);
        }
        
        if(method.equals("add")){
            request.setAttribute("WebManager", WebManager.getInstance());
            request.getRequestDispatcher("BookAdd.jsp").forward(request, response);
        }
        
        if(method.equals("adddone")){
            String title = request.getParameter("title");
            int categoryId = Integer.parseInt(request.getParameter("category"));
            String author = request.getParameter("author");
            String publisher = request.getParameter("publisher");
            double price = Double.parseDouble(request.getParameter("price"));
            
            //System.out.println(title + "/" + categoryId + "/" + author + "/" + publisher + "/" + price);

            
            int authorId = 0, publisherId = 0;
            boolean flag = true;
            
            for(Author a : WebManager.getInstance().authorDAO.getAll()){
                if(a.getName().equals(author)) {
                    flag = false;
                    authorId = a.getId();
                    break;
                }
                
            }
            
            if(flag){
                WebManager.getInstance().authorDAO.insert(new Author(0, author));
                authorId = WebManager.getInstance().authorDAO.getAll().size() + 1;
            }
            
            flag = true;
            for(Publisher p : WebManager.getInstance().publisherDAO.getAll()){
                if(p.getName().equals(publisher)) {
                    flag = false;
                    publisherId = p.getId();
                    break;
                }
            }
            
            if(flag){
                WebManager.getInstance().publisherDAO.insert(new Publisher(0, publisher));
                publisherId = WebManager.getInstance().publisherDAO.getAll().size() + 1;
            }
            
            //System.out.println(flag);
            
            WebManager.getInstance().bookDAO.insert(new Book(0, title, price, 100, WebManager.getInstance().categoryDAO.get(categoryId), WebManager.getInstance().publisherDAO.get(publisherId), WebManager.getInstance().authorDAO.get(authorId)));
                        
            response.sendRedirect("bookManager?method=view");        
        }
        
        if(method.equals("done")){
            int bookId = Integer.parseInt(request.getParameter("bookid"));
            String title = request.getParameter("title");
            //String description = request.getParameter("description");
            int categoryId = Integer.parseInt(request.getParameter("category"));
            
            double price = Double.parseDouble(request.getParameter("price"));
            
            //System.out.println(bookId + " " + title + " " + categoryId + " " + price);
            
            String[] params = {title, Integer.toString(categoryId), Double.toString(price)}; 
            WebManager.getInstance().bookDAO.update(WebManager.getInstance().bookDAO.get(bookId), params);
            
            response.sendRedirect("bookManager?method=view");
            //request.getRequestDispatcher("BookEdit.jsp").forward(request, response);
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
