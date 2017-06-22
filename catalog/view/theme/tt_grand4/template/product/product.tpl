<?php echo $header; ?>
<div class="breadcrumb-content">
	<div class="container">
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		</ul>
	</div>
</div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <div class=" col-sm-12">
      <div class="product-content-1">
          <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-7'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-7'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <div class="thumbnails-image ">
            <?php if ($thumb) { ?>
              <a class="thumbnail" title="<?php echo $heading_title; ?>">
              <img src="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
              </a>
            <?php } ?>
          </div><!-- thumbnails-image -->
        <?php if ($thumb) { ?>
        <div class="wrapper-img-additional">
            <div class="image-additional" id="gallery_01">
              <a class="thumbnail" href="javascript:void(0);" data-image="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
              <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
              </a>
              <?php } ?>
              <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
              <a class="thumbnail" href="javascript:void(0);" data-image="<?php echo $image['thumb']; ?>" data-zoom-image="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img  src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              <?php } ?>
              <?php } ?>
            </div>
        </div>
        <?php } ?>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <h1 class="detail-product-name"><?php echo $heading_title; ?></h1>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
          </div>
          <?php } ?>

			<?php if ($price) { ?>
				<ul class="list-unstyled price">
				<?php if (!$special) { ?>
				<li>
				  <h2 class="prices"><?php echo $price; ?></h2>
				</li>
				<?php } else { ?>
				<li><span class="old-price"style="text-decoration: line-through;"><?php echo $price; ?></span></li>
				<li>
				  <h2 class="new-price"><?php echo $special; ?></h2>
				</li>
				<?php } ?>
				</ul>
			<?php } ?>

			<ul class="list-unstyled">
				<?php if ($manufacturer) { ?>
				<li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
				<?php } ?>
				<li><?php echo $text_stock; ?> <span style="font-weight:bold; color:<?php echo $stock_color ?>"><?php echo $stock; ?></span></li>
			</ul>
			<p class="short-description"><?php echo $shortdescription; ?></p> 
			<div class="form-group button-view">
				<?php if ($minimum >= 2) { ?>
					<div class="alert alert-info alert-minimum-qty"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
				<?php } ?>
				<div class="form-quantity form-quantity-product">  
                  <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
                  
                  <div class="box-input-qty">
                  <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                  <div class="btn-plus"><input type="button" id="plus" value="+" class="qty"/></div>
                  <div class="btn-minus"><input type="button" id="minus" value="-" class="qty" /></div>
                  </div>
                  
                  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
				</div>
				<div class="actions button-group">
					<button class="button btn-addtocart" type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>">
						<span><i class="lnr lnr-cart"></i><?php echo $button_cart; ?></span>
					</button>
					<button class="btn-wishlist" type="button" title="<?php echo $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product_id; ?>');">
					  <span class=""><i class="fa fa-heart-o"></i></span>
					  <span class="tooltip-content clearfix">
						<em class="tooltips"><?php echo $tooltip_wishlist; ?></em>
					  </span>
					</button>
					<button class="btn-compare" type="button" title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product_id; ?>');">
					  <span class=""><i class="fa fa-files-o"></i></span>
					  <span class="tooltip-content clearfix">
						<em class="tooltips"><?php echo $tooltip_compare; ?></em>
					  </span>
					</button>
				</div><!-- button-group -->
            </div>
			<div id="product">
				<?php if ($options) { ?>
				<?php foreach ($options as $option) { ?>
				<?php if ($option['type'] == 'select') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
				  <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
					<option value=""><?php echo $text_select; ?></option>
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
					<?php if ($option_value['price']) { ?>
					(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
					<?php } ?>
					</option>
					<?php } ?>
				  </select>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'radio') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label"><?php echo $option['name']; ?></label>
				  <div id="input-option<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="radio">
					  <label>
						<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
						<?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
					  </label>
					</div>
					<?php } ?>
				  </div>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'checkbox') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label"><?php echo $option['name']; ?></label>
				  <div id="input-option<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="checkbox">
					  <label>
						<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
						<?php if ($option_value['image']) { ?>
						<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
						<?php } ?>
						<?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
					  </label>
					</div>
					<?php } ?>
				  </div>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'image') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label"><?php echo $option['name']; ?></label>
				  <div id="input-option<?php echo $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value) { ?>
					<div class="radio">
					  <label>
						<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
						<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
					  </label>
					</div>
					<?php } ?>
				  </div>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'text') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
				  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'textarea') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
				  <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'file') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label"><?php echo $option['name']; ?></label>
				  <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
				  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'date') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
				  <div class="input-group date">
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
					<span class="input-group-btn">
					<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
					</span></div>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'datetime') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
				  <div class="input-group datetime">
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
					<span class="input-group-btn">
					<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					</span></div>
				</div>
				<?php } ?>
				<?php if ($option['type'] == 'time') { ?>
				<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
				  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
				  <div class="input-group time">
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
					<span class="input-group-btn">
					<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					</span></div>
				</div>
				<?php } ?>
				<?php } ?>
				<?php } ?>
				<?php if ($recurrings) { ?>
				<hr>
					<h3><?php echo $text_payment_recurring ?></h3>
					<div class="form-group required">
					  <select name="recurring_id" class="form-control">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($recurrings as $recurring) { ?>
						<option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
						<?php } ?>
					  </select>
					  <div class="help-block" id="recurring-description"></div>
					</div>
				<?php } ?>
				<?php if ($minimum > 1) { ?>
				<div class="alert alert-info"><i class="fa fa-info-circle"></i><?php echo $text_minimum; ?></div>
				<?php } ?>
			</div>
			<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style" data-url="<?php echo $share; ?>"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
				<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
        </div> 
            </div>
          </div>
        </div>  
      </div>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <div class="product-content-2">
        <ul class="nav nav-tabs nav-tabs-products">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content tab-content-product">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review"  class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
          </div>
          </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
    
    
    <?php if ($products) { ?>
		<div class="related-container quickview-products">
			<div class="box-title module-title">
				<h3 class="title title-group"><?php echo $text_related; ?></h3>
			</div>
			<div class="row">
			<div class="view-related">
			<?php $i = 0; ?>
			<?php foreach ($products as $product) { ?>
			<div class="item">
				<div class="item-inner product-thumb transition">
				  <div class="images-container">
					<a class="product-image" href="<?php echo $product['href']; ?>">
					  <span class="product-image-wrapper">
						<img class="image1a" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
					  </span>
					</a>
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
						</div><!-- addtolink-btn -->
					</div>
				  </div>
					<?php if ($product['is_new']):
					  if($product['special']): ?>
						<div class="label-pro-sale"><span><?php echo $text_sale; ?></span></div>
					  <?php else: ?>
						<div class="label-pro-new"><span><?php echo $text_new; ?></span></div>
					  <?php endif; ?>
					<?php else: ?>
					  <?php if($product['special']): ?>
						<div class="label-pro-sale"><span><?php echo $text_sale; ?></span></div>
					  <?php endif; ?>
					<?php endif; ?>
				<div class="des-container">
				  <div class="name">
					<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				  </div>
				 <?php if (isset($product['rating'])) { ?>
				  <div class="rating">
					<span>
					  <img src="catalog/view/theme/tt_grand1/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
					</span>
				  </div>
				  <?php } ?>
				  
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
				</div>
			  </div> <!-- item-inner -->
			</div> <!-- item -->
			<?php } ?>
			</div><!-- view-related -->
			</div>
		</div>
    <?php } ?>
    
</div>
<script type="text/javascript">
	$(document).ready(function() {
	  var minimum = <?php echo $minimum; ?>;
		$("#input-quantity").change(function(){
		if ($(this).val() < minimum) {
		  alert("Minimum Quantity: "+minimum);
		  $("#input-quantity").val(minimum);
		}
	  });
	  // increase number of product
	  function minus(minimum){
		var currentval = parseInt($("#input-quantity").val());
		$("#input-quantity").val(currentval-1);
		if($("#input-quantity").val() <= 0 || $("#input-quantity").val() < minimum){
		  alert("Minimum Quantity: "+minimum);
		  $("#input-quantity").val(minimum);
		}
	  };
	  // decrease of product
	  function plus(){
		var currentval = parseInt($("#input-quantity").val());
		$("#input-quantity").val(currentval+1);
	  };
	  $('#minus').click(function(){
		minus(minimum);
	  });
	  $('#plus').click(function(){
	   plus();
	  });
	});
</script>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('input[name=\'product_id\'], #input-quantity, #product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('body').before('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart-total').html(json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

// zoom
  $(".thumbnails-image img").elevateZoom({
    zoomType : "window",
    cursor: "crosshair",
    gallery:'gallery_01', 
    galleryActiveClass: "active", 
    imageCrossfade: true,
    responsive: true,
    zoomWindowWidth: 360,
    zoomWindowHeight: 360,
    zoomWindowOffetx: 0,
    zoomWindowOffety: 0
  });
//view-related
$(".view-related").owlCarousel({
    autoPlay : false,
    slideSpeed : 1000,
    paginationSpeed : 3000,
    rewindSpeed : 3000,
    navigation : true,
    stopOnHover : true,
    pagination : false,
    scrollPerPage:false,
    items : 5,
    itemsDesktop : [1199,4],
    itemsDesktopSmall : [991,3],
    itemsTablet: [768,2],
    itemsMobile : [400,1],
  });

//image-additional
$(".image-additional").owlCarousel({
    navigation:true,
    pagination: false,
    slideSpeed : 1000,
    goToFirstSpeed : 1500,
    autoHeight : true,
    items :4, //10 items above 1000px browser width
    itemsDesktop : [1199,3], //5 items between 1000px and 901px
    itemsDesktopSmall : [991,3], //4.3 betweem 900px and 601px
    itemsTablet: [767,4], //2 items between 600 and 0
    itemsMobile : [479,2] // itemsMobile disabled - inherit from itemsTablet option
  }); 

// increase number of product
  function minus(){
    document.getElementById("input-quantity").value --;
    if(document.getElementById("input-quantity").value <= 0) {
      document.getElementById("button-cart").disabled = true;
      document.getElementById("button-cart").classList.add("dis-btn");
      return false;
    }
  
  };
 // decrease of product
  function plus(){
    document.getElementById("input-quantity").value ++;
    document.getElementById("button-cart").disabled = false;
    document.getElementById("button-cart").classList.remove("dis-btn");
  };
  $('#minus').click(function(){
   minus();
  });
  $('#plus').click(function(){
   plus();
  });

  $('#input-quantity').change(function(){
    if($(this).val()==0){
        $('#button-cart').prop('disabled', true);
        $('#button-cart').addClass('dis-btn');
    } else{
        $('#button-cart').prop('disabled', false);
        $('#button-cart').removeClass('dis-btn');
    }
  });
//--></script>
<?php echo $footer; ?>
