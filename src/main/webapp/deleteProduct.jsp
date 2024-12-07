<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Delete Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Styles/viewproducts.css"> <!-- Link to external CSS -->
    <script>
        function confirmDelete(productId, productName) {
            if (confirm("Are you sure you want to delete the product: " + productName + "?")) {
                window.location.href = 'deleteProduct?id=' + productId;
            }
        }
    </script>
</head>
<body>
<%@ include file="customernavbar.jsp" %> <!-- Include the navbar -->

<div class="container">
    <h3 class="title">Delete Products</h3>

    <c:if test="${not empty products}">
        <table class="table table-striped table-bordered text-center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>DESCRIPTION</th>
                    <th>COST</th>
                    <th>IMAGE</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><c:out value="${product.id}" /></td>
                        <td><c:out value="${product.name}" /></td>
                        <td><c:out value="${product.description}" /></td>
                        <td><c:out value="${product.cost}" /></td>
                        <td>
                            <img src="displayproductimage?id=${product.id}" class="product-image" alt="Product Image" />
                        </td>
                        <td>
                            <button class="btn btn-danger" onclick="confirmDelete('${product.id}', '${product.name}')">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty products}">
        <p>No products available to delete.</p>
    </c:if>
</div>

</body>
</html>
