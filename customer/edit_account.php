<h1 align="center"> Edit Your Account </h1>


<form action="" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label> Customer Name: </label>

        <input type="text" name="e_name" class="form-control" required>
    </div>

    <div class="form-group">
        <label> Customer Email: </label>

        <input type="text" name="e_email" class="form-control" required>
    </div>

    <div class="form-group">
        <label> Customer Country: </label>

        <input type="text" name="e_country" class="form-control" required>
    </div>

    <div class="form-group">
        <label> Customer City: </label>

        <input type="text" name="e_city" class="form-control" required>
    </div>

    <div class="form-group">
        <label> Customer Contact: </label>

        <input type="text" name="e_contact" class="form-control" required>
    </div>

    <div class="form-group">
        <label> Customer Address: </label>

        <input type="text" name="e_address" class="form-control" required>
    </div>

    <div class="form-group">
        <label> Customer Image: </label>

        <input type="file" name="e_image" class="form-control form-height-custom" required>
        <img src="customer_images/erika.jpg" alt="Customer Image" class="img-responsive">
    </div>

    <div class="text-center">

        <button class="btn btn-primary" name="update">
            <i class="fa fa-user-md"></i> Update Now
        </button>
    </div>

</form>
