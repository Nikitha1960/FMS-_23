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
    <h3 align="center">Customer Registration Form</h3>
	<div class="container">
    <form method="post" action="insertcustomer">	
        <label>Enter Name</label>
        <input type="text" class="form-control" name="cname" required />
        <br/>
        <label>Select Gender</label>
        <input type="radio" class="form-check-input" name="cgender" value="Male" required />Male
        <input type="radio" class="form-check-input" name="cgender" value="Female" required />Female
        <input type="radio" class="form-check-input" name="cgender" value="Others" required />Others
        <br/>
        <label>Select Date of Birth</label>
        <input type="date"  name="cdob" required />
        <br/>
        <label>Enter Email ID</label>
        <input type="email" class="form-control" name="cemail" required />
        <br/>
        <label>Enter Password</label>
        <input type="password" class="form-control" name="cpwd" required />
        <br/>
        <label>Enter Location</label>
        <input type="text" class="form-control" name="clocation" required />
        <br/>
        <label>Enter Contact</label>
        <input type="text" class="form-control" name="ccontact" required />
        <br/>
		<br/>
		 <input type="submit" class="btn btn-success"  value="Register" />
		 <input type="reset" class="btn btn-success" value="Clear" />
    </form>
	<div/>
</body>
</html>
