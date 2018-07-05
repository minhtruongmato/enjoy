<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Diamond Tour</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>fontAwesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/') ?>client.css">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/rateit.css') ?>">

	<!-- jQuery 3 -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="<?php echo site_url('assets/lib/') ?>bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/daterangepicker.css">

    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap-datepicker.min.css">
	<!-- Main Js -->
	<script src="<?php echo site_url('assets/js/') ?>main.js"></script>
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.validate.min.js"></script>
	<!-- Easing JS -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.easing.1.3.js"></script>

	<!-- Waypoint Js -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.waypoints.min.js"></script>
	<script src="<?php echo site_url('assets/js/jquery.rateit.js') ?>"></script>


</head>

<body>
<section id="page">
	<header>
		<section id="top-nav" class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="left col-sm-6 col-xs-12">
						<ul>
							<li>
								<a href="<?php echo base_url('about/')?>">
									<i class="fa fa-user-circle-o" aria-hidden="true"></i> <?php echo $this->lang->line('about') ?>
								</a>
							</li>
							<li>
								<a href="<?php echo base_url('contact/')?>">
									<i class="fa fa-phone" aria-hidden="true"></i> <?php echo $this->lang->line('contact') ?>
								</a>
							</li>
						</ul>
					</div>
					<div class="right col-sm-6 col-xs-12">
						<ul>
							<li>
								<a href="mailto: info@diamondtour.vn" target="_blank">
									<i class="fa fa-envelope-o" aria-hidden="true"></i> info@diamondtour.vn
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<nav id="main-nav" class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="left col-sm-3 col-xs-6">
						<a href="<?php echo base_url('') ?>">
							<img src="<?php echo site_url('assets/img/')?>logo-W.png" alt="logo Diamond">
						</a>
					</div>
					<div class="right col-sm-9 hidden-xs">
						<ul>
				<li class="menu-tabs">
					<a href="<?php echo base_url('danh-muc/'.$packages['slug']) ?>">
						<?php echo $packages['product_category_title']; ?><span class="caret"></span>
					</a>
					<div class="menu-tabs-expand menu-expand">
						<div class="row">
							<div class="left col-md-3 col-sm-4 col-xs-12">
								<ul>
									<li>
										<?php echo $this->lang->line('top-packages') ?>
										<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
														aria-hidden="true"></span>
										<ul>
											<?php foreach ($top_packages as $k => $val): ?>
												<li>
													<div class="mask">
														<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
													</div>
													<a href="<?php echo base_url('tours/'.$val['slug']); ?>"><?php echo $val['title']; ?></a>
												</li>
												<?php if ($k == 5): ?>
													<?php break;?>
												<?php endif ?>
											<?php endforeach ?>
										</ul>
									</li>
									<?php foreach ($packages_menu as $key => $value): ?>
										<li>
											<?php echo $value['title']; ?>
											<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
															aria-hidden="true"></span>
											<ul>
												<?php foreach ($value['sub'] as $k => $val): ?>
													<li>
														<div class="mask">
															<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
														</div>
														<a href="<?php echo base_url('tours/'.$val['slug']); ?>"><?php echo $val['title']; ?></a>
													</li>
												<?php endforeach ?>
											</ul>
										</li>
									<?php endforeach ?>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="menu-tabs">
					<a href="<?php echo base_url('danh-muc/'.$backpack['slug']) ?>">
						<?php echo $backpack['product_category_title']; ?> <span class="caret"></span>
					</a>
					<div class="menu-tabs-expand menu-expand">
						<div class="row">
							<div class="left col-md-3 col-sm-4 col-xs-12">
								<ul>
									<li>
										<?php echo $this->lang->line('top-backpack') ?>
										<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
														aria-hidden="true"></span>
										<ul>
											<?php foreach ($top_backpack as $k => $val): ?>
												<li>
													<div class="mask">
														<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
													</div>
													<a href="<?php echo base_url('tours/'.$val['slug']); ?>"><?php echo $val['title']; ?></a>
												</li>
												<?php if ($k == 5): ?>
													<?php break;?>
												<?php endif ?>
											<?php endforeach ?>
										</ul>
									</li>
									<?php foreach ($backpack_menu as $key => $value): ?>
										<li>
											<?php echo $value['title']; ?>
											<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
															aria-hidden="true"></span>
											<ul>
												<?php foreach ($value['sub'] as $k => $val): ?>
													<li>
														<div class="mask">
															<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
														</div>
														<a href="<?php echo base_url('tours/'.$val['slug']); ?>"><?php echo $val['title']; ?></a>
													</li>
												<?php endforeach ?>
											</ul>
										</li>
									<?php endforeach ?>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="menu-tabs">
					<a href="<?php echo base_url('chuyen-muc/'.$vietnam['slug']) ?>">
						<?php echo $vietnam['post_category_title']; ?> <span class="caret"></span>
					</a>
					<div class="menu-tabs-expand menu-expand">
						<div class="row">
							<?php foreach ($vietnam_menu as $key => $value): ?>
								<div class="left col-md-3 col-sm-4 col-xs-12">
									<div class="mask">
										<img src="<?php echo base_url('assets/upload/post_category/'.$value['image']); ?>">
									</div>
									<a href="<?php echo base_url('chuyen-muc/'.$value['slug']); ?>" style="color: black"><?php echo $value['title']; ?></a>
								</div>
							<?php endforeach ?>
						</div>
					</div>
				</li>

				<li class="menu-dropdown">
					<a href="<?php echo base_url('chuyen-muc/'.$visa_menu['slug']); ?>">
						<?php echo $visa_menu['post_category_title'];?>
						<?php if (!empty($visa_menu['sub'])): ?>
							<span class="caret">
						<?php endif ?>
					</a>
					<?php if(!empty($visa_menu['sub'])): ?>
						<div class="menu-dropdown-expand menu-expand">
							<div class="row">
								<?php foreach ($visa_menu['sub'] as $key => $value): ?>
									<div class="media col-sm-6 col-xs-12">
										<div class="media-left">
											<div class="mask">
												<img class="media-object" src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="service air tickets">
											</div>
										</div>
										<div class="media-body">
											<a href="javascript:void(0);">
												<h3 class="media-heading"><?php echo $this->lang->line('registration-form') ?></h3>
											</a>
											<p><?php echo $value['description'];?></p>
											<a href="<?php echo base_url('bai-viet/'.$value['slug']); ?>" class="btn btn-primary" role="button">
		                                        <?php echo $this->lang->line('explore') ?>
											</a>
										</div>
									</div>
									<?php if ($key == 1): ?>
										<?php break; ?>
									<?php endif ?>
								<?php endforeach ?>
							</div>
						</div>
					<?php endif; ?>
				</li>
				<li class="menu-dropdown">
					<a href="<?php echo base_url('chuyen-muc/'.$news_menu['slug']); ?>">
						<?php echo $news_menu['post_category_title'];?>
						<?php if (!empty($news_menu['sub'])): ?>
							<span class="caret">
						<?php endif ?>
					</a>
					<?php if(!empty($news_menu['sub'])): ?>
						<div class="menu-dropdown-expand menu-expand">
							<div class="row">
								<?php foreach ($news_menu['sub'] as $key => $value): ?>
									<div class="media col-sm-6 col-xs-12">
										<div class="media-left">
											<div class="mask">
												<img class="media-object" src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="service air tickets">
											</div>
										</div>
										<div class="media-body">
											<a href="javascript:void(0);">
												<h3 class="media-heading"><?php echo $this->lang->line('registration-form') ?></h3>
											</a>
											<p><?php echo $value['description'];?></p>
											<a href="<?php echo base_url('bai-viet/'.$value['slug']); ?>" class="btn btn-primary" role="button">
		                                        <?php echo $this->lang->line('explore') ?>
											</a>
										</div>
									</div>
									<?php if ($key == 1): ?>
										<?php break; ?>
									<?php endif ?>
								<?php endforeach ?>
							</div>
						</div>
					<?php endif; ?>
				</li>
				<li class="menu-dropdown">
					<a href="<?php echo base_url('chuyen-muc/'.$blog_menu['slug']); ?>">
						<?php echo $blog_menu['post_category_title'];?> 
						<?php if (!empty($blog_menu['sub'])): ?>
							<span class="caret">
						<?php endif ?>
					</a>
					<?php if(!empty($blog_menu['sub'])): ?>
						<div class="menu-dropdown-expand menu-expand">
							<div class="row">
								<?php foreach ($blog_menu['sub'] as $key => $value): ?>
									<div class="media col-sm-6 col-xs-12">
										<div class="media-left">
											<div class="mask">
												<img class="media-object" src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="service air tickets">
											</div>
										</div>
										<div class="media-body">
											<a href="javascript:void(0);">
												<h3 class="media-heading"><?php echo $this->lang->line('registration-form') ?></h3>
											</a>
											<p><?php echo $value['description'];?></p>
											<a href="<?php echo base_url('bai-viet/'.$value['slug']); ?>" class="btn btn-primary" role="button">
		                                        <?php echo $this->lang->line('explore') ?>
											</a>
										</div>
									</div>
									<?php if ($key == 1): ?>
										<?php break; ?>
									<?php endif ?>
								<?php endforeach ?>
							</div>
						</div>
					<?php endif; ?>
				</li>
				
			</ul>
					</div>
					<div class="btn-expand visible-xs col-xs-6">
						<button class="btn btn-primary" id="btn-expand">
							<i class="fa fa-bars" aria-hidden="false"></i>
						</button>
					</div>
				</div>
			</div>
		</nav>
	</header>
</section>
