<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
Total Customer:<c:out value="${count}"></c:out>
</body>
</html>
