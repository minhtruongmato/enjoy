<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ENJOY VIETNAM | Diamond Tour</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap.min.css">
    <!-- Font Open Sans -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>fontAwesome/css/font-awesome.min.css">
	<!-- Main Style -->
	<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>main.css">

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

	<!--Favicon-->
	<link rel="shortcut icon" type="image/png" href="<?php echo site_url('assets/img/favicon.png') ?>"/>


</head>

<body>
<div id="fb-root"></div>
<script>
    <?php
        $share_button_lang = 'en_US';
        if($lang == 'cn'){
            $share_button_lang = 'zh_CN';
        }elseif($lang == 'sc'){
            $share_button_lang = 'zh_CN';
        }
    ?>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/<?php echo $share_button_lang; ?>/sdk.js#xfbml=1&version=v3.0&appId=139238366917004&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<section id="page">
	<header>
		<input type="hidden" name="language" id="language" value="<?php echo $lang;?>">
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
								<a href="" class="change-language" data-language="en">
									<!-- <img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag Vietnam">  -->
									English
								</a>
							</li>
							<li>
								<a href="" class="change-language" data-language="cn">
									<!-- <img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag GB">  -->
									繁體中文
								</a>
							</li>
							<li>
								<a href="" class="change-language" data-language="sc">
									<!-- <img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag GB">  -->
									简体中文
								</a>
							</li>
							<li>
								<a href="mailto: info@enjoyvietnam.tours" target="_blank">
									<i class="fa fa-envelope-o" aria-hidden="true"></i> info@enjoyvietnam.tours
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
					<div class="left col-sm-2 col-xs-6">
						<a href="<?php echo base_url('') ?>">
							<img src="<?php echo site_url('assets/img/')?>logo-W.png" alt="logo Diamond">
						</a>
					</div>
					<div class="right col-sm-10 hidden-xs">
						<ul>
							<li class="menu-dropdown">
								<a href="<?php echo base_url(''); ?>">
									<?php echo $this->lang->line('home') ?>
								</a>
							</li>
							<li class="menu-tabs">
								<a href="<?php echo base_url('danh-muc/'.$packages['slug']) ?>">
									<?php echo $packages['product_category_title']; ?><span class="caret"></span>
								</a>
								<div class="menu-tabs-expand menu-expand" style="margin: 0px;">
									<div class="row">
										<div class="left col-md-3 col-sm-4 col-xs-12">
											<ul style="margin-left: 0px;">
												<li class="menu-href active" >
													<span class="menu-href" href="<?php echo base_url('danh-muc/top-10-vietnam-tours'); ?>">
														<?php echo $this->lang->line('top-packages') ?>
													</span>
													<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
																	aria-hidden="true"></span>
													<ul>
														<?php foreach ($top_packages as $k => $val): ?>
															<li>
																<div class="mask">
																	<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
																	<div class="tour-badge">
		                                                                <?php if (!empty($val['hot'])): ?>
																			<span class="badge "><i class="fa fa-location-arrow" aria-hidden="true"></i><?php echo $this->lang->line('tour-hot-short') ?></span>
		                                                                <?php endif ?>
		                                                                <?php if (!empty($val['bestselling'])): ?>
																			<span class="badge "><i class="fa fa-star" aria-hidden="true"></i><?php echo $this->lang->line('tour-best-sell-short') ?></span>
		                                                                <?php endif ?>
		                                                                <?php if (!empty($val['showpromotion']) && !empty($val['percen']) && !empty($val['pricepromotion'])): ?>
																			<span class="badge "><i class="fa fa-tags" aria-hidden="true"></i><?php echo $this->lang->line('tour-discount-short') ?></span>
		                                                                <?php endif ?>
																	</div>
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

													<li class="menu-href" >
														<span class="menu-href" href="<?php echo base_url('danh-muc/'.$value['slug']); ?>">
															<?php echo $value['title']; ?>
														</span>
														<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
																		aria-hidden="true"></span>
														<ul>
															<?php foreach ($value['sub'] as $k => $val): ?>
																<li>
																	<div class="mask">
																		<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
																		<div class="tour-badge">
			                                                                <?php if (!empty($val['hot'])): ?>
																				<span class="badge "><i class="fa fa-location-arrow" aria-hidden="true"></i><?php echo $this->lang->line('tour-hot-short') ?></span>
			                                                                <?php endif ?>
			                                                                <?php if (!empty($val['bestselling'])): ?>
																				<span class="badge "><i class="fa fa-star" aria-hidden="true"></i><?php echo $this->lang->line('tour-best-sell-short') ?></span>
			                                                                <?php endif ?>
			                                                                <?php if (!empty($val['showpromotion']) && !empty($val['percen']) && !empty($val['pricepromotion'])): ?>
																				<span class="badge "><i class="fa fa-tags" aria-hidden="true"></i><?php echo $this->lang->line('tour-discount-short') ?></span>
			                                                                <?php endif ?>
																		</div>
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
												<li class="menu-href active" >
													<span class="menu-href" href="<?php echo base_url('danh-muc/top-10-tours'); ?>">
														<?php echo $this->lang->line('top-backpack') ?>
													</span>
													<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
																	aria-hidden="true"></span>
													<ul>
														<?php foreach ($top_backpack as $k => $val): ?>
															<li>
																<div class="mask">
																	<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
																	<div class="tour-badge">
		                                                                <?php if (!empty($val['hot'])): ?>
																			<span class="badge "><i class="fa fa-location-arrow" aria-hidden="true"></i><?php echo $this->lang->line('tour-hot-short') ?></span>
		                                                                <?php endif ?>
		                                                                <?php if (!empty($val['bestselling'])): ?>
																			<span class="badge "><i class="fa fa-star" aria-hidden="true"></i><?php echo $this->lang->line('tour-best-sell-short') ?></span>
		                                                                <?php endif ?>
		                                                                <?php if (!empty($val['showpromotion']) && !empty($val['percen']) && !empty($val['pricepromotion'])): ?>
																			<span class="badge "><i class="fa fa-tags" aria-hidden="true"></i><?php echo $this->lang->line('tour-discount-short') ?></span>
		                                                                <?php endif ?>
																	</div>
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
													<li class="menu-href" >
														<span class="menu-href" href="<?php echo base_url('danh-muc/'.$value['slug']); ?>">
															<?php echo $value['title']; ?>
														</span>
														<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
																		aria-hidden="true"></span>
														<ul>
															<?php foreach ($value['sub'] as $k => $val): ?>
																<li>
																	<div class="mask">
																		<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']); ?>">
																		<div class="tour-badge">
			                                                                <?php if (!empty($val['hot'])): ?>
																				<span class="badge "><i class="fa fa-location-arrow" aria-hidden="true"></i><?php echo $this->lang->line('tour-hot-short') ?></span>
			                                                                <?php endif ?>
			                                                                <?php if (!empty($val['bestselling'])): ?>
																				<span class="badge "><i class="fa fa-star" aria-hidden="true"></i><?php echo $this->lang->line('tour-best-sell-short') ?></span>
			                                                                <?php endif ?>
			                                                                <?php if (!empty($val['showpromotion']) && !empty($val['percen']) && !empty($val['pricepromotion'])): ?>
																				<span class="badge "><i class="fa fa-tags" aria-hidden="true"></i><?php echo $this->lang->line('tour-discount-short') ?></span>
			                                                                <?php endif ?>
																		</div>
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
										<div class="col-xs-12" style="padding-top:20px ">
											<?php foreach ($vietnam_menu as $key => $value): ?>
												<div class="left col-md-<?php echo ($key < 2)?'6':'4';?> col-xs-12">
													<div class="vietnam">
														<div class="mask">
															<img src="<?php echo base_url('assets/upload/post_category/'.$value['image']); ?>">
														</div>
														<a href="<?php echo base_url('chuyen-muc/'.$value['slug']); ?>"><?php echo $value['title']; ?></a>
													</div>
												</div>
											<?php endforeach ?>
										</div>
									</div>
								</div>
							</li>

							<li class="menu-dropdown">
								<a href="<?php echo base_url('chuyen-muc/'.$visa_menu['slug']); ?>">
									<?php echo $visa_menu['post_category_title'];?>
									<!-- <?php if (!empty($visa_menu['sub'])): ?>
										<span class="caret">
									<?php endif ?> -->
								</a>
								<!-- <?php if(!empty($visa_menu['sub'])): ?>
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
								<?php endif; ?> -->
							</li>
							<li class="menu-dropdown">
								<a href="<?php echo base_url('chuyen-muc/'.$news_menu['slug']); ?>">
									<?php echo $news_menu['post_category_title'];?>
									<!-- <?php if (!empty($news_menu['sub'])): ?>
										<span class="caret">
									<?php endif ?> -->
								</a>
								<!-- <?php if(!empty($news_menu['sub'])): ?>
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
								<?php endif; ?> -->
							</li>
							<li class="menu-dropdown">
								<a href="<?php echo base_url('chuyen-muc/'.$blog['slug']); ?>">
									<?php echo $blog['post_category_title'];?> 
									<?php if (!empty($blog_menu)): ?>
										<span class="caret">
									<?php endif ?>
								</a>
								<?php if(!empty($blog_menu)): ?>
									<div class="menu-dropdown-expand menu-expand">
										<div class="row">
												<div class="media col-sm-4 col-xs-12">
													<div class="media-left">
														<div class="mask">
															<img class="media-object" src="<?php echo base_url('assets/upload/localtion/'.$location_menu[0]['slug'].'/'.$location_menu[0]['image']); ?>" alt="service air tickets">
														</div>
													</div>
													<div class="media-body">
														<a href="<?php echo base_url('location'); ?>">
															<h3 class="media-heading"><?php echo $this->lang->line('location') ?></h3>
														</a>
														<p><?php echo $location_menu[0]['content'];?></p>
														<a href="<?php echo base_url('location'); ?>" class="btn btn-primary" role="button">
					                                        <?php echo $this->lang->line('explore') ?>
														</a>
													</div>
												</div>
											<?php foreach ($blog_menu as $key => $value): ?>
												<div class="media col-sm-4 col-xs-12">
													<div class="media-left">
														<div class="mask">
															<img class="media-object" src="<?php echo base_url('assets/upload/post_category/'.$value['image']); ?>" alt="service air tickets">
														</div>
													</div>
													<div class="media-body">
														<a href="<?php echo base_url('chuyen-muc/'.$value['slug']); ?>">
															<h3 class="media-heading"><?php echo $value['title'];?> </h3>
														</a>
														<p><?php echo $value['content'];?></p>
														<a href="<?php echo base_url('chuyen-muc/'.$value['slug']); ?>" class="btn btn-primary" role="button">
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
		<div class="container-fluid visible-xs">
			<div id="nav-device">
				<div class="head">
					<a href="javascript:void(0);" class="pull-right" id="nav-close">
						<i class="fa fa-close fa-2x" aria-hidden="false"></i>
					</a>
				</div>
				<div class="body">
					<div class="panel-group" id="main-nav-side" role="tablist" aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="homepage">
								<h4 class="panel-title">
									<a href="<?php echo site_url('') ?>" role="button">
										<i class="fa fa-home" aria-hidden="true"></i> <?php echo $this->lang->line('home') ?>
									</a>
								</h4>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="expand-domestic-heading">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#main-nav-side" href="#domestic" aria-expanded="true" aria-controls="expand-domestic-heading">
										<?php echo $packages['product_category_title']; ?><span class="caret"></span>
									</a>
								</h4>
							</div>
							<div id="domestic" class="panel-collapse collapse" role="tabpanel" aria-labelledby="expand-packages-heading">
								<div class="panel-body">
									<ul>
										<li>
											<a href="<?php echo base_url('danh-muc/top-10-vietnam-tours'); ?>">
												<h3><?php echo $this->lang->line('top-packages') ?></h3>
											</a>
										</li>
										<?php if (!empty($packages_menu)): ?>
											<?php foreach ($packages_menu as $key => $val): ?>
												<li>
													<a href="<?php echo base_url('danh-muc/'.$val['slug']); ?>">
														<h3><?php echo $val['title']; ?></h3>
													</a>
												</li>
											<?php endforeach ?>
										<?php endif ?>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="expand-international-heading">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#main-nav-side" href="#international" aria-expanded="false" aria-controls="expand-international-heading">
	                                    <?php echo $backpack['product_category_title']; ?><span class="caret"></span>
									</a>
								</h4>
							</div>
							<div id="international" class="panel-collapse collapse" role="tabpanel" aria-labelledby="expand-international-heading">
								<div class="panel-body">
									<ul>
										<li>
											<a href="<?php echo base_url('danh-muc/top-10-tours'); ?>">
												<h3><?php echo $this->lang->line('top-backpack') ?></h3>
											</a>
										</li>
										<?php if (!empty($backpack_menu)): ?>
											<?php foreach ($backpack_menu as $key => $val): ?>
												<li>
													<a href="<?php echo base_url('danh-muc/'.$val['slug']); ?>">
														<h3><?php echo $val['title']; ?></h3>
													</a>
												</li>
											<?php endforeach ?>
										<?php endif ?>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="expand-vietnam-heading">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#main-nav-side" href="#vietnam" aria-expanded="false" aria-controls="expand-international-heading">
	                                    <?php echo $vietnam['post_category_title'] ?><span class="caret"></span>
									</a>
								</h4>
							</div>
							<div id="vietnam" class="panel-collapse collapse" role="tabpanel" aria-labelledby="expand-vietnam-heading">
								<div class="panel-body">
									<ul>
										<?php if (!empty($vietnam_menu)): ?>
											<?php foreach ($vietnam_menu as $key => $val): ?>
												<li>
													<a href="<?php echo base_url('chuyen-muc/'.$val['slug']); ?>">
														<h3><?php echo $val['title']; ?></h3>
													</a>
												</li>
											<?php endforeach ?>
										<?php endif ?>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="expand-visa-heading">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="" data-parent="#main-nav-side" href="<?php echo base_url('chuyen-muc/'.$visa_menu['slug']);?>" aria-expanded="true" aria-controls="expand-visa-heading">
	                                    <?php echo $visa_menu['post_category_title'] ?>
									</a>
								</h4>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="expand-news-heading">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="" data-parent="#main-nav-side" href="<?php echo base_url('chuyen-muc/'.$news_menu['slug']);?>" aria-expanded="true" aria-controls="expand-news-heading">
	                                    <?php echo $news_menu['post_category_title'] ?>
									</a>
								</h4>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="expand-blog-heading">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#main-nav-side" href="#blog" aria-expanded="false" aria-controls="expand-international-heading">
	                                    <?php echo $blog['post_category_title'] ?><span class="caret"></span>
									</a>
								</h4>
							</div>
							<div id="blog" class="panel-collapse collapse" role="tabpanel" aria-labelledby="expand-blog-heading">
								<div class="panel-body">
									<ul>
										<li>
											<a href="<?php echo base_url('location'); ?>">
												<h3 class="media-heading"><?php echo $this->lang->line('location') ?></h3>
											</a>
										</li>
										<?php if (!empty($blog_menu)): ?>
											<?php foreach ($blog_menu as $key => $val): ?>
												<li>
													<a href="<?php echo base_url('chuyen-muc/'.$val['slug']); ?>">
														<h3><?php echo $val['title']; ?></h3>
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

				<div class="foot">
					<ul>
						<li>
							<a href="" class="change-language" data-language="en">
								<!-- <img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag Vietnam">  -->
								English
							</a>
						</li>
						<li>
							<a href="" class="change-language" data-language="cn">
								<!-- <img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag GB">  -->
								繁體中文
							</a>
						</li>
						<li>
							<a href="" class="change-language" data-language="sc">
								<!-- <img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag GB">  -->
								简体中文
							</a>
						</li>
					</ul>
					<ul>
						<li>
							<label>
								<i class="fa fa-phone" aria-hidden="true"></i> Hotline <br>
							</label>
							<h3>
								<a href="tel:0869 770 333">0869 770 333</a>
							</h3>
						</li>
						<li>
							<label>
								<i class="fa fa-envelope-o" aria-hidden="true"></i> Email <br>
							</label>
							<h3>
								<a href="mailto: info@enjoyvietnam.tours">info@enjoyvietnam.tours</a>
							</h3>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
</section>

<script>
    $("a[class='change-language']").click(function(){
        $.ajax({
            method: "GET",
            url: "<?php echo base_url('homepage/change_language'); ?>",
            data: {
                lang: $(this).data('language')
            },
            async: false,
            success: function(res){
                if(res.message == 'changed'){
                    window.location.reload();
                }
            },
            error: function(){

            }
        });
    });
</script>