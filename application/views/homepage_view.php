<!-- Homepage Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>homepage.css">
<!-- Slider JS -->
<script src="<?php echo site_url('assets/js/slider.js') ?>"></script>
<section id="slider" class="container-fluid">
	<div id="homepage-slider" class="carousel slide" data-ride="carousel">
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
										<a href="<?php echo base_url('tours/'.$value['slug']); ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line('book-now');?>
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
		<!-- Indicators -->
	<?php if (!empty($banner)): ?>
		<?php foreach ($banner as $key => $value): ?>
			<div data-target="#homepage-slider" data-slide-to="<?php echo $key; ?>" style="margin: 0px;padding: 0px;float: left;left: " class="col-md-3 col-sm-3 homepage-slider">
				<div class="item <?php echo ($key == 0)?'active' : ''; ?>">
					<div class="mask"  style="height: 200px;">
						<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']); ?>" alt="slide 2">
						<div class="banner">
							<h3 class="post-subtitle"><?php echo $value['title']; ?></h3>
							<p class="post-title"><?php echo $value['description']; ?></p>
						</div>
					</div>
				</div>
			</div>
		<?php endforeach ?>
	<?php endif ?>

</section>
<section id="international" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row category" style="margin-bottom: 30px;">
			<div class="item">
				<div>
					<div class="mask col-md-6">
						<div class="overlay">
							<h1><?php echo $packages['product_category_title'];?></h1>
							<p><?php echo $packages['product_category_content'];?></p>
						</div>
						<div class="foot">
							<ul class="list-inline">
								<li>
									<a href="<?php echo base_url('danh-muc/top-10-vietnam-tours') ?>" class="btn btn-default" role="button">
										<i class="fa fa-arrow-circle-right"></i>  <?php echo $this->lang->line('top-packages');?>
									</a>
								</li>
								<?php if (!empty($packages_menu)): ?>
									<?php foreach ($packages_menu as $key => $value): ?>
										<li>
											<a href="<?php echo base_url('danh-muc/'.$value['slug']) ?>" class="btn btn-default" role="button">
												<i class="fa fa-arrow-circle-right"></i>  <?php echo $value['title']; ?>
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
						<img src="<?php echo base_url('/assets/upload/product_category/'.$packages['slug'].'/'.json_decode($packages['image'])[count(json_decode($packages['image']))-1]); ?>" alt="packages cover image">
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
								<p><?php echo $packages['product_category_content'];?></p>
								<a href="<?php echo base_url('danh-muc/top-10-vietnam-tours') ?>" class="btn btn-default" role="button"><?php echo $this->lang->line('see-all-tour'); ?></a>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		    <?php if (!empty($tour_packages) && count($tour_packages)>1): ?>
		        <?php foreach ($tour_packages as $key => $value): ?>
					<?php if (count(json_decode($value['dateimg']))>0): ?>
						<?php $many = (count(json_decode($value['dateimg']))>1)?'s':''; ?>
					<?php endif ?>
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
										<div class="row">
											<div class="col-md-8 col-sm-8 col-xs-12">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
											</div>
											<?php if (isset($many)): ?>
												<div class="col-md-4 col-sm-4 col-xs-12 datetime" style="float: right;width: auto;">
													<h4 class="post-subtitle datetime"><?php echo count(json_decode($value['dateimg'])).' '.$this->lang->line('day').$many; ?> </h4>
												</div>
											<?php endif ?>
										</div>
										<div class="col-md-12">
											<h2 class="post-title"><?php echo $value['title']; ?></h2>
											<h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
										</div>
									</div>
									<div class="body">
										<div class="col-md-12">
											<p class="post-description"><?php echo $value['description']; ?></p>
										</div>
									</div>
									<div class="foot">
										<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line("expore-now"); ?>
										</a>
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

<section id="domestic" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row category" style="margin-bottom: 30px;">
			<div class="item">
				<div>
					<div class="mask col-md-6">
						<img src="<?php echo base_url('/assets/upload/product_category/'.$backpack['slug'].'/'.json_decode($backpack['image'])[count(json_decode($backpack['image']))-1]); ?>" alt="packages cover image">
					</div>
					<div class="mask col-md-6">
						<div class="overlay">
							<h1><?php echo $backpack['product_category_title'];?></h1>
							<p><?php echo $backpack['product_category_content'];?></p>
						</div>
						<div class="foot">
							<ul class="list-inline">
								<li>
									<a href="<?php echo base_url('danh-muc/top-10-tours') ?>" class="btn btn-default" role="button">
										<i class="fa fa-arrow-circle-right"></i>  <?php echo $this->lang->line('top-backpack');?>
									</a>
								</li>
								<?php if (!empty($backpack_menu)): ?>
									<?php foreach ($backpack_menu as $key => $value): ?>
										<li>
											<a href="<?php echo base_url('danh-muc/'.$value['slug']) ?>" class="btn btn-default" role="button">
												<i class="fa fa-arrow-circle-right"></i>  <?php echo $value['title']; ?>
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
								<p><?php echo $backpack['product_category_content'];?></p>
								<a href="<?php echo base_url('danh-muc/top-10-tours') ?>" class="btn btn-default" role="button"><?php echo $this->lang->line('see-all-tour'); ?></a>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		    <?php if (!empty($tour_backpack) && count($tour_backpack)>1): ?>
		        <?php foreach ($tour_backpack as $key => $value): ?>
					<?php if (count(json_decode($value['dateimg']))>0): ?>
						<?php $many = (count(json_decode($value['dateimg']))>1)?'s':''; ?>
					<?php endif ?>
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
										<div class="row">
											<div class="col-xs-8">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
											</div>
											<?php if (isset($many)): ?>
												<div class="col-xs-4 datetime" style="float: right;width: auto;">
													<h4 class="post-subtitle datetime"><?php echo count(json_decode($value['dateimg'])).' '.$this->lang->line('day').$many; ?> </h4>
												</div>
											<?php endif ?>
										</div>
										<div class="col-md-12">
											<h2 class="post-title"><?php echo $value['title']; ?></h2>
											<h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
										</div>
									</div>
									<div class="body">
										<div class="col-md-12">
											<p class="post-description"><?php echo $value['description']; ?></p>
										</div>
									</div>
									<div class="foot">
										<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line("expore-now"); ?>
										</a>
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
			<div class="grid col-md-6">
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
                            $class = 'grid-item-width-1 grid-item-height-2fr2';
                            break;
                        case 1:
                            $class = 'grid-item-width-1 grid-item-height-2fr2 cover';
                            break;
                        case 2:
                            $class = 'grid-item-width-1 grid-item-height-2fr2';
                            break;
                        case 3:
                            $class = 'grid-item-height-1 grid-item-height-2fr2';
                            break;
                        case 4:
                            $class = 'grid-item-width-2 grid-item-height-2';
                            break;
                    }?>
					<div class="grid-item <?php echo $class ?> col-xs-12">
						<div class="mask <?php echo  ($key == 1)?'cover':''; ?>">
							<img src="<?php echo base_url('assets/upload/post_category/'.$value['image']); ?>" alt="blogs image">
							<div class="overlay">
								<?php if ($key == 1): ?>
										<h2 class="post-title">
		                                        <?php echo $value['title'];?>
										</h2>
										<p>
											<?php echo $value['content'];?>
										</p>
										<h2 class="post-title">
											<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button" class="btn btn-default">
		                                       <?php echo $this->lang->line("read-mores"); ?>
											</a>
										</h2>
								<?php else: ?>
									<div class="content">
										<h2 class="post-title">
											<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button">
		                                        <?php echo $value['title'];?>
											</a>
										</h2>
									</div>
								<?php endif ?>
							</div>
						</div>
					</div>
					<?php if ($key == 1): ?>
						</div>
						<div class="grid col-md-6">
					<?php endif ?>
					<?php if ($key == 4): ?>
					<?php break; ?>
					<?php endif ?>
                <?php endforeach ?>
			</div>

		</div>
	</div>
</section>


<section id="visa-news" class="section container-fluid" class="visa-news">
	<div class="container">
		<div class="row">
			<div class="grid col-md-6 col-xs-12">
				<div class="grid-sizer"></div>
				<?php if (!empty($visa_menu['sub'])): ?>
					<div class="grid-item grid-item-width-2 grid-item-height-2fr2 col-xs-12">
						<div class="mask cover">
							<img src="<?php echo base_url('assets/upload/post/'.$visa[0]['image']); ?>" alt="visa image">
							<div class="overlay visa-news">
								<a href="<?php echo base_url('chuyen-muc/'.$visa_menu['sub'][0]['parent_slug']) ?>" role="button">
									<h1 class="post-subtitle"><?php echo $visa_menu['sub'][0]['parent_title']; ?></h1>
								</a>
								<a href="<?php echo base_url('bai-viet/'.$visa_menu['sub'][0]['slug']) ?>" role="button">
									<h3 class="post-title"><?php echo $visa_menu['sub'][0]['title']; ?></h3>
								</a>
								<h2 class="post-title bottom">
									<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button" class="btn btn-default">
                                       <?php echo $this->lang->line("read-mores"); ?>
									</a>
								</h2>
							</div>
						</div>
					</div>
				<?php endif ?>
			</div>
			<div class="grid col-md-6 col-xs-12">
				<?php if (!empty($news_menu['sub'])): ?>
					<div class="grid-item grid-item-width-2 grid-item-height-2fr2 col-xs-12">
						<div class="mask cover">
							<img src="<?php echo base_url('assets/upload/post/'.$news[0]['image']); ?>" alt="news image">
							<div class="overlay visa-news">
								<a href="<?php echo base_url('chuyen-muc/'.$news_menu['sub'][0]['parent_slug']) ?>" role="button">
									<h1 class="post-subtitle"><?php echo $news_menu['sub'][0]['parent_title']; ?></h1>
								</a>
								<a href="<?php echo base_url('bai-viet/'.$news_menu['sub'][0]['slug']) ?>" role="button">
									<h3 class="post-title"><?php echo $news_menu['sub'][0]['title']; ?></h3>
								</a>
								<h2 class="post-title bottom">
									<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button" class="btn btn-default">
                                       <?php echo $this->lang->line("read-mores"); ?>
									</a>
								</h2>
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
		<div class="row category">
			<div class="item">
				<div class="inner">
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
												<i class="fa fa-arrow-circle-right"></i>  <?php echo $value['title']; ?>
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
		    <?php if (!empty($blog_post['sub'])): ?>
		        <?php foreach ($blog_post['sub'] as $key => $value): ?>
						<div class="item col-md-4">
							<div class="inner cover">
									<div class="wrapper">
										<div class="mask">
											<div class="head">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
												<h2 class="post-title"><?php echo $value['title']; ?></h2>
												<p class="post-date"><?php echo date("d/m/Y",strtotime($value['created_at']));?></p>
											</div>
											<div class="body">
											</div>
											<div class="mask">
												<a href="<?php echo base_url('bai-viet/' . $value['slug']) ?>">
					                                <?php if($value['image']){ ?>
														<img src="<?php echo base_url('/assets/upload/post/'.$value['image']) ?>" alt="image">
					                                <?php }else{ ?>
														<img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
					                                <?php } ?>
												</a>
												<div class="overlay">
													<a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>" class="btn btn-default" role="button">
														<?php echo $this->lang->line("view-detail"); ?>
													</a>
												</div>
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

