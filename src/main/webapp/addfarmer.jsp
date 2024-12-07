<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Farmer</title>
    <link rel="stylesheet" type="text/css" href="Styles/addfarmer.css">
</head>
<body>
	<%@ include file="adminnavbar.jsp" %>
    <div class="container">
        <h2>Add Farmer Profile</h2>
        <form action="AddFarmerController" method="post" enctype="multipart/form-data">
            <!-- Farmer's Basic Details -->
            <div class="form-group">
                <label for="farmerName">Name:</label>
                <input type="text" id="farmerName" name="farmerName" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" class="form-control" required>
            </div>

            <!-- Farmer's Address -->
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" class="form-control" rows="3" required></textarea>
            </div>

            <!-- Farm Details -->
            <div class="form-group">
                <label for="products">Products:</label>
                <input type="text" id="products" name="products" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="farmSize">Farm Size (in acres):</label>
                <input type="number" id="farmSize" name="farmSize" class="form-control" step="0.1" required>
            </div>
            <div class="form-group">
                <label for="farmLocation">Farm Location (Geolocation):</label>
                <input type="text" id="farmLocation" name="farmLocation" class="form-control" placeholder="e.g., Latitude, Longitude" required>
            </div>

            <!-- Certifications -->
            <div class="form-group">
                <label for="certifications">Certifications:</label>
                <textarea id="certifications" name="certifications" class="form-control" rows="3" placeholder="List certifications like Organic, GAP, etc."></textarea>
            </div>

            <!-- Profile Picture -->
            <div class="form-group">
                <label for="profilePicture">Profile Picture:</label>
                <input type="file" id="profilePicture" name="profilePicture" class="form-control" accept="image/*" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-success">Add Farmer</button>
        </form>
    </div>
</body>
</html>
