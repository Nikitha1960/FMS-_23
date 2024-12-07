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
    <title>Farmer Profile</title>
    <link rel="stylesheet" type="text/css" href="Styles/customerprofile.css"> <!-- Link to CSS -->
</head>
<body>
    <%@ include file="customernavbar.jsp" %> <!-- Including the navbar -->

    <div class="container">
        <h3 class="profile-title">Farmer Profile</h3>
        
        <!-- Profile Picture -->
        <div class="profile-image">
            <img src="<%= c.getProfileImagePath() %>" alt="Farmer Profile Picture">
        </div>
        
        <!-- Profile Details -->
        <div class="profile-details">
            <p><strong>ID:</strong> <%= c.getId() %></p>
            <p><strong>Name:</strong> <%= c.getName() %></p>
            <p><strong>Gender:</strong> <%= c.getGender() %></p>
            <p><strong>Date of Birth:</strong> <%= c.getDateofbirth() %></p>
            <p><strong>Email:</strong> <%= c.getEmail() %></p>
            <p><strong>Location:</strong> <%= c.getLocation() %></p>
            <p><strong>Contact:</strong> <%= c.getContact() %></p>
        </div>
    </div>
</body>
</html>