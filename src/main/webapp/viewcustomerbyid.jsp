<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="Styles/viewallcustomersbyid.css">
    <title>View Customer By ID</title>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %> <!-- Including the main navbar JSP file -->
    <div class="container">
        <h1 class="heading">View Customer By ID</h1>
        <form method="post" action="displaycustomer" class="form-container">
            <div class="form-group">
                <label for="customerId">Select Customer ID</label>
                <select name="id" id="customerId" class="form-select" required>
                    <option value="">-- Select --</option>
                    <c:forEach items="${customerlist}" var="customer">
                        <option value="${customer.id}">${customer.id} - ${customer.name}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit" class="btn-submit">View</button>
        </form>
    </div>
</body>
</html>
