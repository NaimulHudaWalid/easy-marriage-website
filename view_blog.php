<?php
if (isset($_GET['id'])) {
    $blog = $conn->query("SELECT * FROM `blog` where md5(id) = '{$_GET['id']}'");
    if ($blog->num_rows > 0) {
        foreach ($blog->fetch_assoc() as $k => $v) {
            $$k = $v;
        }
    }
    $review = $conn->query("SELECT r.*,concat(firstname,' ',lastname) as name FROM `rate_review` r inner join users u on r.user_id = u.id where r.package_id='{$id}' order by unix_timestamp(r.date_created) desc ");
    $review_count = $review->num_rows;
    $rate = 0;
    $feed = array();
    while ($row = $review->fetch_assoc()) {
        $rate += $row['rate'];
        if (!empty($row['review'])) {
            $row['review'] = stripslashes(html_entity_decode($row['review']));
            $feed[] = $row;
        }
    }
    if ($rate > 0 && $review_count > 0)
        $rate = number_format($rate / $review_count, 0, "");
    $files = array();
    if (is_dir(base_app . 'uploads/blog_' . $id)) {
        $ofile = scandir(base_app . 'uploads/blog_' . $id);
        foreach ($ofile as $img) {
            if (in_array($img, array('.', '..')))
                continue;
            $files[] = validate_image('uploads/blog_' . $id . '/' . $img);
        }
    }
}
?>
<section class="page-section vh">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div id="tourCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
                    <div class="carousel-inner h-100">
                        <?php foreach ($files as $k => $img) : ?>
                            <div class="carousel-item  h-100 <?php echo $k == 0 ? 'active' : '' ?>">
                                <img class="d-block w-100  h-100" src="<?php echo $img ?>" alt="">
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <a class="carousel-control-prev" href="#tourCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#tourCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
            <div class="col-md-7">
                <h3><?php echo $title ?></h3>
                <hr class="border-primary">
                <hr>
                <small class='text-muted'>Location: <?php echo $tour_location ?></small>
                <br>
                <small class='text-muted'>Date: <?php echo date("F d, Y", strtotime($date_created)) ?></small>
                <h4>Description</h4>
                <div><?php echo stripslashes(html_entity_decode($description)) ?></div>
                <hr>
                <hr class="border-primary">
                <?php foreach ($feed as $r) : ?>
                    <div class="w-100 d-flex justify-content-between  align-items-center">
                        <div class="d-flex align-items-center">
                            <img src="<?php echo validate_image('assets/img/user.jpg') ?>" class="border mr-3 review-user-avatar" alt="">
                            <span><?php echo $r['name'] ?></span>
                        </div>
                        <span class='text-muted'><?php echo date("Y-m-d H:i A", strtotime($r['date_created'])) ?></span>
                    </div>
                    <!-- <div class="w-100 review-feedback">
                        <?php echo $r['review'] ?>
                    </div> -->
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>
<!-- <script>
    $(function(){
        $('#book').click(function(){
            if("<?php echo $_settings->userdata('id') ?>" > 0)
                uni_modal("Book Info","book_form.php?package_id=<?php echo $id ?>");
            else
                uni_modal("","login.php","large");
        })
    })
</script> -->

<style>
    .vh {
        height: 90vh;
    }
</style>