<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    <link rel="stylesheet" type="text/css" href="Styles/customerhome.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script> <!-- Font Awesome icons -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Chart.js library -->
</head>
<body>
    <%@ include file="customernavbar.jsp" %> <!-- Include the navbar -->
<div class="cont">
    <!-- Welcome Section -->
    <div class="welcome-container">
        <h1>Welcome, <%= c.getName() %>!</h1>
        <p>We’re thrilled to have you back. Here’s a quick look at your dashboard.</p>
    </div>

  

    <!-- Features Section -->
    <div class="button-container">
    <div class="row">
        <div class="col-md-6 col-sm-12 feature-item">
            <i class="fa fa-cogs"></i>
            <h3>High Quality</h3>
            <p>We deliver top-quality products with meticulous attention to detail.</p>
            <a href="aboutus.jsp" class="button">About Us</a>
        </div>
        <div class="col-md-6 col-sm-12 feature-item">
            <i class="fa fa-truck"></i>
            <h3>Fast Delivery</h3>
            <p>Your orders are processed quickly and delivered on time, every time.</p>
            <a href="contactus" class="button">Contact Us</a>
        </div>
        <div class="col-md-6 col-sm-12 feature-item">
            <i class="fa fa-handshake"></i>
            <h3>Customer Satisfaction</h3>
            <p>We prioritize customer satisfaction and are always here to help you.</p>
            <a href="guidance" class="button">Guidance</a>
        </div>
        <div class="col-md-6 col-sm-12 feature-item">
            <i class="fa fa-lock"></i>
            <h3>Secure Payments</h3>
            <p>Your payment details are safe with us, and we ensure a secure transaction process.</p>
            <a href="paymentprocess" class="button">Payment Process</a>
        </div>
    </div>
    </div>
</div>
</body>
</html>
