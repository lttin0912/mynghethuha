<div id="blog_home" class="menu-recent">
<div class="containers">
	<div class="blog-title module-title">
		<h3><?php echo $title; ?></h3>
	</div>
	<div class="row"> 
		<?php
			$count = 0;
			$rows = $slide['rows'];
			if(!$rows) { $rows = 1; }
		?> 
	 	<?php if ($articles) { ?>
      	<div class="articles-container">
        <?php foreach ($articles as $article) { ?>
        <?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
          	<div class="articles-inner item-inner">
			   <div class="articles-image">
					<img src="<?php echo $article['image']; ?>" alt="#" />
			   </div>
				<div class="blog-intro">
				   	<div class="articles-name-box box box-shadow">
			   			<a class="articles-name" href="<?php echo $article['href']; ?>">
				   			<?php echo $article['name']; ?>
				   		</a>
			   		</div>
			   		<div class="articles-date">
				   		<span class="date-added">
							<?php echo $article['date_added']; ?>
						</span>
						<span class="date-added-year">
							<?php echo $article['date_added_year']; ?>
						</span>
						<?php //if($article['author'] != null && $article['author'] != ""): ?>
						<?php //echo " | ".$article['author']; ?>
				   		<?php //endif; ?>
				   	</div>
				   	<div class="articles-intro">
				   		<?php echo $description_blog; ?>
				   	</div>
				   	<div class="readmore">
						<a href="<?php echo $article['href']; ?>"><?php echo $button_read_more; ?></a>
					</div>
				</div>
          	</div>
          	<?php if($count % $rows == 0 || $count == count($articles)): ?>
	  		</div>
		 <?php endif; ?>
        <?php } ?>
      	</div>
      <?php } ?>
	  
      <?php if (!$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
	</div>
	</div>
	 <script>
	 $(document).ready(function() { 
		  $(".articles-container").owlCarousel({
				autoPlay : <?php if($slide['auto']) { echo 'true' ;} else { echo 'false'; } ?>,
				items : <?php echo $slide['items'] ?>,
				itemsDesktop : [1199,2],
				itemsDesktopSmall : [991,2],
				itemsTablet: [700,1],
				itemsMobile : [400,1],
				slideSpeed : <?php echo $slide['speed']; ?>,
				paginationSpeed : <?php echo $slide['speed']; ?>,
				rewindSpeed : <?php echo $slide['speed']; ?>,
				navigation : <?php if($slide['navigation']) { echo 'true' ;} else { echo 'false'; } ?>,
				pagination : <?php if($slide['pagination']) { echo 'true' ;} else { echo 'false'; } ?>,
				stopOnHover : true
		  });
	 });
	 </script>
</div>

