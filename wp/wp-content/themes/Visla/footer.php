<?php
/**
 * @package WordPress
 * @subpackage Novatorix
 */
 global $shortname;
?>

<?php 
	wp_reset_query();
	if ( (!is_front_page()) or (!is_home()) ) { 
?>
		</div><!-- e: page -->		
	</div><!-- e: outer-page -->	
</div><!-- e: wrap -->
<?php } ?>

<div id="foot">
	<div id="footer">
		<div class="testimonials">
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Footer column 1") ) : ?>		
				<h4>به ما بپیوندید</h4>
				
				<p><?php echo get_option($shortname."_first_testimonial"); ?></p>
			<?php endif; ?>				
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Footer column 2") ) : ?>					
				<p><?php echo get_option($shortname."_second_testimonial"); ?></p>
			<?php endif; ?>

		</div>
		
		<div id="social">
			<h5>با ما در ارتباط باشید</h5>
			<ul>
				<?php 
					if (get_option($shortname."_display_rss")) { 
						echo '<li><a href="'.get_option($shortname."_rss").'" title="خبرخوان" class="social1"></a></li>';
					} 
					
					if (get_option($shortname."_display_twitter")) { 
						echo '<li><a href="'.get_option($shortname."_twitter").'" title="توئیتر" class="social2"></a></li>';
					} 
					
					if (get_option($shortname."_display_facebook")) { 
						echo '<li><a href="'.get_option($shortname."_facebook").'" title="فیس بوک" class="social3"></a></li>';
					} 
					
					if (get_option($shortname."_display_linkedin")) { 
						echo '<li><a href="'.get_option($shortname."_linkedin").'" title="لینکدین" class="social4"></a></li>';
					} 
					
					?>				
			</ul>
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Footer column 3") ) : ?>				
			<p>
				<?php if (get_option($shortname."_adress")) { echo get_option($shortname."_adress").'<br />';} ?>
				<?php if (get_option($shortname."_phone")) { echo 'تلفن: '.get_option($shortname."_phone").'<br />';} ?>
				<?php if (get_option($shortname."_fax")) { echo 'فکس: '.get_option($shortname."_fax").'<br />';} ?>				
				<?php if (get_option($shortname."_email")) { echo 'رایانامه: '.get_option($shortname."_email");} ?>
			</p>
			<?php endif; ?>
			
		</div>
	</div>
	<div id="bottom">
		<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Footer Copyright text") ) : ?>
			<?php echo stripslashes(get_option($shortname."_footer")); ?>
		<?php endif; ?>			
	</div>
</div><!-- e: foot -->

<script type="text/javascript" >
$(document).ready(function(){
	$(".gallery a[rel^='prettyPhoto']").prettyPhoto({theme:'facebook'});
});
</script>

<?php echo get_option($shortname."_tracking_code");  ?>

<!--[if lt IE 7]><script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/unitpngfix.js"></script><![endif]-->
 
</body>
</html>