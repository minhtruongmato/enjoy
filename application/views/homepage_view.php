<!-- Homepage Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>homepage.css">
<!-- Slider JS -->
<script src="<?php echo site_url('assets/js/slider.js') ?>"></script>

<section id="slider" class="container-fluid">
	<div id="homepage-slider" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<?php if (!empty($banner)): ?>
				<?php foreach ($banner as $key => $value): ?>
					<li data-target="#homepage-slider" data-slide-to="0" class="<?php echo ($key == 0)?'active' : ''; ?>"></li>
				<?php endforeach ?>
			<?php endif ?>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<?php if (!empty($banner)): ?>
				<?php foreach ($banner as $key => $value): ?>
					<div class="item <?php echo ($key == 0)?'active' : ''; ?>">
						<div class="mask">
							<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']); ?>" alt="slide 2">
						</div>
						<div class="carousel-caption">
							<div class="big-title">
								<h4 class="subtitle">
                                    <?php echo $value['parent_title']; ?>
								</h4>
								<h1 class="title">
									<?php echo $value['title']; ?>
								</h1>
								<ul class="list-inline">
									<li>
										<a href="<?php echo base_url('tours/'.$value['slug']); ?>" class="btn btn-primary" role="button">
											<?php echo $this->lang->line('book-now');?>
										</a>
									</li>
									<li>
										<a href="<?php echo base_url('tours/'.$value['slug']); ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line('expore-now');?>
										</a>
									</li>
								</ul>
							</div>

						</div>
					</div>
				<?php endforeach ?>
			<?php endif ?>
			...
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#homepage-slider" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#homepage-slider" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</section>
<section id="packages" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row" style="margin-bottom: 30px;">
			<div class="item">
				<div class="inner cover">
					<div class="mask col-md-6">
						<div class="overlay">
							<h1><?php echo $packages['product_category_title'];?></h1>
							<p><?php echo $packages['product_category_content'];?></p>
						</div>
						<div class="foot">
							<ul class="list-inline">
								<li>
									<a href="<?php echo base_url('danh-muc/top-10-vietnam-tours') ?>" class="btn btn-primary" role="button">
										<?php echo $this->lang->line('top-packages');?>
									</a>
								</li>
								<?php if (!empty($packages_menu)): ?>
									<?php foreach ($packages_menu as $key => $value): ?>
										<li>
											<a href="<?php echo base_url('danh-muc/'.$value['slug']) ?>" class="btn btn-default" role="button">
												<?php echo $value['title']; ?>
											</a>
										</li>
										<?php if ($key == 0): ?>
											<?php break; ?>
										<?php endif ?>
									<?php endforeach ?>
								<?php endif ?>
							</ul>
						</div>
					</div>
					<div class="mask col-md-6">
						<img src="<?php echo base_url('/assets/upload/product_category/'.$packages['slug'].'/'.$packages['image']); ?>" alt="packages cover image">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			 <?php if (!empty($tour_packages)): ?>
				<div class="item col-md-4">
					<div class="inner cover">
						<div class="mask">
							<img src="<?php echo base_url('/assets/upload/product/'.$tour_packages[0]['slug'].'/'.$tour_packages[0]['image']) ?>" alt="packages cover image">
							<div class="overlay">
								<h1><?php echo $packages['product_category_title'];?></h1>
								<a href="<?php echo base_url('danh-muc/top-10-vietnam-tours') ?>" class="btn btn-primary" role="button"><?php echo $this->lang->line('see-all-tour'); ?></a>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		    <?php if (!empty($tour_packages) && count($tour_packages)>1): ?>
		        <?php foreach ($tour_packages as $key => $value): ?>
		        	<?php if ($key > 0): ?>
			        	<?php if ($key == 3): ?>
			        		</div><div class="row">
			        	<?php endif ?>
						<div class="item col-md-4">
							<div class="inner">
								<div class="wrapper">
									<div class="mask">
										<a href="<?php echo base_url('tours/' . $value['slug']) ?>">
			                                <?php if($value['image']){ ?>
												<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']) ?>" alt="image">
			                                <?php }else{ ?>
												<img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
			                                <?php } ?>
										</a>
									</div>
									<div class="head">
										<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
										<h2 class="post-title"><?php echo $value['title']; ?></h2>
										<h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
									</div>
									<div class="body">
										<p class="post-description"><?php echo $value['description']; ?></p>
									</div>
									<div class="foot">
										<ul class="list-inline">
											<li>
												<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-primary" role="button">
													<?php echo $this->lang->line("book-now"); ?>
												</a>
											</li>
											<li>
												<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
													<?php echo $this->lang->line("expore-now"); ?>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
		        	<?php endif ?>
		        <?php endforeach; ?>
		    <?php endif; ?>
	    </div>
	</div>
</section>

<section id="backpack" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row" style="margin-bottom: 30px;">
			<div class="item">
				<div class="inner cover">
					<div class="mask col-md-6">
						<img src="<?php echo base_url('/assets/upload/product_category/'.$backpack['slug'].'/'.$backpack['image']); ?>" alt="backpack cover image">
					</div>
					<div class="mask col-md-6">
						<div class="overlay">
							<h1><?php echo $backpack['product_category_title'];?></h1>
							<p><?php echo $backpack['product_category_content'];?></p>
						</div>
						<div class="foot">
							<ul class="list-inline">
								<li>
									<a href="<?php echo base_url('danh-muc/top-10-tours') ?>" class="btn btn-primary" role="button">
										<?php echo $this->lang->line('top-backpack');?>
									</a>
								</li>
								<?php if (!empty($backpack_menu)): ?>
									<?php foreach ($backpack_menu as $key => $value): ?>
										<li>
											<a href="<?php echo base_url('danh-muc/'.$value['slug']) ?>" class="btn btn-default" role="button">
												<?php echo $value['title']; ?>
											</a>
										</li>
										<?php if ($key == 0): ?>
											<?php break; ?>
										<?php endif ?>
									<?php endforeach ?>
								<?php endif ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			 <?php if (!empty($tour_backpack)): ?>
				<div class="item col-md-4">
					<div class="inner cover">
						<div class="mask">
							<img src="<?php echo base_url('/assets/upload/product/'.$tour_backpack[0]['slug'].'/'.$tour_backpack[0]['image']) ?>" alt="packages cover image">
							<div class="overlay">
								<h1><?php echo $backpack['product_category_title'];?></h1>
								<a href="<?php echo base_url('danh-muc/top-10-tours') ?>" class="btn btn-primary" role="button"><?php echo $this->lang->line('see-all-tour'); ?></a>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		    <?php if (!empty($tour_backpack) && count($tour_backpack)>1): ?>
		        <?php foreach ($tour_backpack as $key => $value): ?>
		        	<?php if ($key > 0): ?>
			        	<?php if ($key == 3): ?>
			        		</div><div class="row">
			        	<?php endif ?>
						<div class="item col-md-4">
							<div class="inner">
								<div class="wrapper">
									<div class="mask">
										<a href="<?php echo base_url('tours/' . $value['slug']) ?>">
			                                <?php if($value['image']){ ?>
												<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']) ?>" alt="image">
			                                <?php }else{ ?>
												<img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
			                                <?php } ?>
										</a>
									</div>
									<div class="head">
										<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
										<h2 class="post-title"><?php echo $value['title']; ?></h2>
										<h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
									</div>
									<div class="body">
										<p class="post-description"><?php echo $value['description']; ?></p>
									</div>
									<div class="foot">
										<ul class="list-inline">
											<li>
												<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-primary" role="button">
													<?php echo $this->lang->line("book-now"); ?>
												</a>
											</li>
											<li>
												<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
													<?php echo $this->lang->line("expore-now"); ?>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
		        	<?php endif ?>
		        <?php endforeach; ?>
		    <?php endif; ?>
	    </div>
	</div>
</section>
<section id="gallery" class="section container-fluid">
	<div class="container">
		<div class="row">
			<div class="grid">
				<div class="grid-sizer"></div>
				<div class="grid-item grid-item-width-2 grid-item-height-2 col-xs-12">
					<div class="mask">
						<img src="<?php echo base_url('assets/upload/post_category/'.$vietnam['image']); ?>" alt="blogs image">
						<div class="overlay"></div>
						<div class="content">
							<h2 class="post-title">
								<a href="<?php echo base_url('chuyen-muc/'.$vietnam['slug']) ?>" role="button">
                                    <?php echo $vietnam['post_category_title'];?>
								</a>
							</h2>
						</div>
					</div>
				</div>
                <?php foreach ($vietnam_menu as $key => $value): ?>
                    <?php $class = '';
                    switch ($key){
                        case 0:
                            $class = 'grid-item-width-1 grid-item-height-2';
                            break;
                        case 1:
                            $class = 'grid-item-width-1 grid-item-height-2';
                            break;
                        case 2:
                            $class = 'grid-item-width-1 grid-item-height-2';
                            break;
                        case 3:
                            $class = 'grid-item-height-1 grid-item-height-2';
                            break;
                        case 4:
                            $class = 'grid-item-width-2 grid-item-height-2';
                            break;
                    }?>
					<div class="grid-item <?php echo $class ?> col-xs-12">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/post_category/'.$value['image']); ?>" alt="blogs image">
							<div class="overlay"></div>
							<div class="content">
								<?php if ($key == 3): ?>
									<h2 class="post-title">
	                                        <?php echo $value['title'];?>
									</h2>
									<p>
										<?php echo $value['content'];?>
									</p>
									<h2 class="post-title">
										<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button">
	                                       <?php echo $this->lang->line("read-mores"); ?>
										</a>
									</h2>
								<?php else: ?>
									<h2 class="post-title">
										<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button">
	                                        <?php echo $value['title'];?>
										</a>
									</h2>
								<?php endif ?>
							</div>
						</div>
					</div>
					<?php if ($key == 4): ?>
					<?php break; ?>
					<?php endif ?>
                <?php endforeach ?>
			</div>

		</div>
	</div>
</section>


<section id="gallery" class="section container-fluid">
	<div class="container">
		<div class="row">
			<div class="grid">
				<div class="grid-sizer"></div>
				<?php if (!empty($visa_menu['sub'])): ?>
					<div class="grid-item grid-item-width-2 grid-item-height-2 col-xs-12">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/post/'.$visa[0]['image']); ?>" alt="visa image">
							<div class="overlay"></div>
							<div class="content">
								<a href="<?php echo base_url('chuyen-muc/'.$visa_menu['sub'][0]['parent_slug']) ?>" role="button">
									<h3 class="post-subtitle"><?php echo $visa_menu['sub'][0]['parent_title']; ?></h3>
								</a>
								<a href="<?php echo base_url('bai-viet/'.$visa_menu['sub'][0]['slug']) ?>" role="button">
									<h1 class="post-title"><?php echo $visa_menu['sub'][0]['title']; ?></h1>
								</a>
							</div>
						</div>
					</div>
				<?php endif ?>
				<?php if (!empty($news_menu['sub'])): ?>
					<div class="grid-item grid-item-width-2 grid-item-height-2 col-xs-12">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/post/'.$news[0]['image']); ?>" alt="news image">
							<div class="overlay"></div>
							<div class="content">
								<a href="<?php echo base_url('chuyen-muc/'.$news_menu['sub'][0]['parent_slug']) ?>" role="button">
									<h3 class="post-subtitle"><?php echo $news_menu['sub'][0]['parent_title']; ?></h3>
								</a>
								<a href="<?php echo base_url('bai-viet/'.$news_menu['sub'][0]['slug']) ?>" role="button">
									<h1 class="post-title"><?php echo $news_menu['sub'][0]['title']; ?></h1>
								</a>
							</div>
						</div>
					</div>
				<?php endif ?>
			</div>

		</div>
	</div>
</section>



<section id="blog" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row">
			<div class="item">
				<div class="inner cover">
					<div class="mask col-md-6">
						<div class="overlay">
							<h1><?php echo $blog['post_category_title'];?></h1>
							<p><?php echo $blog['post_category_content'];?></p>
						</div>
						<div class="foot">
							<ul class="list-inline">
								<?php if (!empty($blog_category)): ?>
									<?php foreach ($blog_category as $key => $value): ?>
										<li>
											<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" class="btn btn-default" role="button">
												<?php echo $value['title']; ?>
											</a>
										</li>
									<?php endforeach ?>
								<?php endif ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
		    <?php if (!empty($blog_menu['sub'])): ?>
		        <?php foreach ($blog_menu['sub'] as $key => $value): ?>
						<div class="item col-md-4">
							<div class="inner">
								<div class="wrapper">
									<div class="head">
										<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
										<h2 class="post-title"><?php echo $value['title']; ?></h2>
									</div>
									<div class="body">
										<p class="post-date"><?php echo date("d/m/Y",strtotime($value['created_at']));?></p>
									</div>
									<div class="mask">
										<a href="<?php echo base_url('bai-viet/' . $value['slug']) ?>">
			                                <?php if($value['image']){ ?>
												<img src="<?php echo base_url('/assets/upload/post/'.$value['image']) ?>" alt="image">
			                                <?php }else{ ?>
												<img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
			                                <?php } ?>
										</a>
									<div class="foot">
												<a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>" class="btn btn-primary" role="button">
													<?php echo $this->lang->line("view-detail"); ?>
												</a>
									</div>
									</div>
								</div>
							</div>
						</div>
		        <?php endforeach; ?>
		    <?php endif; ?>
	    </div>
	</div>
</section>

