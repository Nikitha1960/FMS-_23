<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Sign In</title>
    <link rel="stylesheet" href="Styles/auth.css"> <!-- Custom CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> <!-- Bootstrap -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(120deg, #6c63ff, #ad53ff);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .auth-container {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 80%;
            max-width: 800px;
            overflow: hidden;
        }

        /* Form Section */
        .form-container {
            padding: 50px;
            width: 50%;
            text-align: center;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #6c63ff;
            font-weight: bold;
        }

        .form-container .form-label {
            color: #333;
            font-weight: 500;
        }

        .form-container .btn-primary {
            background-color: #6c63ff;
            border: none;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .form-container .btn-primary:hover {
            background-color: #ad53ff;
        }

        .form-container p {
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }

        .form-container a {
            color: #6c63ff;
            text-decoration: none;
            font-weight: bold;
        }

        .form-container a:hover {
            color: #ad53ff;
        }

        /* Image Section */
        .image-container {
            width: 50%;
            height: 100%;
        }

        .image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <div class="auth-container">
        <!-- Form Section -->
        <div class="form-container">
            <h2>Welcome Back!</h2>
            <p>Please sign in to access your account.</p>
            <form action="buyernavbar.jsp" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="btn btn-primary">Sign In</button>
                <p class="mt-3">Don't have an account? <a href="buyerSignup.jsp">Sign Up</a></p>
            </form>
        </div>
        
        <!-- Image Section -->
        <div class="image-container">
            <img src="Image/buyersigin.jpg" alt="Buyer Sign In">
        </div>
    </div>
</body>
</html>
