<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="Styles/displayCustomer.css">
    <title>Delete Customers</title>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<div class="container">
    <h1 class="heading">Delete Customers</h1>

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
                    <th>Action</th>
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
                        <td>
                            <a class="delete-link" 
                               href='<c:url value="delete?id=${customer.id}" />'>Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
