<?php echo $header; ?>
<div class="breadcrumb-search">
	<div class="container">
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="heading-search">
	<div class="container">
	  <h2><?php echo $heading_title; ?></h2>
	</div>
</div>
<div class="container search-containers quickview-products">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-4">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-sm-3">
          <select name="category_id" class="form-control">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-sm-3">
          <label class="checkbox-inline">
            <?php if ($sub_category) { ?>
            <input type="checkbox" name="sub_category" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="sub_category" value="1" />
            <?php } ?>
            <?php echo $text_sub_category; ?></label>
        </div>
      </div>
      <p>
        <label class="checkbox-inline">
          <?php if ($description) { ?>
          <input type="checkbox" name="description" value="1" id="description" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="description" value="1" id="description" />
          <?php } ?>
          <?php echo $entry_description; ?></label>
      </p>
      <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
<!--       <h2><?php echo $text_search; ?></h2> -->
      <div class="module-title "><h3 class="title-group"><?php echo $text_search; ?></h3></div>
                            <?php if ($products) { ?>
                <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
                <div class="product-filter">
                    <div class="btn-group">
                    <button type="button" id="grid-view" class="btn btn-default"  title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                    <button type="button" id="list-view" class="btn btn-default"  title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                    </div>
                    <div class="sort">
                    <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                    <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
                    <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    </select>
                    </div>
                    <div class="limit">
                    <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                    <select id="input-limit" class="form-control" onchange="location = this.value;">
                    <?php foreach ($limits as $limits) { ?>
                    <?php if ($limits['value'] == $limit) { ?>
                    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    </select>
                    </div>
                </div> 
                <div class="custom-products">
                    <div class="row">
                    <?php foreach ($products as $product) { ?>
                    <div class="product-layout product-list col-xs-12">
                        <div class="product-thumb item">
                            <div class="item-inner">
                                <div class="image images-container">
                                    <?php if ($product['is_new']):
                                        if($product['special']): ?>
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
                                        <?php else: ?>
                                          <div class="label-pro-new"><span><?php echo $text_new; ?></span></div>
                                        <?php endif; ?>
                                      <?php else: ?>
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
                                    <a class="product-image" href="<?php echo $product['href']; ?>">
                                        <?php if($product['rotator_image']): ?>
                                        <img class="img2 image2" src="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" />
                                        <?php endif; ?>
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive img1 image1" />
                                    </a>
                                    <div class="button-group">
										<div class="addtolink-btn">
											<div class="wishlist">
												<button class="btn-wishlist" type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
													<span class="text-btn"><i class="fa fa-heart-o"></i></span>
												</button>
											</div>
											<div class="cart">
												<button class="btn-addtocart" type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
													<span class="text-btn"><?php echo $button_cart; ?></span>
												</button>
											</div>
											<div class="compare">
												<button class="btn-compare" type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');">
												  <span class="text-btn"><i class="fa fa-files-o"></i></span>
												</button>
											</div>
										</div>
									</div>
									<div class="btn-quick-view"></div>
                                </div><!-- image images-container -->
                                <div class="caption des-container">
                                    <div class="name">
										<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
									</div>
                                    <?php if (isset($product['rating'])) { ?>
                                        <div class="rating"><img src="catalog/view/theme/tt_grand3/image/stars-<?php echo $product['rating']; ?>.png" alt="#" /></div>
                                    <?php } ?>
                                    <?php if ($product['price']) { ?>
										<p class="price">
											<?php if (!$product['special']) { ?>
											<?php echo $product['price']; ?>
											<?php } else { ?>
											<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
											<?php } ?>
											<?php if ($product['tax']) { ?>
											<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
											<?php } ?>
										</p>
                                    <?php } ?>
                                    <p class="description"><?php echo $product['description']; ?></p>
                                </div>
                            </div><!-- item-inner -->
                        </div><!-- item product-thumb -->
                    </div>
                    <?php } ?>
                </div>
                </div>
                <div class="product-pagination">
					<div class="row">
						<div class="col-sm-6 col-xs-12 text-left"><?php echo $pagination; ?></div>
						<div class="col-sm-6 col-xs-12 text-right"> 
							<div class="product-results"><?php echo $results; ?></div>
						</div>
					</div>
                </div>
            <?php } else { ?>
            <p class="text_empty"><?php echo $text_empty; ?></p>
           <!--  <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div> -->
            <?php } ?>
    </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>