<!-- Homepage Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>homepage.css">
<!-- GET WEATHER INFO -->
<?php
	$frontend_lang = '';
    switch ($lang) {
        case 'cn':
            $frontend_lang = 'zh_cn';
            break;
        
        case 'sc':
            $frontend_lang = 'zh_tw';
            break;
        
        default:
            $frontend_lang = 'en';
            break;
    }
?>
<script type="text/javascript">
    function to_slug(str,space="_"){
        str = str.toLowerCase();

        str = str.replace(/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/g, 'a');
        str = str.replace(/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/g, 'e');
        str = str.replace(/(ì|í|ị|ỉ|ĩ)/g, 'i');
        str = str.replace(/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/g, 'o');
        str = str.replace(/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/g, 'u');
        str = str.replace(/(ỳ|ý|ỵ|ỷ|ỹ)/g, 'y');
        str = str.replace(/(đ|ð)/g, 'd');

        str = str.replace(/([^0-9a-z-\s])/g, '');

        str = str.replace(/(\s+)/g, space);

        str = str.replace(/^-+/g, '');

        str = str.replace(/-+$/g, '');

        // return
        return str;
    }

	var list = {};
	var apiData = {};
	var i = 0;
	function temperature(id,lang){
        $.ajax({
            url: 'http://api.openweathermap.org/data/2.5/forecast?id='+id+'&mode=json&lang='+lang+'&APPID=279b4be6d54c8bf6ea9b12275a567156&cnt=3',
            type: 'GET',
            async: false,
        })
        .done(function(data) {
    		var key = to_slug(data.city.name);
            list[id] = key;
            apiData[id] = data;
            i++;
        })
        .fail(function() {
            console.log("error");
        });
    }
    temperature('1581129','<?php echo $frontend_lang;?>');
    temperature('1580578','<?php echo $frontend_lang;?>');
    temperature('1905468','<?php echo $frontend_lang;?>');
    temperature('1565033','<?php echo $frontend_lang;?>');

    temperature('1559970','<?php echo $frontend_lang;?>');
    temperature('1568839','<?php echo $frontend_lang;?>');
    temperature('1580410','<?php echo $frontend_lang;?>');
    temperature('1568574','<?php echo $frontend_lang;?>');

    temperature('1568769','<?php echo $frontend_lang;?>');
    temperature('1572151','<?php echo $frontend_lang;?>');
    temperature('1579008','<?php echo $frontend_lang;?>');
    $.ajax({
        url: '<?php echo base_url(); ?>homepage/fetch_weather_language?data=' + JSON.stringify(list),
        type: 'GET',
        success: function(response){
            var array = $.map(response.reponse, function(value, index) {
                return [value];
            });
            var count = 0;
            $.each(apiData, function(index, data){
                $('#banner-weather .line .content-weather').append('<div class="col-md-12 '+index+'" style="padding:0px; margin-bottom:10px;border-bottom:1px solid #CCC;"><div class="row"><div class="img col-md-3 col-ms-12 col-sm-12 col-xs-6" ><img src="http://openweathermap.org/img/w/'+data.list[2].weather[0].icon+'.png'+'" width="80px" alt=""></div><div class=" col-md-9 col-ms-12 col-sm-12 col-xs-6" style="padding-left:30px;"><h3 style="font-size:1em; text-transform:capitalize;font-weight:600;margin-bottom:0px;margin-top:15px;">' + array[count] + '</h3><p class="description" style="text-transform:capitalize;margin-bottom:0px;"></p><p class="nhietdo" style="margin-bottom:0px;"></p></div></div></div>');
                $("#banner-weather .line ."+index+" p.description").text(data.list[2].weather[0].description);
                $("#banner-weather .line ."+index+" p.nhietdo").text(Math.floor(data.list[2].main.temp_min/10)+'°C - '+Math.ceil(data.list[2].main.temp_max/10)+'°C');
                count++;
            })
        }
    });
</script>

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
											<?php echo $this->lang->line('booking');?>
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
			<div data-target="#homepage-slider" data-slide-to="<?php echo $key; ?>" style="margin: 0px;padding: 0px;float: left;" class="col-md-3 col-sm-3 homepage-slider">
				<div class="item <?php echo ($key == 0)?'active' : ''; ?>">
					<div class="mask"  style="height: 20vh;">
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
								<a href="<?php echo base_url('danh-muc/top-10-vietnam-tours') ?>" class="btn btn-default" role="button"><?php echo $this->lang->line('see-all'); ?></a>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		    <?php if (!empty($tour_packages) && count($tour_packages)>1): ?>
		        <?php foreach ($tour_packages as $key => $value): ?>
					<?php if (count(json_decode($value['dateimg']))>0): ?>
						<?php $many = (count(json_decode($value['dateimg']))>1  && $lang == 'en')?'s':''; ?>
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

										<!--BADGE DISCOUNT -->
                                        <?php if (!empty($value['pricepromotion']) && !empty($value['percen']) && !empty($value['showpromotion'])): ?>
											<div class="badge badge-discount">
												<div class="content">KM<br>-<?php echo $value['percen']; ?>%</div>
											</div>
                                        <?php endif ?>

										<!--BADGE SPECIAL -->
										<div class="badge badge-special">
                                            <?php if (!empty($value['hot'])): ?>
												<div id="tour-hot" class="">
													<img src="<?php echo site_url('assets/img/badge-tour-hot.png')?>" alt="badge tour hot">
												</div>
                                            <?php endif ?>
                                            <?php if (!empty($value['bestselling'])): ?>
												<div id="best-sell" class="">
													<img src="<?php echo site_url('assets/img/badge-best-sell.png')?>" alt="badge best sell">
												</div>
                                            <?php endif ?>
										</div>

									</div>
									<div class="head">
										<div class="row">
											<div class="col-md-8 col-sm-8 col-xs-12">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
											</div>
											<?php if (isset($many)): ?>
												<div class="col-md-4 col-sm-4 col-xs-12 datetime" style="float: right;width: auto;">
													<h4 class="post-subtitle datetime" style="padding:5px 0px;"><?php echo count(json_decode($value['dateimg'])).' '.$this->lang->line('day').$many; ?> </h4>
												</div>
											<?php endif ?>
										</div>
										<div class="col-md-12">
											<h2 class="post-title"><?php echo $value['title']; ?></h2>
											<h3 class="price">
												<?php if (!empty($value['pricepromotion']) && !empty($value['percen']) && !empty($value['showpromotion'])): ?>
													<?php echo number_format($value['pricepromotion']); ?> vnd
													<small class="price-original"><del><?php echo number_format($value['price']);?> vnd</del></small>
												<?php else: ?>
													<?php echo number_format($value['price']); ?> vnd
												<?php endif ?>
											</h3>
										</div>
									</div>
									<div class="body">
										<div class="col-md-12">
											<p class="post-description"><?php echo $value['description']; ?></p>
										</div>
									</div>
									<div class="foot">
										<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line('explore'); ?>
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
								<a href="<?php echo base_url('danh-muc/top-10-tours') ?>" class="btn btn-default" role="button"><?php echo $this->lang->line('see-all'); ?></a>
							</div>
						</div>
					</div>
				</div>
			<?php endif; ?>
		    <?php if (!empty($tour_backpack) && count($tour_backpack)>1): ?>
		        <?php foreach ($tour_backpack as $key => $value): ?>
					<?php if (count(json_decode($value['dateimg']))>0): ?>
						<?php $many = (count(json_decode($value['dateimg']))>1 && $lang == 'en')?'s':''; ?>
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

										<!--BADGE DISCOUNT -->
                                        <?php if (!empty($value['pricepromotion']) && !empty($value['percen']) && !empty($value['showpromotion'])): ?>
											<div class="badge badge-discount">
												<div class="content">KM<br>-<?php echo $value['percen']; ?>%</div>
											</div>
                                        <?php endif ?>

										<!--BADGE SPECIAL -->
										<div class="badge badge-special">
                                            <?php if (!empty($value['hot'])): ?>
												<div id="tour-hot" class="">
													<img src="<?php echo site_url('assets/img/badge-tour-hot.png')?>" alt="badge tour hot">
												</div>
                                            <?php endif ?>
                                            <?php if (!empty($value['bestselling'])): ?>
												<div id="best-sell" class="">
													<img src="<?php echo site_url('assets/img/badge-best-sell.png')?>" alt="badge best sell">
												</div>
                                            <?php endif ?>
										</div>

									</div>
									<div class="head">
										<div class="row">
											<div class="col-xs-7">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
											</div>
											<?php if (isset($many)): ?>
												<div class="col-xs-5 datetime" style="float: right;width: auto;">
													<h4 class="post-subtitle datetime" style="padding:5px 0px;"><?php echo count(json_decode($value['dateimg'])).' '.$this->lang->line('day').$many; ?> </h4>
												</div>
											<?php endif ?>
										</div>
										<div class="col-md-12">
											<h2 class="post-title"><?php echo $value['title']; ?></h2>
											<h3 class="price">
												<?php if (!empty($value['pricepromotion']) && !empty($value['percen']) && !empty($value['showpromotion'])): ?>
													<?php echo number_format($value['pricepromotion']); ?> vnd
													<small class="price-original"><del><?php echo number_format($value['price']);?> vnd</del></small>
												<?php else: ?>
													<?php echo number_format($value['price']); ?> vnd
												<?php endif ?>
												
											</h3>
										</div>
									</div>
									<div class="body">
										<div class="col-md-12">
											<p class="post-description"><?php echo $value['description']; ?></p>
										</div>
									</div>
									<div class="foot">
										<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
											<?php echo $this->lang->line('explore'); ?>
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

			<div class="left col-sm-9 col-xs-12 services-left">
				<div class="grid col-md-6">
					<div class="grid-sizer"></div>
					<div class="grid-item grid-item-width-2 grid-item-height-2 col-xs-12">
						<div class="mask covers">
							<img src="<?php echo base_url('assets/upload/post_category/'.$vietnam['image']); ?>" alt="blogs image">
							<div class="overlay">
								<div class="hover-mouse">
									<h2 class="post-title">
	                                        <?php echo $vietnam['post_category_title'];?>
									</h2>
									<p>
										<?php echo $vietnam['post_category_content'];?>
									</p>
									<h2 class="post-title">
										<a href="<?php echo base_url('chuyen-muc/'.$vietnam['slug']) ?>" role="button" class="btn btn-default">
	                                       <?php echo $this->lang->line("read-mores"); ?>
										</a>
									</h2>
								</div>
								<div class="content">
									<h2 class="post-title">
										<a href="<?php echo base_url('chuyen-muc/'.$vietnam['slug']) ?>" role="button">
	                                        <?php echo $vietnam['post_category_title'];?>
										</a>
									</h2>
								</div>
							</div>
						</div>
					</div>
                    <?php foreach ($vietnam_menu as $key => $value): ?>
                    <?php $class = '';
                    switch ($key){
                        case 0:
                            $class = 'grid-item-width-1 grid-item-height-2fr2 cover';
                            break;
                        case 1:
                            $class = 'grid-item-width-1 grid-item-height-2fr2 cover';
                            break;
                        case 2:
                            $class = 'grid-item-width-1 grid-item-height-2fr2 cover';
                            break;
                        case 3:
                            $class = 'grid-item-height-1 grid-item-height-2fr2 cover';
                            break;
                        case 4:
                            $class = 'grid-item-width-2 grid-item-height-2';
                            break;
                    }?>
					<div class="grid-item <?php echo $class ?> col-xs-12">
						<div class="mask <?php echo ($key == 4)?'covers':'cover'; ?>">
							<img src="<?php echo base_url('assets/upload/post_category/'.$value['image']); ?>" alt="blogs image">
							<div class="overlay">
								<div class="hover-mouse">
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
	                            </div>
									<div class="content">
										<h2 class="post-title">
											<a href="<?php echo base_url('chuyen-muc/'.$value['slug']) ?>" role="button">
                                                <?php echo $value['title'];?>
											</a>
										</h2>
									</div>
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
			<div class="right col-sm-3 col-xs-12 services-right">
				<div id="banner-weather">
					<h2 style="margin-top: 0px;"><?php echo $this->lang->line('weather'); ?></h2>
					<div class="row services-right"  style="overflow-y: scroll">
						<div class="item col-xs-12">
							<div class="line" style="padding-left: 0px;padding-right: 0px;">
								<div class="line-primary"></div>
								<div class="content-weather"></div>
							</div>
						</div>
					</div>
				</div>
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

<script>
	var height = $('.services-left').height();
	if(height > 750 && height < 1700){
		$('.row.services-right').height(($('.services-left').height()-$('#banner-weather h2').height()-30));
		$('.services-right .content-weather').height($('.services-left').height()-$('.services-right h2').height()-30);
	}
	$(document).ready(function(){
        var leftHeight = $('#gallery .row .left').height();
        //console.log(leftHeight);
        //$('#gallery .row .right').css('height' , leftHeight);
	})
</script>

