<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Update Profile</title>
    <link rel="stylesheet" type="text/css" href="Styles/updateprofile.css"> <!-- Link to the CSS file -->
</head>
<body>
    <%@ include file="customernavbar.jsp" %> <!-- Including the main navbar JSP file -->
    <div class="container">
        <h3 class="form-title">Customer Update Profile Form</h3>
        <form method="post" action="update">
            <label>ID</label>
            <input type="number" class="form-control" name="cid" value="<%=c.getId()%>" readonly required />
            <br/>
            
            <label>Enter Name</label>
            <input type="text" class="form-control" name="cname" value="<%=c.getName()%>" required />
            <br/>
            
            <label>Select Gender</label>
            <input type="radio" class="form-check-input" name="cgender" value="Male" required /> Male
            <input type="radio" class="form-check-input" name="cgender" value="Female" required /> Female
            <input type="radio" class="form-check-input" name="cgender" value="Others" required /> Others
            <br/>
            
            
            <label>Select Date of Birth</label>
            <input type="date" name="cdob" class="form-control" required />
            <br/>
            
            <label>Enter Email ID</label>
            <input type="email" class="form-control" name="cemail" value="<%=c.getEmail()%>" readonly required />
            <br/>
            
            <label>Enter Password</label>
            <input type="password" class="form-control" name="cpwd" value="<%=c.getPassword()%>" required />
            <br/>
            
            <label>Enter Location</label>
            <input type="text" class="form-control" name="clocation" value="<%=c.getLocation()%>" required />
            <br/>
            
            <label>Enter Contact</label>
            <input type="text" class="form-control" name="ccontact" value="<%=c.getContact()%>" required />
            <br/><br/>
            
            <input type="submit" class="btn btn-success" value="Update" />
            <input type="reset" class="btn btn-warning" value="Clear" />
        </form>
    </div>
</body>
</html>
