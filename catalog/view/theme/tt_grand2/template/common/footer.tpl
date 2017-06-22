<?php if(isset($block4)){ echo $block4; }?>
<footer>
  <div class="container">
    <div class="row">
		<div class="col-md-4 col-sm-7 col-xs-12">
			<div class="col col1">
				<div class="footer-logo">
					<a href="#"><img src="catalog/view/theme/tt_grand2/image/logo.png" alt=""></a>
					<span class=""><?php echo $f_desc; ?></span>
				</div>
				<ul class="list-unstyled ft-contact">
				  <li>
					<p><span class="color-title"><?php echo $text_address; ?></span> <span class="ft-right"><?php echo $address; ?></span> </p>
				  </li>
				  <li>
					<p><span class="color-title"><?php echo $text_telephone; ?></span><span class="ft-right"><?php echo $telephone; ?></span></p>
				  </li>
				  <li>
					<p> <span class="color-title"><?php echo $text_email; ?></span><a href="#" class="ft-right"><?php echo $email; ?></a></p>
				  </li>
				</ul>
				<?php if(isset($block5)){ echo $block5; }?>
			</div>
		</div>
		<div class="col-md-2 col-sm-5 col-xs-12">
			<div class="col col2">
				<div class="footer-static-title">
				  <h3 class="title title-group footer-title"><?php echo $text_account; ?></h3>
				</div> 
				<ul class="list-unstyled footer-links">
				  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				  <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
				  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				  <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
				  <li><a href="<?php echo $blog; ?>"><?php echo $text_blog; ?></a></li>
				</ul>
			</div>
		</div>
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="col col3">
				<div class="footer-static-title">
				  <h3 class="title title-group footer-title"><?php echo $text_tweets; ?></h3>
				</div> 
				<?php if(isset($block6)){ echo $block6; }?>
			</div>
		</div>
      
		<div class="col-md-3 col-sm-6 col-xs-12">
			<div class="col col4">
				<div class="footer-static-title">
				  <h3 class="title title-group footer-title"><?php echo $text_instagram; ?></h3>
				</div> 
				<?php if(isset($block7)){ echo $block7; }?>
			</div>
		</div>
    </div>
  </div>
</footer>
<div class="end-footer">
  <div class="container">
    <div class="powered-content"> 
      <div class="row">
        <div class="col-sm-6 col-xs-12"><p class="powered-text"><?php echo $powered; ?></p></div>
        <div class="col-sm-6 col-xs-12">
			<div class="payment-footer">
				<a href="#"><img src="image/catalog/demo/icon/payment.png" alt="#"></a>
			</div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<div id="back-top" class="hidden-xs backToTop">
  
</div>
<script type="text/javascript">
    $(document).ready(function(){
     // hide #back-top first
     $("#back-top").hide();
     // fade in #back-top
     $(function () {
      $(window).scroll(function () {
       if ($(this).scrollTop() > 300) {
        $('#back-top').fadeIn();
       } else {
        $('#back-top').fadeOut();
       }
      });
      // scroll body to 0px on click
      $('#back-top').click(function () {
       $('body,html').animate({
        scrollTop: 0
       }, 800);
       return false;
      });
     });
    });
</script>
</body></html>