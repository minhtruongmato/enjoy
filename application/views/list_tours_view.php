<!-- Tours Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>tours.min.css">
<?php 
$url_image = base_url('assets/img/horizontal.jpg');
if ($detail['title'] == $this->lang->line('top-packages') || $detail['title'] == $this->lang->line('top-backpack')) {
	if(!empty($product_array)){
		$url_image = base_url("assets/upload/product/".$product_array[count($product_array)-1]['slug']."/".$product_array[count($product_array)-1]['image']);
	}
}else{
	$url_image = base_url("assets/upload/product_category/".$detail['slug']."/".$detail['image']);
}
?>
<section id="head-cover" class="container-fluid" style="background-image: url('<?php echo $url_image ?>')">
	<div class="overlay"></div>
	<div class="container">
		<div class="big-title">
			<?php if (!empty($detail['sub'])): ?>
				<h4 class="subtitle">
					<?php echo $detail['sub'][count($detail['sub'])-1]['title']; ?>
				</h4>
			<?php endif ?>
			<h1 class="title">
                <?php echo $detail['title'] ?>
			</h1>
		</div>
	</div>
</section>

<section id="tours" class="container-fluid">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('') ?>"><?php echo $this->lang->line('home') ?></a></li>
			<?php if (!empty($detail['sub'])): ?>
				<?php for($i=0;$i<count($detail['sub']);$i++): ?>
					<li><a href="<?php echo base_url('/danh-muc/'.$detail['sub'][$i]['slug']) ?>"><?php echo $detail['sub'][$i]['title'] ?></a></li>
				<?php endfor; ?>
			<?php endif ?>
			<li class="active"><?php echo $detail['title'];?></li>
		</ol>
		<?php if (!empty($detail['content'])): ?>
			<div class="intro">
				<h4><?php echo $detail['content'] ?></h4>
			</div>
		<?php endif ?>

		<div id="list-tours" class="section" style="<?php echo (empty($detail['content']))?"padding-top: 30px":''; ?>">
			<div class="row">
                <?php for($i =0;$i<count($product_array);$i++): ?>
					<div class="item col-xs-12 col-sm-6 col-md-4">
						<div class="wrapper">
							<div class="mask">
								<a href="<?php echo base_url('tours/'.$product_array[$i]['slug']) ?>">
									<img src="<?php echo base_url('/assets/upload/product/'.$product_array[$i]['slug'].'/'.$product_array[$i]['image']) ?>" alt="image">
								</a>
							</div>
							<div class="head">
								<h4 class="post-subtitle"><?php echo $product_array[$i]['parent_title'] ?></h4>
								<h2 class="post-title"><?php echo $product_array[$i]['title'] ?></h2>
								<h3 class="price"><?php echo number_format($product_array[$i]['price']) ?>vnd</h3>
							</div>
							<div class="body">
								<p class="post-description"><?php echo $product_array[$i]['description']; ?></p>
							</div>
							<div class="foot">
								<ul class="list-inline">
									<li>
										<a href="<?php echo base_url('tours/'.$product_array[$i]['slug']) ?>" class="btn btn-primary" role="button">
											Đặt Ngay
										</a>
									</li>
									<li>
										<a href="<?php echo base_url('tours/'.$product_array[$i]['slug']) ?>" class="btn btn-default" role="button">
											Xem chi tiết
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
                <?php endfor; ?>
			</div>
	        <div class="col-md-6 col-md-offset-5 page">
	            <?php echo (isset($page_links))? $page_links : ''; ?>
	        </div>
		</div>
	</div>
</section>