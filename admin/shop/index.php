<?php if ($_settings->chk_flashdata('success')) : ?>
	<script>
		alert_toast("<?php echo $_settings->flashdata('success') ?>", 'success')
	</script>
<?php endif; ?>
<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">List of Products</h3>
		<div class="card-tools ml-3">
			<a href="?page=shop/productOrder" class="btn btn-flat btn-warning mr-4 text-bold"><span class="fas fa-eye"></span> View Order List</a>
		</div>

		<div class="card-tools">
			<a href="?page=shop/manageProduct" class="btn btn-flat btn-primary text-bold"><span class="fas fa-plus"></span> Add New Product</a>
		</div>
	</div>
	<div class="card-body">
		<div class="container-fluid">
			<div class="container-fluid">
				<table class="table table-bordered table-stripped">
					<colgroup>
						<col width="5%">
						<col width="20%">
						<col width="30%">
						<col width="15%">
						<col width="15%">
						<col width="15%">
					</colgroup>
					<thead>
						<tr>
							<th>#</th>
							<th>Date Created</th>
							<th>Product Name</th>
							<th>Product Price</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$i = 1;
						$qry = $conn->query("SELECT * from `items` order by date(date_created) desc ");
						while ($row = $qry->fetch_assoc()) :
							$row['name'] = strip_tags(stripslashes(html_entity_decode($row['name'])));
						?>
							<tr>
								<td class="text-center"><?php echo $i++; ?></td>
								<td><?php echo date("Y-m-d H:i", strtotime($row['date_created'])) ?></td>
								<td><?php echo $row['name'] ?></td>
								<td>
									<?php echo $row['price'] ?>
								</td>

								<td class="text-center">
									<?php if ($row['status'] == 1) : ?>
										<span class="badge badge-success">Active</span>
									<?php else : ?>
										<span class="badge badge-danger">Inactive</span>
									<?php endif; ?>
								</td>

								<td align="center">
									<button type="button" class="btn btn-danger btn-sm ">
										<a class="text-white text-bold delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-trash text-white"></span> Delete</a>
									</button>

								</td>
							</tr>
						<?php endwhile; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('.delete_data').click(function() {
			_conf("Are you sure to delete this product permanently?", "delete_product", [$(this).attr('data-id')])
		})
		$('.table').dataTable();
	})

	function delete_product($id) {
		start_loader();
		$.ajax({
			url: _base_url_ + "classes/Master.php?f=delete_product",
			method: "POST",
			data: {
				id: $id
			},
			dataType: "json",
			error: err => {
				console.log(err)
				alert_toast("An error occured.", 'error');
				end_loader();
			},
			success: function(resp) {
				if (typeof resp == 'object' && resp.status == 'success') {
					location.reload();
				} else {
					alert_toast("An error occured.", 'error');
					end_loader();
				}
			}
		})
	}
</script>