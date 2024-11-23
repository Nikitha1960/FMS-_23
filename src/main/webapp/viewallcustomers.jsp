<%@ taglib uri="jakarta.tags.core" prefix="c" %>

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
<h3 align="center">View All Customers<h3/>
<table align="center" border=2 class="table table-striped">
	<tr>
	   
		 <th>ID</th>
		 <th>NAME</th>
		 <th>GENDER</th>
		 <th>DATE OF BIRTH</th>
		 <th>EMAIL</th>
		 <th>LOCATION</th>
		 <th>CONTACT NO</th>
		 

	<tr/>
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

</table>
</body>
</html>
