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
							<img src="<?php echo base_url('/assets/upload/banner/'.$value['image']); ?>" alt="slide 2">
						</div>
						<div class="carousel-caption">
							<?php echo $value['title']; ?>
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

<section id="tour-intro" class="container-fluid section">
	<div class="container">
		<div class="row">
			<div class="left col-sm-6 col-xs-12">
				<div class="head">
					<h3>title</h3>
				</div>
				<div class="body">
					<p>content</p>
					<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
						<?php echo $this->lang->line('see-all') ?>
					</a>
				</div>
			</div>
			<div class="right col-sm-6 col-xs-12">
				<div class="row">
					<div class="item col-sm-4 col-xs-12">
						<div class="circle-border">
							<i class="fa fa-plane" aria-hidden="true"></i>
						</div>
						<h4>Transport</h4>
					</div>
					<div class="item col-sm-4 col-xs-12">
						<div class="circle-border">
							<i class="fa fa-compass" aria-hidden="true"></i>
						</div>
						<h4>Trip Guiding</h4>
					</div>
					<div class="item col-sm-4 col-xs-12">
						<div class="circle-border">
							<i class="fa fa-hotel" aria-hidden="true"></i>
						</div>
						<h4>Hotel Advisor</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
					<div class="item col-md-4 col-6 col-xs-12">
						<div class="mask">
							<img src="http://thuthuat123.com/uploads/2018/02/01/nhung-hinh-anh-buon-40_090557.jpg" alt="image">
							<div class="overview">
								<div class="head">
									<span class="sub-header">parent title</span>
									<h3>title</h3>
								</div>
								<div class="body">
									<h2 class="price">price</h2>
								</div>
							</div>
							<div class="content">
								<div class="head">
									<span class="sub-header">parent title</span>
									<h4><?php echo $value['title']; ?></h4>
									<h3 class="price">price</h3>
								</div>
								<div class="body">
									<table class="table">
										<tr>
											<td>Time</td>
											<td>dateimg</td>
										</tr>
										<tr>
											<td>Start</td>
											<td>
												date	
											</td>
										</tr>
									</table>
								</div>
								<div class="foot">
									<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
		                                <?php echo $this->lang->line('explore') ?>
									</a>
								</div>
							</div>
						</div>
					</div>
		</div>
	</div>
</section>

<section id="domestic" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row">
				<div class="item col-sm-3 col-xs-12">
					<div class="mask">
						<img src="http://thuthuat123.com/uploads/2018/02/01/nhung-hinh-anh-buon-40_090557.jpg" alt="image">
						<div class="top">
							<span class="sub-header">parent title</span>
							<span class="header">title</span>
						</div>
						<div class="bottom">
							<a href="<?php echo base_url('') ?>" class="btn btn-default" role="button">
								<?php echo $this->lang->line('explore') ?>
							</a>
						</div>
					</div>
				</div>
			<div class="item col-sm-3; ?> col-xs-12">
				<div class="head">
					<span style="font-size: 2em;"><?php echo $this->lang->line('domestic') ?></span>
				</div>
				<div class="body">
					<div>content</div>
				</div>
				<div class="foot">
					<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
                        <?php echo $this->lang->line('see-all') ?>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="international" class="container-fluid section tour-intro">
	<div class="container">
		<div class="row">
					<div class="item col-sm-3 col-xs-12">
						<div class="mask">
							<img src="http://thuthuat123.com/uploads/2018/02/01/nhung-hinh-anh-buon-40_090557.jpg" alt="image">
							<div class="top">
								<span class="sub-header">parent title</span>
								<span class="header">title</span>
							</div>
							<div class="bottom">
								<a href="<?php echo base_url('') ?>" class="btn btn-default" role="button">
	                                <?php echo $this->lang->line('explore') ?>
								</a>
							</div>
						</div>
					</div>

			<div class="item col-sm-<?php echo (!empty($tour_international))?(12 - count($tour_international)*3): '12'; ?> col-xs-12">
				<div class="head">
					<span style="font-size: 2em;"><?php echo $this->lang->line('international') ?></span>
				</div>
				<div class="body">
					<div>content</div>
				</div>
				<div class="foot">
					<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
                        <?php echo $this->lang->line('see-all') ?>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="tour-request" class="container-fluid section" style="background-image: url('https://images.unsplash.com/photo-1523698157635-f68771d9e761?ixlib=rb-0.3.5&s=332933132e5bfedb487304d4978df2c6&auto=format&fit=crop&w=2690&q=80');">
	<div class="overlay">
		<div class="container">
			<div class="head">
				<h1><?php echo $this->lang->line('tour-request-title') ?></h1>
			</div>
			<div class="body">
				<h4><?php echo $this->lang->line('tour-request-content') ?></h4>
			</div>
			<div class="foot">
				<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
                    <?php echo $this->lang->line('tour-request') ?>
				</a>
			</div>
		</div>
	</div>
</section>

<section id="services" class="section container">
	<div class="section-header">
		<div class="row">
			<div class="col-sm-6 col-xs-12">
				<h3>title</h3>
				<p>content</p>
			</div>
		</div>
	</div>
	<div class="row">
			<div class="item col-sm-6 col-xs-12">
				<div class="mask">
					<img src="http://thuthuat123.com/uploads/2018/02/01/nhung-hinh-anh-buon-40_090557.jpg" alt="blogs image">
					<div class="content">
						<h4 class="sub-header">title</h4>
						<a href="<?php echo base_url('') ?>">
							<h2 class="header">title</h2>
						</a>
					</div>
				</div>
			</div>
	</div>
</section>

<section id="visa" class="container-fluid section" style="background-image: url('<?php echo base_url('assets/upload/post_category/'.$visa['image']); ?>');">
	<div class="overlay">
		<div class="container">
			<div class="head">
				<h1>title</h1>
			</div>
			<div class="body">
				<h4>content</h4>
			</div>
			<div class="foot">
				<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
                    <?php echo $this->lang->line('explore') ?>
				</a>
			</div>
		</div>
	</div>
</section>

<section id="blogs" class="section container">
	<div class="section-header">
		<div class="row">
			<div class="col-sm-6 col-xs-12">
				<h3>title</h3>
				<p>content</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="item col-sm-4 col-xs-12">
			<div class="inner">
				<div class="mask">
					<img src="http://thuthuat123.com/uploads/2018/02/01/nhung-hinh-anh-buon-40_090557.jpg" alt="blogs image">
				</div>
				<div class="head">
					<h2>title</h2>
				</div>
				<div class="body">
					<p>description</p>
				</div>
				<div class="foot">
					<a href="<?php echo base_url('') ?>" class="btn btn-primary" role="button">
                        <?php echo $this->lang->line('tour-request') ?>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>

