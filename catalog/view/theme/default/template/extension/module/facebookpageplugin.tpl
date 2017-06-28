<?php if (isset($moduleData['Enabled']) && ($moduleData['Enabled']=='yes')) { ?>
<?php if(!empty($moduleData['CustomCSS'])): ?>
            <style>
                <?php echo htmlspecialchars_decode($moduleData['CustomCSS']); ?>
            </style>
        <?php endif; ?>

<h3><?php echo $PanelName; ?></h3>      
<div class="fb-page" data-href="<?php echo $url ?>" data-height="<?php echo $height ?>"  data-width="<?php echo $width ?>" data-hide-cover="<?php echo $Hide_cover?>" data-show-facepile="<?php echo $Show_faces?>" data-show-posts="<?php echo $Show_posts?>"  data-small-header = "<?php echo $Small_header ?>"><div class="fb-xfbml-parse-ignore"><blockquote cite="<?php echo $url ?>"><a href="<?php echo $url ?>"><?php echo $PanelName; ?></a></blockquote></div></div>
<div id="fb-root"></div>

<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<?php } ?>
