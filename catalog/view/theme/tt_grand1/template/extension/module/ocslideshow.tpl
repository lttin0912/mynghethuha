<div class="banner7">
	<div class= "oc-banner7-container">
		<div class="flexslider oc-nivoslider">
			<div class="oc-loading"></div>
				<div id="oc-inivoslider" class="slides">
					<?php
						$slides = $ocslideshows;
						$config = $slide_setting[0];
						$i = 1;
						foreach($slides as $s) {
					?>
					<img style="display: none;" src="<?php echo $s['image']; ?>" alt="" title="#banner7-caption<?php echo $i; ?>"  />
					<?php $i ++; } ?>
				</div>
				<?php
				$i = 1;
				foreach($slides as $s) {
					$class ="";
					if($s['type']==1){ $class = "slider-1"; }
					if($s['type']==2){ $class = "slider-2"; }
					if($s['type']==3){ $class = "slider-3"; }	
				?>
					<div id="banner7-caption<?php echo $i; ?>" class="banner7-caption nivo-html-caption nivo-caption move-slides-effect">
						<div class="timeloading"></div>
						<div class="banner7-content <?php echo $class; ?>">
							<div class="text-content">
								<div class="banner7-small_image">
									<img src="<?php echo $s['small_image']; ?>" alt="" title="small" />
								</div>
								<h1 class="title1">
									<?php if(isset($s['title']) && $s['title'] != ""): ?>
										<?php echo $s['title']; ?>
									<?php endif; ?>
								</h1>
								<h2 class="sub-title">
									<?php if(isset($s['sub_title']) && $s['sub_title'] != ""): ?>
										<span><?php echo $s['sub_title']; ?></span>
									<?php endif; ?>
								</h2>
								<div class="banner7-des">
									<?php echo $s['description']; ?>
								</div>
								<?php if( $s['link'] ) { ?>
									<div class="banner7-readmore">
										<a href="<?php echo $s['link']?>" title="<?php echo $text_readmore; ?>"><?php echo $text_readmore; ?></a>
									</div>
								<?php } ?>
							</div>
						</div>
					</div>
			<?php $i++; } ?>
			<script type="text/javascript">
			 $(window).load(function() {
			  $('#oc-inivoslider').nivoSlider({
			   effect: '<?php if($config['effect']) { echo $config['effect'];} else { echo 'random'; } ?>',
			   slices: 15,
			   boxCols: 8,
			   boxRows: 4,
			   manualAdvance: <?php  if(isset($config['auto'])&& $config['auto'] == 1) { echo 'false' ; } else { echo 'true';} ?>,
			   animSpeed:500,
			   pauseTime: '<?php  if($config['delay']) { echo $config['delay']; } else { echo 3000;} ?>',
			   startSlide: 0,
			   controlNav:  <?php  if(isset($config['contrl']) && $config['contrl'] == 1) { echo 'true' ; } else { echo 'false';} ?>,
			   directionNav:  <?php  if(isset($config['nextback'])&& $config['nextback'] == 1) { echo 'true' ; } else { echo 'false';} ?>,
			   controlNavThumbs: false,
			   pauseOnHover:  <?php  if(isset($config['hover'])&& $config['hover'] == 1) { echo 'true' ; } else { echo 'false';} ?>,
			   prevText: '<i class="lnr lnr-chevron-left"></i>',
			   nextText: '<i class="lnr lnr-chevron-right"></i>',
			   afterLoad: function(){
			    $('.oc-loading').css("display","none");
			    $('.timeloading').css('animation-duration','<?php  if($config['delay']) { echo $config['delay'].'ms'; } else { echo '3000ms';} ?>');
			   },
			  });
			 });
			</script>
		</div>
	</div>
</div>