<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="Styles/viewallcustomers.css">
    <title>View All Customers</title>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="container">
        <h2 class="heading">View All Customers</h2>
        <p class="total">Total Customers: <span class="highlight"><c:out value="${count}" /></span></p>

        <div class="table-container">
            <table class="styled-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th>Contact No</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${customerlist}" var="customer">
                        <tr>
                            <td><c:out value="${customer.id}" /></td>
                            <td><c:out value="${customer.name}" /></td>
                            <td><c:out value="${customer.gender}" /></td>
                            <td><c:out value="${customer.dateofbirth}" /></td>
                            <td><c:out value="${customer.email}" /></td>
                            <td><c:out value="${customer.location}" /></td>
                            <td><c:out value="${customer.contact}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
