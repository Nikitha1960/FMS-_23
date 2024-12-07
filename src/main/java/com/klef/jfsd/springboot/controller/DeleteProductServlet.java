package com.klef.jfsd.springboot.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;

import com.klef.jfsd.springboot.service.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Autowired
    private ProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the product ID from the request
        String productId = request.getParameter("productId");

        if (productId != null && !productId.isEmpty()) {
            try {
                // Call service method to delete the product
                boolean deleted = productService.deleteProduct(Integer.parseInt(productId));

                if (deleted) {
                    // Redirect to the page that lists products after deletion
                    response.sendRedirect("viewProducts");
                } else {
                    // Handle case when product deletion fails
                    request.setAttribute("errorMessage", "Failed to delete product.");
                    request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "An error occurred.");
                request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorMessage", "Invalid product ID.");
            request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
        }
    }
}
