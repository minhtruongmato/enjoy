</section>
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="item col-sm-4 col-xs-12">
				<div class="left col-sm-12">
					<a href="<?php echo base_url('') ?>">
						<img src="<?php echo site_url('assets/img/')?>logo.png" alt="logo Diamond">
					</a>
					<h1>Diamond Tour</h1>
				</div>
			</div>
			<div class="item col-sm-4 col-xs-12">
				<div class="info">
					<label>
						<i class="fa fa-mobile-phone" aria-hidden="false"></i> Hotline
					</label>
					<a class="link-primary" href="tel:0869 770 333">
						<h2>0869 770 333</h2>
					</a>
				</div>
				<div class="info">
					<label>
						<i class="fa fa-phone" aria-hidden="false"></i> Tel
					</label>
					<a class="link-primary" href="tel:(024) 22 393 599">
						<h2>(024) 22 393 599</h2>
					</a>
				</div>
				<div class="info">
					<label>
						<i class="fa fa-envelope-o" aria-hidden="false"></i> Email
					</label>
					<a class="link-primary" href="mailto:info@enjoyvietnam.tours">
						<h2>info@enjoyvietnam.tours</h2>
					</a>
				</div>
			</div>
			<div class="item col-sm-4 col-xs-12">
				<div class="info">
					<label>
						<i class="fa fa-globe"></i> <?php echo $this->lang->line('follow') ?>
					</label>

					<ul class="list-inline">
						<li>
							<a href="" target="_blank">
								<i class="fa fa-2x fa-facebook-square" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fa fa-2x fa-twitter-square" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fa fa-2x fa-pinterest-square" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fa fa-2x fa-linkedin-square" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fa fa-2x fa-instagram" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fa fa-2x fa-youtube-square" aria-hidden="true"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<ul class="text-center list-inline">
				<li >
					<a href="<?php echo base_url('danh-muc/'.$packages['slug']); ?>">
						<?php echo $packages['product_category_title']; ?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('danh-muc/'.$backpack['slug']); ?>">
						<?php echo $backpack['product_category_title']; ?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('chuyen-muc/'.$vietnam['slug']); ?>">
						<?php echo $vietnam['post_category_title']; ?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('chuyen-muc/'.$visa_menu['slug']); ?>">
						<?php echo $visa_menu['post_category_title'];?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('chuyen-muc/'.$news_menu['slug']); ?>">
						<?php echo $news_menu['post_category_title'];?>
					</a>
				</li>
				<li>
					<a href="<?php echo base_url('chuyen-muc/'.$blog['slug']); ?>">
						<?php echo $blog['post_category_title'];?>
					</a>
				</li>
			</ul>

			<div class="copyright text-center">
				<b>&copy; 2018 Diamond Tour</b> | All Rights Reversed
			</div>
		</div>
	</div>
</footer>



<script src="<?php echo site_url('assets/lib/bootstrap/js/bootstrap-datepicker.min.js') ?>"></script>
<script src="<?php echo site_url('assets/lib/bootstrap/js/daterangepicker.js') ?>"></script>
<script src="<?php echo site_url('assets/js/') ?>main.js"></script>
<script src="<?php echo site_url('assets/js/') ?>client.js"></script>
<script type="text/javascript">
	$('.menu-tabs').hover(function(){
		$('li.menu-href').removeClass('active');
		$(this).find('li.menu-href').first().addClass('active');
	});
	$('li.menu-href').hover(function(){
		$('li.menu-href').removeClass('active');
		$(this).addClass('active');
	});
</script>
</body>
</html>
