<div class="newletter-subscribe newletter-home">
<div id="box" class="newletter-container">
 <div style="" id="dialog_normal" class="window">
	<div class="box">
		<div class="row">
			<div class="col-md-6 col-sm-12">
				<div class="newletter-title">
					<p><?php echo $heading_title; ?></p>
					<label><?php echo $newsletter_text_infor; ?></label>
				</div> 
			</div>
			<div class="col-md-6 col-sm-12">
				<div class="box-content newleter-content">					
					<div id="frm_subscribe">
						<form name="subscribe" id="subscribe">
							<input type="text" value="" name="subscribe_email" id="subscribe_email">
							<input type="hidden" value="" name="subscribe_name" id="subscribe_name" />
							<a class="button" onclick="email_subscribe()"><span><i class="lnr lnr-envelope"></i></span></a>
							<?php if($option_unsubscribe) { ?>
							<a class="button" onclick="email_unsubscribe()"><span><i class="lnr lnr-envelope"></i></span></a>
							<?php } ?>
						</form>
					</div><!-- /#frm_subscribe -->
					<div id="notification_normal"></div>
				</div><!-- /.box-content -->
			</div>
		</div>
 </div><!-- box -->
</div>	<!-- window -->


<script type="text/javascript">
		function email_subscribe(){
			$.ajax({
					type: 'post',
					url: 'index.php?route=extension/module/newslettersubscribe/subscribe',
		            data:$("#subscribe").serialize(),
					success: function (json) {
						if(json['status'] == true) {
							var html = 	'<div class="success">';
							html +=		json['html'];
							html +=		'</div>'
							$('#notification_normal').html(html);
						} else {
							var html = 	'<div class="warning">';
							html +=		json['html'];
							html +=		'</div>'
							$('#notification_normal').html(html);
						}

						if(json['reset'] == true) {
							$("#subscribe")[0].reset();
						}
						
					}}); 
			
			
		}
		function email_unsubscribe(){
			$.ajax({
					type: 'post',
					url: 'index.php?route=extension/module/newslettersubscribe/unsubscribe',
					dataType: 'html',
		            data:$("#subscribe").serialize(),
					success: function (html) {
						eval(html);
					}}); 
			$('html, body').delay( 1500 ).animate({ scrollTop: 0 }, 'slow'); 
			
		}
		</script>
		<script type="text/javascript">
		    $(document).ready(function() {
				$('#subscribe_email').keypress(function(e) {
		            if(e.which == 13) {
		                e.preventDefault();
		                email_subscribe();
		            }
					var name= $(this).val();
				  	$('#subscribe_name').val(name);
		        });
				$('#subscribe_email').change(function() {
				 var name= $(this).val();
				  		$('#subscribe_name').val(name);
				});
			
		    });
		</script>
	</div><!-- /.box -->
</div>