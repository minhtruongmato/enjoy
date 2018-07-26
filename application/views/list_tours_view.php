<!-- Tours Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>tours.css">
<section id="head-slider-section">
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
	<div id="head-slider" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<?php if (($detail['title'] == $this->lang->line('top-packages') || $detail['title'] == $this->lang->line('top-backpack')) && count($product_array) > 0): ?>
                <?php for($i=0;$i<count($product_array);$i++): ?>
					<div class="item <?php echo ($i == 0)?'active':'';?>">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/product/'.$product_array[count($product_array)-($i+1)]['slug'].'/'.$product_array[count($product_array)-($i+1)]['image']);?>" alt="...">
						</div>
					</div>
					<?php if ($i ==4): ?>
						<?php break; ?>
					<?php endif ?>
                <?php endfor ?>
            <?php elseif (!empty(json_decode($detail['image']))): ?>
                <?php foreach (json_decode($detail['image']) as $key => $value): ?>
					<div class="item <?php echo ($key == 0)?'active':'';?>">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/product_category/'.$detail['slug'].'/'.$value);?>" alt="...">
						</div>
					</div>
                <?php endforeach ?>
            <?php endif ?>
		</div>
		<a class="left carousel-control" href="#head-slider" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#head-slider" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
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

								<!--BADGE DISCOUNT -->
                                <?php if (!empty($product_array[$i]['pricepromotion']) && !empty($product_array[$i]['percen']) && !empty($product_array[$i]['showpromotion'])): ?>
									<div class="badge badge-discount">
										<div class="content"><?php echo $this->lang->line('promotion'); ?><br>-<?php echo $product_array[$i]['percen']; ?>%</div>
									</div>
                                <?php endif ?>

								<!--BADGE SPECIAL -->
								<div class="badge badge-special">
                                    <?php if (!empty($product_array[$i]['hot'])): ?>
										<div id="tour-hot" class="">
											<img src="<?php echo site_url('assets/img/badge-tour-hot.png')?>" alt="badge tour hot">
										</div>
                                    <?php endif ?>
                                    <?php if (!empty($product_array[$i]['bestselling'])): ?>
										<div id="best-sell" class="">
											<img src="<?php echo site_url('assets/img/badge-best-sell.png')?>" alt="badge best sell">
										</div>
                                    <?php endif ?>
								</div>

							</div>
							<div class="head">
								<h4 class="post-subtitle"><?php echo $product_array[$i]['parent_title'] ?></h4>
								<h2 class="post-title"><?php echo $product_array[$i]['title'] ?></h2>
								<h3 class="price">
									<?php if (!empty($product_array[$i]['pricepromotion']) && !empty($product_array[$i]['percen']) && !empty($product_array[$i]['showpromotion'])): ?>
										<?php echo number_format($product_array[$i]['pricepromotion']); ?> vnd
										<small class="price-original"><del><?php echo number_format($product_array[$i]['price']);?> vnd</del></small>
									<?php else: ?>
										<?php echo number_format($product_array[$i]['price']); ?> vnd
									<?php endif ?>
								</h3>
							</div>
							<div class="body">
								<p class="post-description"><?php echo $product_array[$i]['description']; ?></p>
							</div>
							<div class="foot">
								<ul class="list-inline">
									<li>
										<a href="<?php echo base_url('tours/'.$product_array[$i]['slug']) ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line('explore'); ?>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
                <?php endfor; ?>
			</div>
            <div class="row">
            	<div class="col-md-12">
	                <div class="page">
	                    <?php echo (isset($page_links))? $page_links : '';?>
	                </div>
            	</div>
            </div>
		</div>
	</div>
</section>