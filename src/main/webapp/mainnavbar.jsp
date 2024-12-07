<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Value Added Agriculture</title>
    <!-- Link to the external CSS file -->
    <link rel="stylesheet" type="text/css" href="Styles/styles.css" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Header -->
    <header>
        <nav class="navbar navbar-default" style="background-color: #4CAF50; border-color: #4CAF50;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#" style="color: white; font-weight: bold;">VALUE ADDED AGRICULTURE</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/" style="color: white;">Home</a></li>
                    <li><a href="customerreg" style="color: white;">Farmer Registration</a></li>
                    <li><a href="customerlogin" style="color: white;">Farmer Login</a></li>
                    <li><a href="adminlogin" style="color: white;">Admin Login</a></li>
                    <li><a href="buyersignup.jsp" style="color: white;">Buyer Registration</a></li>
                    <li><a href="buyersignin.jsp" style="color: white;">Buyer Login</a></li>
                    
                </ul>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <div class="intro-section">
        <h2>Empower Farmers Now</h2>
        <p>Transform crops into cash! Join us in revolutionizing rural entrepreneurship with innovative tech solutions.</p>
        <a href="customerreg" class="btn btn-success" style="color: white; margin-top: 20px;">Join Us</a>
    </div>

    <!-- Features Section -->
    <section style="padding: 40px; background-color: #fff;">
        <h1 class="text-center">Revolutionizing Rural Entrepreneurship</h1>
        <p class="text-center" style="font-size: 18px;">
            Our app is the bridge between farmers and global markets, turning dreams into reality!
        </p>
        <div class="row text-center">
            <div class="col-md-3">
                <span>&#10004;</span>
                <h3>Value Addition</h3>
                <p>Turn your crops into gourmet delights and handmade treasures!</p>
            </div>
            <div class="col-md-3">
                <span>&#10004;</span>
                <h3>Waste Not</h3>
                <p>Utilize farm waste creatively for sustainable profits!</p>
            </div>
            <div class="col-md-3">
                <span>&#10004;</span>
                <h3>Tech Savvy</h3>
                <p>Embrace technology to enhance your farming game!</p>
            </div>
            <div class="col-md-3">
                <span>&#10004;</span>
                <h3>Global Reach</h3>
                <p>Connect with buyers worldwide and expand your horizons!</p>
            </div>
        </div>
    </section>

    <!-- Main Content -->
    <div class="container">
        <p>Explore features like farmer registration, product listing, and an intuitive dashboard to manage and market your value-added agricultural products effectively. Join us to drive a sustainable farming future!</p>
    </div>

    <!-- Additional Image Section -->
    <div class="image-section">
        <img src="Image/image3.jpg" alt="Farming Tools">
        <img src="Image/image4.jpg" alt="Farmers Working">
        <img src="Image/image5.jpg" alt="Market Place">
        <img src="Image/image3.jpg" alt="Farm Harvest">
    </div>

    <section class="why-us-section">
        <h2>Why Choose Us?</h2>
        <p>Discover the reasons why we stand out and provide the best service for you.</p>
        <div class="row">
            <div class="col-md-3 feature-item">
                <i class="fa fa-cogs"></i>
                <h3>High Quality</h3>
                <p>We deliver top-quality products with meticulous attention to detail.</p>
            </div>
            <div class="col-md-3 feature-item">
                <i class="fa fa-users"></i>
                <h3>Customer Focused</h3>
                <p>Our customers' needs are always our top priority.</p>
            </div>
            <div class="col-md-3 feature-item">
                <i class="fa fa-shield-alt"></i>
                <h3>Security</h3>
                <p>Your data is safe with us. We prioritize security in all aspects.</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Value Added Agriculture. All rights reserved.</p>
    </footer>

    <!-- Script to fetch location -->
    <script>
        // Check if geolocation is supported by the browser
        if ("geolocation" in navigator) {
            navigator.geolocation.getCurrentPosition(function(position) {
                // Get the latitude and longitude of the user
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;

                // Call a function to display the location
                displayLocation(latitude, longitude);
            }, function(error) {
                console.log("Error retrieving location: " + error.message);
                document.getElementById("location-display").innerHTML = "Location not available";
            });
        } else {
            console.log("Geolocation is not supported by this browser.");
            document.getElementById("location-display").innerHTML = "Geolocation not supported";
        }

        function displayLocation(lat, lon) {
            // Example of displaying the location directly as coordinates
            document.getElementById("location-display").innerHTML = "Location: " + lat.toFixed(2) + ", " + lon.toFixed(2);
        }
    </script>
</body>
</html>
