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
        <div class="main">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9 col-xs-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?> 
        <div class="article-container">
            <div class="article-description">
				<div class="row">
					<div class="col-md-4 col-sm-4 col-sms-12">
						<div class="article-image">
							<img src="<?php echo $image; ?>" alt="#" />
						</div>
					</div>
					<div class="col-md-8 col-sm-8 col-sms-12">
						<div class="article-content">
							<div class="article-title">
								<h3><?php echo $heading_title; ?></h3>
							</div>
							<span class="article-date"><?php echo $date; ?><?php if($author != null && $author != ""): ?>
								<?php echo " | ".$author; ?>
								<?php endif; ?>
							</span>
							<p><?php echo $description; ?></p>
						</div>
					</div>
				</div>
            </div>  
        </div>
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div></div>
<?php echo $footer; ?>
