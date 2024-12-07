<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Sign Up</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> <!-- Bootstrap -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #6c63ff, #ad53ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            width: 100%;
            max-width: 900px;
        }

        .form-section {
            flex: 1;
            min-width: 280px;
            margin: 20px;
        }

        .image-section {
            flex: 1;
            min-width: 280px;
            margin: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .image-section img {
            max-width: 100%;
            border-radius: 12px;
        }

        .form-section h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #6c63ff;
            font-weight: bold;
        }

        .form-section .form-label {
            font-weight: 500;
            color: #333;
        }

        .form-section .btn-primary {
            background-color: #6c63ff;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 8px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .form-section .btn-primary:hover {
            background-color: #ad53ff;
        }

        .form-section p {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .form-section a {
            color: #6c63ff;
            text-decoration: none;
            font-weight: bold;
        }

        .form-section a:hover {
            color: #ad53ff;
        }

        .form-control {
            border-radius: 8px;
            padding: 10px;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Image Section -->
        <div class="image-section">
            <img src="Image/signin.jpg" alt="Sign Up">
        </div>

        <!-- Form Section -->
        <div class="form-section">
            <h2>Create Your Buyer Account</h2>
            <form action="buyerSignup" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Full Name</label>
                    <input type="text" id="name" name="name" class="form-control" placeholder="Enter your full name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Create a password" required>
                </div>
                <div class="mb-3">
                    <label for="contact" class="form-label">Contact</label>
                    <input type="text" id="contact" name="contact" class="form-control" placeholder="Enter your phone number" required>
                </div>
                <button type="submit" class="btn btn-primary">Sign Up</button>
                <p class="mt-3">Already have an account? <a href="buyerSignin.jsp">Sign In</a></p>
            </form>
        </div>
    </div>
</body>
</html>
