<table id="Settings" class="table">
    <tr>
        <td class="col-xs-3">
        	<h5><strong><?php echo $text_panel_name; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_panel_name_help; ?></span></td>
        <td class="col-xs-9">
            <div class="col-xs-4">
				<?php foreach ($languages as $lang) : ?>
                        <div class="input-group">
                            <span class="input-group-addon"><img src="<?php echo $lang['flag_url']; ?>" title="<?php echo $lang['name']; ?>" /> <?php echo $lang['name']; ?>:</span> 
                            <input type="text" class="form-control" name="<?php echo $moduleNameSmall; ?>[PanelName][<?php echo $lang['code']; ?>]" value="<?php if(isset($moduleData['PanelName'][$lang['code']])) { echo $moduleData['PanelName'][$lang['code']]; } else { echo "Facebook Page Plugin"; }?>" />           
                        </div>
                    <br />
				<?php endforeach;?>
            </div>
        </td>
    </tr>
    <tr>
      <td class="col-xs-3">
	  <h5><strong><?php echo $text_facebookpageplugin_url; ?></strong></h5>
      <span class="help "><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_facebookpageplugin_url_help; ?></span></td>
            <td class="col-xs-9">
            <div class="col-xs-4">
                <input type="text" name="facebookpageplugin_url" value="<?php echo $facebookpageplugin_url; ?>"  class="form-control" />
                   <?php if ($error_facebook_url) { ?>
                  <div class="text-danger"><?php echo $error_facebook_url; ?></div>
                  <?php } ?>
             </div>
            </td>
    </tr>
     <tr>
        <td class="col-xs-3">
        	<h5><strong><?php echo $text_module_dimensions; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_module_dimensions_help; ?></span></td>
        <td class="col-xs-9">
            <div class="col-xs-4">
                <div class="input-group">
                  <span class="input-group-addon">Width:&nbsp;</span>
                  <input type="text" class="form-control" name="<?php echo $moduleNameSmall; ?>[Width]" value="<?php if(isset($moduleData['Width'])) { echo $moduleData['Width']; } else { echo "180"; }?>" />
                  <span class="input-group-addon"><?php echo $text_pixels; ?></span>
                </div><br />
                <div class="input-group">
                  <span class="input-group-addon">Height:</span>
                  <input type="text" class="form-control" name="<?php echo $moduleNameSmall; ?>[Height]" value="<?php if(isset($moduleData['Height'])) { echo $moduleData['Height']; } else { echo "70"; }?>" />
                  <span class="input-group-addon"><?php echo $text_pixels; ?></span>
                </div>
            </div>
        </td>
    </tr>
     <tr>
      <td class="col-xs-3">
	  <h5><strong><?php echo $text_hide_cover_photo; ?></strong></h5>
      <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_hide_cover_photo_help; ?></span></td>
      <td class="col-xs-9">
        <div class="col-xs-4">
        	<select id="cover" name="<?php echo $moduleNameSmall; ?>[hide_cover]" class="form-control">
                  <option value="no"  <?php echo (empty($moduleData['hide_cover']) || $moduleData['Enabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
                  <option value="yes" <?php echo (!empty($moduleData['hide_cover']) && $moduleData['hide_cover'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
            </select>
        </div>
     </td>
    </tr>
    <tr>
      <td class="col-xs-3">
	  <h5><strong><?php echo $text_show_fiends_faces; ?></strong></h5>
      <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_show_fiends_faces_help; ?></span></td>
      <td class="col-xs-9">
        <div class="col-xs-4">
        	<select id="friends" name="<?php echo $moduleNameSmall; ?>[show_faces]" class="form-control">
                  <option value="no"  <?php echo (empty($moduleData['show_faces']) || $moduleData['Enabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
                  <option value="yes" <?php echo (!empty($moduleData['show_faces']) && $moduleData['show_faces'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
            </select>
        </div>
     </td>
    </tr>
     <tr>
      <td class="col-xs-3">
	  <h5><strong><?php echo $text_show_posts; ?></strong></h5>
      <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_show_posts_help; ?></span></td>
      <td class="col-xs-9">
        <div class="col-xs-4">
        	<select id="posts" name="<?php echo $moduleNameSmall; ?>[show_posts]" class="form-control">
                  <option value="no"  <?php echo (empty($moduleData['show_posts']) || $moduleData['Enabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
                  <option value="yes" <?php echo (!empty($moduleData['show_posts']) && $moduleData['show_posts'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
            </select>
        </div>
     </td>
    </tr>
    <tr>
      <td class="col-xs-3">
	  <h5><strong><?php echo $text_use_small_header; ?></strong></h5>
      <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_use_small_header_help; ?></span></td>
      <td class="col-xs-9">
        <div class="col-xs-4">
        	<select id="posts" name="<?php echo $moduleNameSmall; ?>[small_header]" class="form-control">
                  <option value="no"  <?php echo (empty($moduleData['small_header']) || $moduleData['Enabled']== 'no') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
                  <option value="yes" <?php echo (!empty($moduleData['small_header']) && $moduleData['small_header'] == 'yes') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
            </select>
        </div>
     </td>
    </tr>
    <tr>
        <td class="col-xs-3">
        	<h5><strong><?php echo $custom_css; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $custom_css_help; ?></span></td>
        <td class="col-xs-9">
            <div class="col-xs-4">
                <div class="form-group" style="padding-top:10px;">
                    <textarea class="form-control" name="<?php echo $moduleNameSmall; ?>[CustomCSS]" placeholder="<?php echo $custom_css_placeholder; ?>" rows="4"><?php if(isset($moduleData['CustomCSS'])) { echo $moduleData['CustomCSS']; } else { echo ""; }?></textarea>
                </div>
            </div>
        </td>
    </tr>
    
</table>
<script>
$(function() {
    var $typeSelector1 = $('#cover');
	var $typeSelector2 = $('#friends');
	
	 if ($typeSelector1.val() === 'yes') {
			$typeSelector1.selected = 'selected';
        }
 });
</script>