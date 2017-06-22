<div class="row">
<div id="carousel<?php echo $module; ?>" class="owl-carousel brand-content">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
  items: 5,
  autoPlay: false,
  navigation: true,
  navigationText:[''],
  pagination: false,
  itemsDesktop : [1199,5],
  itemsDesktopSmall : [980,4],
  itemsTablet: [768,3],
  itemsMobile : [479,2],
});
--></script>