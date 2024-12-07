<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>View All Products</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Styles/viewproducts.css"> <!-- Link to external CSS -->
</head>
<body>
   

    <div class="container">
        <h3 class="title text-center">View All Products</h3>
        <div class="row">
            <c:forEach items="${products}" var="product">
                <div class="col-md-4 col-sm-6">
                    <div class="product-card">
                        <img src="displayproductimage?id=${product.id}" class="product-image" alt="Product Image" />
                        <div class="product-name">${product.name}</div>
                        <div class="product-description">${product.description}</div>
                        <div class="product-cost">₹${product.cost}</div>
                        <form action="addtocart" method="POST">
                            <input type="hidden" name="productId" value="${product.id}" />
                            <button type="submit" class="btn btn-primary add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
