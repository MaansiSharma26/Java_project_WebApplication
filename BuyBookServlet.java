/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package BookStore;


import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;

@WebServlet("/buyBook") // URL pattern for the servlet
public class BuyBookServlet extends HttpServlet {

    // Method to add the book to the cart (for example purposes)
    private void addToCart(HttpServletRequest request, String title, int quantity) {
        // Logic to add the book to the cart in your session or wherever necessary
        HttpSession session = request.getSession();
        
        // Assuming Cart is an object you use to store the cart items in session
        // Cart cart = (Cart) session.getAttribute("cart");
        // if (cart == null) {
        //     cart = new Cart();  // Initialize if not present
        // }
        // cart.addItem(title, quantity);  // Add book with quantity to cart
        // session.setAttribute("cart", cart);  // Save updated cart back in session
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the title from the request
        String title = request.getParameter("bookTitle");

        // Default quantity to 1 if not provided
        int quantity = 1; 

        // Get the quantity from the request parameter (with error handling)
        try {
            String quantityStr = request.getParameter("quantity");
            if (quantityStr != null && !quantityStr.isEmpty()) {
                quantity = Integer.parseInt(quantityStr); // Parse the quantity if it's valid
            }
        } catch (NumberFormatException e) {
            // If the quantity is invalid, it will default to 1
            quantity = 1;
        }

        // You can print or log the received data for debugging
        System.out.println("Received book: " + title + " with quantity: " + quantity);

        // Add the book to the cart
        addToCart(request, title, quantity);

        // Redirect the user to the thank you page or any other page
        response.sendRedirect("thankYou.jsp");
    }
}