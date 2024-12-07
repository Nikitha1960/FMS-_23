<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.klef.jfsd.springboot.model.Buyer" %>
<%
    Buyer buyer = (Buyer) session.getAttribute("buyer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buyer Home</title>
    <link rel="stylesheet" href="Styles/buyerHome.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <!-- Welcome Section -->
        <div class="welcome-section">
            <h1>Welcome, <%= buyer.getName() %>!</h1>
            <p>Discover the best products tailored for you.</p>
        </div>

        <!-- Featured Products -->
        <div class="featured-products mt-5">
            <h2>Featured Products</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="card">
                        <img src="images/product1.jpg" class="card-img-top" alt="Product 1">
                        <div class="card-body">
                            <h5 class="card-title">Product 1</h5>
                            <p class="card-text">$25.00</p>
                            <a href="addToCart.jsp" class="btn btn-primary">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <!-- Repeat for other products -->
            </div>
        </div>

        <!-- Categories -->
        <div class="categories mt-5">
            <h2>Explore Categories</h2>
            <div class="row">
                <div class="col-md-3">
                    <a href="category.jsp?cat=electronics" class="btn btn-outline-primary">Electronics</a>
                </div>
                <div class="col-md-3">
                    <a href="category.jsp?cat=clothing" class="btn btn-outline-primary">Clothing</a>
                </div>
                <!-- Add more categories -->
            </div>
        </div>

        <!-- Footer -->
        <footer class="mt-5 text-center">
            <p>&copy; 2024 Buyer Portal. All rights reserved.</p>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>