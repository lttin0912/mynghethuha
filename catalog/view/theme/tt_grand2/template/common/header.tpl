<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script> 
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/tt_grand2/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="catalog/view/javascript/linearicons/font/style.css">
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<link href="catalog/view/theme/tt_grand2/stylesheet/theme.css" rel="stylesheet">
<link href="catalog/view/theme/tt_grand2/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/tt_grand2/stylesheet/opentheme/ocsearchcategory/css/ocsearchcategory.css" rel="stylesheet">
<link href="catalog/view/theme/tt_grand2/stylesheet/opentheme/ocslideshow/ocslideshow.css" rel="stylesheet" />
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_grand2/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />
<script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tt_grand2/stylesheet/opentheme/ocquickview/css/ocquickview.css">
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_grand2/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet" />
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_grand2/stylesheet/opentheme/css/animate.css" rel="stylesheet" />
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="header-content">
  <nav id="top">
    <div class="container">
      <div class="container-ink">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-12">
             <div class="top-links-left">
				<?php echo $language; ?>
				<?php echo $currency; ?>
				<div class="dropdown top-account">
					<a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><span class=""><?php echo $text_account; ?></span><i class="fa fa-angle-down "></i></a>
					<ul class="dropdown-menu dropdown-menu-right">
					  <?php if ($logged) { ?>
					  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
					  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
					  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
					  <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
					  <?php } else { ?>
					  <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
					  <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
					  <?php } ?>
					</ul>
				</div>
            </div>
          </div>
          <div class="col-md-6 col-xs-12 col-sm-6">
            <div class="top-links-right">
              <div class="top-wishlist">
                <a href="<?php echo $wishlist; ?>" id="wishlist-total" >
                  <em class="lnr lnr-heart"></em>
                  <span class="text-top-wishlist"><?php echo $text_wishlist; ?></span>
                </a>
              </div>
              <div class="top-checkout">
                <a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>">
                  <em class="lnr lnr-sync"></em> 
                  <span class="text-top-checkout"><?php echo $text_checkout; ?></span>
                </a>
              </div> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
	<header class="header">
		<div class="container">
			<div class="container-inner">
				<div class="row">
					<div class="col-md-4 col-sm-4 col-sms-12">
						<div class="top-search-content">
							<?php echo $search; ?>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-sms-12">
						<div id="logo">
							<?php if ($logo) { ?>
							<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
							<?php } else { ?>
							<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
							<?php } ?>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-sms-12">
						<div class="quick-access">
							<div class="button-link-top">
							  <?php echo $cart; ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<?php if(isset($block1)){ echo $block1; }?>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$(window).scroll(function () {
		if ($(this).scrollTop() > 165) {
		$('.nav-container').addClass("fix-nav");
		} else {
		$('.nav-container').removeClass("fix-nav");
		}
	});
	$(function dropDown()
	{
		elementClick = '.top-currency .btn-link,.top-language .btn-link,.top-account .dropdown-toggle,.quick-access .btn-inverse';
		elementSlide =  '.dropdown-menu';
		activeClass = 'active';

		$(elementClick).on('click', function(e){
		e.stopPropagation();
		var subUl = $(this).next(elementSlide);
		if(subUl.is(':hidden'))
		{
		subUl.slideDown();
		$(this).addClass(activeClass);
		}
		else
		{
		subUl.slideUp();
		$(this).removeClass(activeClass);
		}
		$(elementClick).not(this).next(elementSlide).slideUp();
		$(elementClick).not(this).removeClass(activeClass);
		e.preventDefault();
		});

		$(elementSlide).on('click', function(e){
		e.stopPropagation();
		});

		$(document).on('click', function(e){
		e.stopPropagation();
		var elementHide = $(elementClick).next(elementSlide);
		$(elementHide).slideUp();
		$(elementClick).removeClass('active');
		});
	});
});
</script>