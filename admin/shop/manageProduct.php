<?php
// if (isset($_GET['id']) && $_GET['id'] > 0) {
//     $qry = $conn->query("SELECT * from `items` where id = '{$_GET['id']}' ");
//     if ($qry->num_rows > 0) {
//         foreach ($qry->fetch_assoc() as $k => $v) {
//             $$k = $v;
//         }
//     }
// }

if (isset($_POST['add_product'])) {
    $name = $_POST['name'];
    $price = $_POST['price'];
    $images = $_FILES['images']['name'];
    $images_tmp_name = $_FILES['images']['tmp_name'];
    $images_folder = '../uploads/' . $images;

    $insert_query = mysqli_query($conn, "INSERT INTO `items`(name, price, images) VALUES('$name', '$price', '$images')") or die('query failed');

    if ($insert_query) {
        move_uploaded_file($images_tmp_name, $images_folder);
        $message[] = 'product add succesfully';
    } else {
        $message[] = 'could not add the product';
    }
};


?>
<div class="card card-outline card-info">

    <div class="card-header">
        <h3 class="card-title mr-5"><?php echo isset($id) ? "Update " : "Create New " ?>Product </h3>
        <?php

        if (isset($message)) {
            foreach ($message as $message) {
                echo '<div class="message "><span class="bg-gradient-blue p-2">' . $message . '</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
            };
        };

        ?>
    </div>
    <div class="card-body">
        <form action="" id="product-form" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name" class="control-label">Product Name</label>
                <textarea name="name" id="" cols="30" rows="2" class="form-control form no-resize" required></textarea>
            </div>

            <div class="form-group">
                <label for="price" class="control-label">Price</label>
                <input type="number" step="any" class="form form-control" name="price" required>
            </div>


            <div class="form-group">
                <label for="" class="control-label">Images</label>
                <div class="custom-file">
                    <input type="file" class="file-input" name="images" multiple accept="image/*" onchange="displayImg(this,$(this))" required>
                    <!-- <label class="custom-file-label" for="customFile">Choose file</label> -->
                </div>
            </div>

            <div class="d-flex flex-row-reverse ">
                <a class="btn btn-secondary mt-4 ml-2" href="?page=shop">Cancel</a>
                <!-- <button type="button" class="btn btn-secondary mt-4 ml-2" data-dismiss="modal">Cancel</button> -->
                <input type="submit" value="add the product" name="add_product" class="btn btn-primary mt-4">
            </div>


        </form>
    </div>
    <!-- <div class="card-footer">
        <button class="btn btn-flat btn-primary" form="product-form">Save</button>
        <a class="btn btn-flat btn-default" href="?page=shop">Cancel</a>
    </div> -->
</div>
<!-- <script>
    function displayImg(input, _this) {
        console.log(input.files)
        var fnames = []
        Object.keys(input.files).map(k => {
            fnames.push(input.files[k].name)
        })
        _this.siblings('.custom-file-label').html(JSON.stringify(fnames))

    }

    function delete_img($path) {
        start_loader()

        $.ajax({
            url: _base_url_ + 'classes/Master.php?f=delete_p_img',
            data: {
                path: $path
            },
            method: 'POST',
            dataType: "json",
            error: err => {
                console.log(err)
                alert_toast("An error occured while deleting an Image", "error");
                end_loader()
            },
            success: function(resp) {
                $('.modal').modal('hide')
                if (typeof resp == 'object' && resp.status == 'success') {
                    $('[data-path="' + $path + '"]').closest('.img-item').hide('slow', function() {
                        $('[data-path="' + $path + '"]').closest('.img-item').remove()
                    })
                    alert_toast("Image Successfully Deleted", "success");
                } else {
                    console.log(resp)
                    alert_toast("An error occured while deleting an Image", "error");
                }
                end_loader()
            }
        })
    }
    $(document).ready(function() {
        $('.rem_img').click(function() {
            _conf("Are sure to delete this image permanently?", 'delete_img', ["'" + $(this).attr('data-path') + "'"])
        })
        $('#product-form').submit(function(e) {
            e.preventDefault();
            $('.err-msg').remove();
            start_loader();
            $.ajax({
                url: _base_url_ + "classes/Master.php?f=save_product",
                data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
                error: err => {
                    console.log(err)
                    alert_toast("An error occured", 'error');
                    end_loader();
                },
                success: function(resp) {
                    if (typeof resp == 'object' && resp.status == 'success') {
                        location.href = "./?page=shop";
                    } else {
                        alert_toast("An error occured", 'error');
                        end_loader();
                        console.log(resp)
                    }
                }
            })
        })


    })
</script> -->