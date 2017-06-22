
<?php $tab_effect = 'wiggle'; ?>
<script type="text/javascript">

$(document).ready(function() {

	$(".<?php echo $cateogry_alias;?> .tab_content_category").hide();
	$(".<?php echo $cateogry_alias;?> .tab_content_category:first").show(); 
	$('.<?php echo $cateogry_alias;?> ul.tabs-category li:first').addClass("active");

	$(".<?php echo $cateogry_alias;?> ul.tabs-category li").click(function() {
		$(".<?php echo $cateogry_alias;?> ul.tabs-category li").removeClass("active");
		$(this).addClass("active");
		$(".<?php echo $cateogry_alias;?> .tab_content_category").hide();
		$(".<?php echo $cateogry_alias;?> .tab_content_category").removeClass("animate1 <?php echo $tab_effect;?>");
		var activeTab = $(this).attr("rel"); 
		$("#"+activeTab) .addClass("animate1 <?php echo $tab_effect;?>");
		$("#"+activeTab).fadeIn(); 
	});
});

</script>
<?php 
	$row=1;
	$row = $config_slide['f_rows']; 
	if(!$row) {$row=1;}
?>
<div class="product-tabs-category-container-slider categorytab-container <?php echo $cateogry_alias;?> quickview-products">
	<div class="tab-title">
		<div class="module-title"><h3><?php echo $title; ?></h3></div>
		<ul class="tabs-category"> 
			<?php $count=0; ?>
			<?php foreach($category_products as $cate_id => $products ){ ?>
				<li rel="tab_cate<?php echo $cate_id; ?>"  >
						<?php echo $array_cates[$cate_id]['name']; ?>
				</li>
					<?php $count= $count+1; ?>
			<?php } ?>	
		</ul>
	</div> 
	
	<div class="row">
		<div class="tab_container_category"> 
			<?php foreach($category_products as $cate_id => $products ){ ?>
				<div id="tab_cate<?php echo $cate_id; ?>" class="tab_content_category">
					<div class="productTabContent owl-demo-tabcate">
					<?php $i=0; ?>
					<?php foreach ($products as $product){ ?>
					<?php if($i++ % $row ==0){  echo  "<div class='row_item'>"; } ?>
					    <div class="item">
								<div class="item-inner product-thumb transition">
									<div class="images-container">
										<a class="image" href="<?php echo $product['href']; ?>">
											<span class="product-image-wrapper">
												<?php if($product['rotator_image']): ?>
												<img class="img2 image2" src="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" />
												<?php endif; ?>
												<img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
											</span>
										</a>
										<div class="button-group">
											<div class="addtolink-btn">
												<div class="wishlist">
													<button class="btn-wishlist" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
														<span class="text-btn"><i class="lnr lnr-heart"></i></span>
													</button>
												</div>
												<div class="cart">
													<?php if($config_slide['tab_cate_show_addtocart']) { ?>
														<button class="btn-addtocart" type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
														<span class="text-btn"><i class="lnr lnr-cart"></i><?php echo $button_cart; ?></span>
														</button>
													<?php } ?>
												</div>
												<div class="compare">
													<button class="btn-compare" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
														<span class="text-btn"><i class="lnr lnr-sync"></i></span>
													</button>
												</div>
											</div>
										</div>
										<div class="btn-quick-view"></div>
									</div>
									<?php if($config_slide['tab_cate_show_label']): ?>
										<?php if ($product['is_new']):
										if($product['special']): ?>
										<div class="label-pro-sale">
										<?php if($product['special']){
										$a = ($product['special2']);
										$b = ($product['price2']);
										$c = round(($a-$b)/$b,2)*100;
										}?>
										<?php if($product['special']){?>
										<span class="sale-percent"><?php echo $c;?>%</span>
										<?php }?>
										</div>
										<?php else: ?>
										<div class="label-pro-new"><span><?php echo $text_new; ?></span></div>
										<?php endif; ?>
										<?php else: ?>
										<?php if($product['special']): ?>
										<div class="label-pro-sale">
										<?php if($product['special']){
										$a = ($product['special2']);
										$b = ($product['price2']);
										$c = round(($a-$b)/$b,2)*100;
										}?>
										<?php if($product['special']){?>
										<span class="sale-percent"><?php echo $c;?>%</span>
										<?php }?>
										</div>
										<?php endif; ?>
										<?php endif; ?>
									<?php endif; ?>
									<div class="des-container">
										<div class="name">
										  <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
										</div>
										<?php if($config_slide['tab_cate_show_des']) { ?>
											<div class="des"><?php echo $product['description']; ?></div>
										<?php } ?>
										<?php if (isset($product['rating'])) { ?>
											<div class="rating">
												<span>
													<img src="catalog/view/theme/tt_grand3/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
												</span>
											</div>
										<?php } ?>
										<?php if($config_slide['tab_cate_show_price']) { ?>
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
									</div>
								</div> <!-- item-inner -->
				          </div> <!-- item -->
						<?php if($i % $row ==0 || $i == count($products)){  echo  "</div>"; } ?>
						<?php } ?>
					</div>
				</div>
			<?php } ?>
		</div> <!-- .tab_container_category -->
	</div>
</div>
<script type="text/javascript">

$(document).ready(function() { 

  $(".<?php echo $cateogry_alias;?> .owl-demo-tabcate").owlCarousel({

	autoPlay: <?php if($config_slide['tab_cate_autoplay']) { echo 'true' ;} else { echo 'false';} ?>,

	items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,

	slideSpeed : <?php if($config_slide['tab_cate_speed_slide']) { echo $config_slide['tab_cate_speed_slide'] ;} else { echo 200;} ?>,

	navigation : <?php if($config_slide['tab_cate_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,

	paginationNumbers : true,

	pagination : <?php if($config_slide['tab_cate_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,

	stopOnHover : false,

	itemsDesktop : [1199,4],

	itemsDesktopSmall : [991,3],

    itemsTablet: [700,2],

    itemsMobile : [400,1],

  });

});

</script>



