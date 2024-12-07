<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Link to External CSS -->
    <link rel="stylesheet" href="Styles/addproduct.css">
</head>
<body>
    <%@ include file="customernavbar.jsp" %> <!-- Include the navbar -->

    <div class="container">
        <div class="form-wrapper">
            <h3 class="form-title">Add Product</h3>
            <form method="post" action="insertproduct" enctype="multipart/form-data">
                <!-- Product Name -->
                <div class="form-group">
                    <label for="pname">Product Name</label>
                    <input type="text" id="pname" class="form-control" name="pname" placeholder="Enter product name" required />
                </div>
                
                <!-- Product Cost -->
                <div class="form-group">
                    <label for="pcost">Product Cost</label>
                    <input type="number" id="pcost" class="form-control" name="pcost" step="0.01" placeholder="Enter product cost" required />
                </div>
                
                <!-- Product Description -->
                <div class="form-group">
                    <label for="pdescription">Product Description</label>
                    <textarea id="pdescription" name="pdescription" class="form-control" rows="4" placeholder="Write a short description" required></textarea>
                </div>
                
                <!-- Product Image -->
                <div class="form-group">
                    <label for="pimage">Product Image</label>
                    <input type="file" id="pimage" class="form-control" name="pimage" required />
                </div>
                
                <!-- Buttons -->
                <div clas1s="form-buttons">
                    <input type="submit" class="btn btn-success btn-lg" value="Add Product" />
                    <input type="reset" class="btn btn-warning btn-lg" value="Clear" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
