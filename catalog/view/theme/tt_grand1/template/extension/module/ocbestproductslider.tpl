<div class="bestproduct-container quickview-products">
    <div class="module-title">
		<h3><?php echo $title; ?></h3>
		<span class="desc"><?php echo $desc_title; ?></span>
    </div>
    <?php 
    $count = 0;
    $rows = $config_slide['f_rows']; 
    if(!$rows) { $rows=1; }
   ?>
    <div class="bestseller-content">
		<div class="row">
			<div class="owl-demo-bestsellerproduct bestseller_product">
				<?php foreach ($products as $product) { ?>
				<?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
				  <div class="item">
				  <div class="item-inner item-inner product-thumb transition">
					<div class="images-container">
					  <a class="image" href="<?php echo $product['href']; ?>">
						<span class="product-image-wrapper" style="padding-bottom: 100%;">
						  <?php if($product['rotator_image']): ?>
							<img class="img2 image2" src="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" />
						  <?php endif; ?>
						  <img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
						</span>
					  </a>
					  <div class="button-group">
						<div class="addtolink-btn">
							<div class="btn-quick-view"></div>
							<div class="wishlist">
								<button class="btn-wishlist" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
									<span class="text-btn"><i class="lnr lnr-heart"></i></span>
									<span class="tooltip-content clearfix">
									  <em class="tooltips"><?php echo $tooltip_wishlist; ?></em>
									</span>
								</button>
							</div>
							<div class="cart">
								<?php if($config_slide['f_show_addtocart']) { ?>
									<button class="btn-addtocart" type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
									  <span class="text-btn"><i class="lnr lnr-cart"></i><?php echo $button_cart; ?></span>
									  <span class="tooltip-content clearfix">
										<em class="tooltips"><?php echo $tooltip_cart; ?></em>
									  </span>
									</button>
								<?php } ?>
							</div>
							<div class="compare">
								<button class="btn-compare" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
									<span class="text-btn"><i class="lnr lnr-sync"></i></span>
								</button>
							</div>
						</div><!-- addtolink-btn -->
					   
					  </div>
					</div><!-- images-container -->
					<?php if($config_slide['f_show_label']): ?>
					  <?php if($product['special']): ?>
						<div class="label-pro-sale">
						  <div class="sale-off">
						  <?php if($product['special']){
							$a = ($product['special2']);
							$b = ($product['price2']);
							$c = round(($a-$b)/$b,2)*100;
						  }?>
						  <?php if($product['special']){?>
							<span class="sale-percent"><?php echo $c;?>%</span>
						  <?php }?>
						  </div>
						</div>
					  <?php endif; ?>
					<?php endif; ?>
					<div class="des-container">
					  <div class="name">
						<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
					  </div>
					  <?php if($config_slide['f_show_des']) { ?>
							<div class="des"><?php echo $product['description']; ?></div>
					  <?php } ?>

					  <?php if (isset($product['rating'])) { ?>
					  <div class="rating">
						<span>
						  <img src="catalog/view/theme/tt_grand1/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
						</span>
					  </div>
					  <?php } ?>

					  <?php if($config_slide['f_show_price']) { ?>
						<?php if ($product['price']) { ?>
						  <div class="price">
							<?php if (!$product['special']) { ?>
							  <?php echo $product['price']; ?>
							<?php } else { ?>
							  <span class="price-new"><?php echo $product['special']; ?></span>
							  <span class="price-old"><?php echo $product['price']; ?></span>
							<?php } ?>
						  </div>
						<?php } ?>
					  <?php } ?>
					</div><!-- des-container -->
				  </div> <!-- item-inner -->
				</div> <!-- item -->
			   <?php if($count % $rows == 0 || $count == count($products)): ?>
						</div>
				<?php endif; ?>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() { 
  $(".bestseller_product").owlCarousel({
        autoPlay: <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false'; } ?>,
        items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3; } ?>,
        slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed']; } else { echo 200;} ?>,
        navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false'; } ?>,
        paginationNumbers : true,
        pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
        itemsDesktop : [1199,4],
        itemsDesktopSmall : [991,3],
        itemsTablet: [767,2],
        itemsMobile : [480,1],
  });
 
});
</script>