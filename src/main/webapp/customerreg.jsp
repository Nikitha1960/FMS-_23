<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Farmer Registration</title>
    <link rel="stylesheet" href="Styles/customerreg.css"> <!-- Link to external CSS -->
</head>
<body>
    <div class="container">
        <!-- Left side: Registration Form -->
        <div class="form-section">
            <h3>Farmer Registration Form</h3>
            <form method="post" action="insertcustomer">
                <!-- Name Field -->
                <label for="cname">Enter Name</label>
                <input type="text" class="form-control" name="cname" id="cname" placeholder="Enter your name" required />

                <!-- Gender Field -->
                <label>Select Gender</label>
                <div class="gender-group">
                    <input type="radio" name="cgender" value="Male" required /> Male
                    <input type="radio" name="cgender" value="Female" required /> Female
                    <input type="radio" name="cgender" value="Others" required /> Others
                </div>

                <!-- Date of Birth Field -->
                <label for="cdob">Select Date of Birth</label>
                <input type="date" name="cdob" class="form-control" id="cdob" required />

                <!-- Email Field -->
                <label for="cemail">Enter Email ID</label>
                <input type="email" class="form-control" name="cemail" id="cemail" placeholder="Enter your email" required />

                <!-- Password Field -->
                <label for="cpwd">Enter Password</label>
                <input type="password" 
                       class="form-control" 
                       name="cpwd" 
                       id="cpwd" 
                       placeholder="Enter your password" 
                       required
                       pattern="(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" 
                       title="Password must contain at least one letter, one number, one special character, and be at least 8 characters long." />
                <small class="password-requirements">
                    Password must:
                    <ul>
                        <li>Contain at least one letter</li>
                        <li>Contain at least one number</li>
                        <li>Contain at least one special character (@$!%*?&)</li>
                        <li>Be at least 8 characters long</li>
                    </ul>
                </small>

                <!-- Location Field -->
                <label for="clocation">Enter Location</label>
                <input type="text" class="form-control" name="clocation" id="clocation" placeholder="Enter your location" required />

                <!-- Contact Field -->
                <label for="ccontact">Enter Contact</label>
                <input type="text" class="form-control" name="ccontact" id="ccontact" placeholder="Enter your contact number" required />

                <!-- Buttons -->
                <div class="buttons">
                    <a href="mainnavbar.jsp" class="btn btn-primary">Back</a> <!-- Back Button -->
                    <input type="submit" class="btn btn-success" value="Register" />
                    <input type="reset" class="btn btn-secondary" value="Clear" />
                </div>
            </form>
        </div>

        <!-- Right side: Image Section -->
        <div class="image-section">
            <img src="Image/farmer-image.jpg" alt="Farmer Image" />
        </div>
    </div>
</body>
</html>
