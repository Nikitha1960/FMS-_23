<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %> <!-- Including the main navbar JSP file -->
	<h4 align="center" style="color:red">
	<c:out value="${message}"></c:out><br/>
	</h4>
    <h3 align="center">Customer login Form</h3>
	<div class="container">
    <form method="post" action="checkcustomerlogin">	
        <label>Email</label>
        <input type="text" class="form-control" name="cemail" required />
        <br/>
        
        <label>Enter Password</label>
        <input type="password" class="form-control" name="cpwd" required />
        <br/>
       
		 <input type="submit" class="btn btn-success"  value="login" />
		 <input type="reset" class="btn btn-success" value="Clear" />
    </form>
	<div/>
</body>
</html>
