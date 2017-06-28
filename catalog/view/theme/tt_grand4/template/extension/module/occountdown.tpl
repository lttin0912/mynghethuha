<script type="text/javascript">
	if (typeof OC == 'undefined') OC = { };
	OC.Countdown = {
		TEXT_YEARS 		: '<?php echo $text_years ?>',
		TEXT_MONTHS 	: '<?php echo $text_months ?>',
		TEXT_WEEKS 		: '<?php echo $text_weeks ?>',
		TEXT_DAYS 		: '<?php echo $text_days ?>',
		TEXT_HOURS 		: '<?php echo $text_hours ?>',
		TEXT_MINUTES 	: '<?php echo $text_minutes ?>',
		TEXT_SECONDS 	: '<?php echo $text_seconds ?>'
	};
</script>
<script type="text/javascript" src="catalog/view/javascript/jquery.countdown.js"></script>
<div class="ttcountdown_module countdown-container quickview-products">
<div class="countdown-title module-title"><h3 class="title-group"><?php echo $heading_title; ?></h3></div>
<div class="product-layout countdown-products">
	<div class="row">
	<div class="countdown-tab-content">
	<div class="countdown-product-inner">
    <?php foreach ($products as $product) : ?>
    <div class="timer-item item">
		<div class="item-inner ">
			<div class="images-container">
				<div class="image">
					<a href="<?php echo $product['href']; ?>"><img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
					<img class="image2" src="<?php echo $product['rotator_image'] ?>" alt="" /> </a>
				</div>
				<?php if(strtotime($product['date_end'])) { ?>
					<div id="Countdown<?php echo $product['product_id']?>" class="box-timer"></div>
					<?php } ?>
					<?php if(strtotime($product['date_end'])) { ?>
						<script type="text/javascript">

						$(function () {
							var austDay = new Date();
							austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
							$('#Countdown<?php echo $product['product_id'];?>').countdown({
								until: new Date(
									<?php echo date("Y",strtotime($product['date_end']))?>,
									<?php echo date("m",strtotime($product['date_end']))?> -1, 
									<?php echo date("d",strtotime($product['date_end']))?>,
									<?php echo date("H",strtotime($product['date_end']))?>,
									<?php echo date("i",strtotime($product['date_end']))?>, 
									<?php echo date("s",strtotime($product['date_end']))?>
									)
							});
						});
					</script>
				<?php } ?>
				<div class="button-group">
					<div class="addtolink-btn">
						<div class="btn-quick-view"></div>
						<div class="wishlist">
							<button class="btn-wishlist" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
								<span class="text-btn"><i class="lnr lnr-heart"></i></span>
							</button>
						</div>
						<div class="cart">
							<button class="btn-addtocart" type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
							  <span class="text-btn"><i class="lnr lnr-cart"></i><?php echo $button_cart; ?></span>
							</button>
						</div>
						<div class="compare">
							<button class="btn-compare" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
								<span class="text-btn"><i class="lnr lnr-sync"></i></span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="des-container">
				<div class="name">
					<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				</div>
				<?php if (isset($product['rating'])) { ?>
					<div class="rating">
						<span>
							<img src="catalog/view/theme/tt_grand4/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
						</span>
					</div>
				<?php } ?>
				<div class="description hidden"><?php echo $product['description']; ?></div>
				<?php if ($product['orgprice']) { ?>
					<?php if (!$product['special']) { ?>
						<div class="price-box">
							<span class="regular-price">
								<span class="price"><?php echo $product['orgprice']; ?></span>
							</span>
						</div>
					<?php } else { ?>
						<div class="price-box">
							<p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>
							<p class="old-price"><span class="price"><?php echo $product['orgprice']; ?></span></p>
						</div>
					<?php } ?>
				<?php } ?>
			</div><!--des-container-->
		</div>
    </div><!-- timer-item -->
    <?php endforeach;  ?>
	</div>
	</div><!-- countdown-product-inner -->
	</div><!-- countdown-tab-content -->
	</div>
</div>
<script type="text/javascript">
	$('.countdown-product-inner').owlCarousel({
		autoPlay : <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
		items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [991,2],
		itemsTablet: [767,1],
		itemsMobile : [479,1],
		slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed'] ;} else { echo 2000;} ?>,
		paginationSpeed : 3000,
		rewindSpeed : 3000,
		navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
		stopOnHover : true,
		pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
		scrollPerPage:true,
		afterMove: function(){
			x = $( ".countdown-tab-content .owl-pagination .owl-page" ).index( $( ".countdown-tab-content .owl-pagination .active" ));
			var thumbinner = ".thumbinner"+x;
			$(".list-thumb .thumb li").removeClass('active');
			$(thumbinner).addClass('active');
		}
	});
	
	var owltimerslider = $(".countdown-product-inner").data('owlCarousel');
	function timerslider(x){
		owltimerslider.goTo(x)
	}
</script>