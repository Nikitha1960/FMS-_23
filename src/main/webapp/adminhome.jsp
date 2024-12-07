<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="Styles/adminmain.css">
    <title>Admin Dashboard</title>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <!-- Main Content Section -->
    <div class="dashboard">
        <!-- Welcome Banner -->
        <div class="welcome-banner">
            <h1>Welcome, Admin!</h1>
            <p>Let’s make today productive.</p>
        </div>

        <!-- Metrics Section -->
        <div class="metrics">
            <div class="metric-card">
                <h3>Total Customers</h3>
                <p><c:out value="${count}"></c:out></p>
            </div>
            <div class="metric-card">
                <h3>Total Products</h3>
                <p>120</p> <!-- Placeholder -->
            </div>
            <div class="metric-card">
                <h3>Transactions Completed</h3>
                <p>450</p> <!-- Placeholder -->
            </div>
            <div class="metric-card">
                <h3>Revenue</h3>
                <p>$25,000</p> <!-- Placeholder -->
            </div>
        </div>

        <!-- Charts Section -->
        <div class="charts">
            <div class="chart">
                <h3>Monthly Growth</h3>
                <img src="Image/1.png" alt="Monthly Growth Chart">
            </div>
            <div class="chart">
                <h3>Top-Selling Categories</h3>
                <img src="Image/10.jpg" alt="Top-Selling Categories Chart">
            </div>
        </div>

        <!-- Recent Activities -->
        <div class="recent-activities">
            <h3>Recent Activities</h3>
            <ul>
                <li>New customer registered: John Doe</li>
                <li>Product "Organic Mango Jam" listed by Farmer Ravi</li>
                <li>Admin updated category: "Handmade Goods"</li>
            </ul>
        </div>
    </div>
</body>
</html>
