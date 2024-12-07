<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Customer</title>
    <link rel="stylesheet" href="Styles/displayCustomer.css"> <!-- Link to external CSS -->
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
    <div class="container">
        <h3>Customer Details</h3>
        <table class="customer-info">
            <tr>
                <th>ID</th>
                <td><c:out value="${c.id}"></c:out></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><c:out value="${c.name}"></c:out></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><c:out value="${c.gender}"></c:out></td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td><c:out value="${c.dateofbirth}"></c:out></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><c:out value="${c.email}"></c:out></td>
            </tr>
            <tr>
                <th>Location</th>
                <td><c:out value="${c.location}"></c:out></td>
            </tr>
            <tr>
                <th>Contact</th>
                <td><c:out value="${c.contact}"></c:out></td>
            </tr>
        </table>
    </div>
</body>
</html>
