<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Login</title>
    <link rel="stylesheet" href="Styles/adminlogin.css"> <!-- External CSS -->
</head>
<body>
    <div class="container">
        <div class="login-box">
            <h2>Admin Login</h2>
            <form method="post" action="checkadminlogin">
                <label for="username">Username</label>
                <input type="text" id="username" name="auname" class="form-control" placeholder="Enter Username" required />

                <label for="password">Password</label>
                <input type="password" id="password" name="apwd" class="form-control" placeholder="Enter Password" required />

                <div class="buttons">
                    <input type="submit" class="btn btn-success" value="Login" />
                    <input type="reset" class="btn btn-secondary" value="Clear" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
