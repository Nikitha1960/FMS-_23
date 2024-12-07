<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Farmer Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="Styles/customerlogin.css">
</head>
<body>
    <div class="login-container">
        <div class="login-left">
            <img src="Image/11.jpg" alt="Farming Image" class="login-image"/>
        </div>

        <div class="login-right">
            <h2>Welcome Back!</h2>
            <p>Are You A <strong>Farmer</strong> Login Here!</p>
            <p class="description">Login to manage your farming operations with PRO'FX</p>

            <h4 align="center" class="error-message">
                <c:out value="${message}"></c:out>
            </h4>

            <form method="post" action="checkcustomerlogin">
                <div class="form-group">
    <label for="cemail">Email</label>
    <input type="email" class="form-control" name="cemail" id="cemail" placeholder="Your email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address."/>
</div>


                <div class="form-group">
                    <label for="cpwd">Enter Password</label>
                    <input type="password" 
                           class="form-control" 
                           name="cpwd" 
                           id="cpwd" 
                           placeholder="Your password" 
                           required
                           pattern="(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}"
                           title="Password must contain at least one letter, one number, one special character, and be at least 8 characters long." />
                </div>

                <div class="form-footer">
                    <input type="submit" class="btn btn-primary" value="Log In"/>
                    <input type="reset" class="btn btn-secondary" value="Clear"/>
                    <p class="signup-link">Don't have an account? <a href="customerreg.jsp">Sign Up</a></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
