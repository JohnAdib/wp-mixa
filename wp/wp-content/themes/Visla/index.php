<?php
/**
 * @package WordPress
 * @subpackage Novatorix
**/

global $shortname;
$site_url = get_option('siteurl');
$site_url = str_replace('http://www','',$site_url);
$site_url = str_replace('http://','',$site_url);
if (isset($_GET["color"])) { $color = $_GET["color"]; setcookie("color", $color, time()+3600, "/", $site_url);}
if (isset($_COOKIE["color"])) { $color = $_COOKIE["color"]; } else { $color ='arsenic.css'; }
?>
<!DOCTYPE html>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/reset.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/mobile.css" type="text/css" media="screen and (min-width: 400px) and (max-width: 800px)" />

<?php if (get_option($shortname.'_style')){ 
if (isset($_COOKIE["color"])) { $color = $_COOKIE["color"]; } else { $color = get_option($shortname.'_style'); }
?>
<link rel="stylesheet" href="<?php echo bloginfo('template_url').'/css/'.$color; ?>" type="text/css" media="screen" />
<?php }else{ ?>
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/arsenic.css" type="text/css" media="screen" />
<?php } ?>

<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css" type="text/css" media="screen,print" />
<meta name="description" content="<?php bloginfo('name'); ?> | <?php bloginfo('description'); ?>" />
<link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/images/favicon.png" />
<!-- start:jquery scripts -->
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/jquery.easing.min.js"></script>
<!-- end:jquery scripts -->

<!--Superfish -->
<!--link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url'); ?>/scripts/superfish.css" media="screen" /-->
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/hoverIntent.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/superfish.js"></script>
<script type="text/javascript">
		// initialise plugins
		jQuery(function(){
			jQuery('ul.sf-menu').superfish();
		});
</script>


<?php
	$slider_switch = get_option($shortname.'_slider_switch');
	if (!$slider_switch) $slider_switch = 'piecemaker';
	
	if ($slider_switch == 'piecemaker') {
?>
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/fonts/stylesheet.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/piecemaker/js/swfobject/swfobject.js"></script>	
<?php } ?>

<?	if ($slider_switch == 'nivo') { ?>
     <!-- SLIDER: NIVO -->
	  <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/scripts/nivo/nivo-slider.css" type="text/css" media="screen" />
	  <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/scripts/nivo/nivo-slider-custom.css" type="text/css" media="screen" />
	 
	  <!-- jquery core -->
	  <script src="<?php bloginfo('template_url'); ?>/scripts/nivo/jquery.nivo.slider.pack.js" type="text/javascript"></script>
	  <script type="text/javascript">
		//<![CDATA[
		  $(window).load(function() {
			$('#nivo_container').nivoSlider();
		  });
		//]]>
	  </script>

	  <!-- end of head -->
<?php } ?>


	<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url'); ?>/ie.css" />
	<![endif]-->
	
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/scripts/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" />
<script src="<?php bloginfo('template_url'); ?>/scripts/prettyPhoto/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>

<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<?php if ( is_singular() ) wp_enqueue_script( 'comment-reply' ); ?>

</head>

<body>
<div id="shim"></div>
<div id="wrap">
	<div id="head">
	<?php 
		if (get_option($shortname.'_logo')) { 
		$logo_url = get_option($shortname.'_logo');
		list($width, $height, $type, $attr) = getimagesize($logo_url);
		$logo_height = $height;
		$logo_width = $width;
		
		$logo_top = 80-($logo_height-50)/2;
		$logo_left = 366-($logo_width-228)/2;
		
	?>
		<a href="<?php echo get_option('siteurl'); ?>" title="<?php bloginfo('name'); ?> - <?php bloginfo('description'); ?>" id="logo_user"  style="position:absolute; top:20px;	left:0;	height:<?php echo $logo_height; ?>px; width:<?php echo $logo_width; ?>px; top:<?php echo $logo_top; ?>px; left:<?php echo $logo_left; ?>px; text-indent:-9999em; background: url(<?php echo get_option($shortname.'_logo'); ?>) no-repeat scroll center top;"><?php bloginfo('name'); ?></a>
	<?php } else {?>
		<a href="<?php echo get_option('siteurl'); ?>" title="<?php bloginfo('name'); ?> - <?php bloginfo('description'); ?>" id="logo">
		<img src="<?php echo get_bloginfo('template_url');?>/images/logo.png" title= "<?php bloginfo('name'); ?> - <?php bloginfo('description'); ?>" />
		</a>
	<?php
	}
	?>	
		  <!-- NAVIGATION -->
		<div class="navigation-wrap">
			<!--div class="nav-right-corner"></div-->
			<?php
				$wp_3_0_menus = get_option($shortname.'_wp_3_0_menus');
				if (!$wp_3_0_menus) {
					wp_nav_menu(array(
					'menu'              => 'Header Menu',
					'container'         => '',
					'container_class'   => '',
					'container_id'      => '',
					'menu_class'        => 'sf-menu',
					'menu_id'           => '',
					'echo'              => true,
					'fallback_cb'       => '',
					'before'            => '',
					'after'             => '',
					'link_before'       => '',
					'link_after'        => '',
					'depth'             => 0,
					'walker'            => '',
					'theme_location'    => ''
					));
				} else {
			?>		
		
			<ul class="sf-menu">
			<li><a href="<?php echo get_settings('home'); ?>" title="صفحه نخست" <?php if (is_front_page()){echo 'class="current"';} ?>>صفحه نخست</a></li>
				<?php 
					$exclude = get_option($shortname.'_exclude_pages');
					$all_pages = wp_list_pages("sort_column=menu_order&sort_order=ASC&exclude=".$exclude."&title_li=&echo=0");
					$all_pages = str_replace('<ul>','<ul class="sub-menu">',$all_pages);
					
					echo $all_pages;
				?>
			</ul>
			
			<?php } ?>
			
		</div>
		<!--form role="search" method="get" id="search" action="<?php bloginfo('home'); ?>">
			<p><input type="text" class="text" id="s" name="s"  value="Search" onclick="this.value=''" /><input type="submit" class="submit" value="" /></p>
		</form-->
		<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Header Search Form") ) : ?>				
		<?php endif; ?>
		
	</div><!-- e: head -->
	<?php
	//echo 'slider_switch = '.$slider_switch;
	?>
	
	<?php if ($slider_switch == 'staticimage') { ?>
	<div id="splash">
		<div style="margin-left:30px;"> 
			<?php 
				if  (get_option($shortname."_staticimage_gotourl")){
					echo '<a href="'.get_option($shortname."_staticimage_gotourl").'"><img width="900px" height="400px" src="'.get_option($shortname."_staticimage_url").'" alt="1"></a>';				
				} else {
					echo '<img  width="900px" height="400px" src="'.get_option($shortname."_staticimage_url").'" alt="1">';
				}
			?>		
		</div>
	</div><!-- e: splash -->
	<?php } ?>

	<?php if ($slider_switch == 'piecemaker') { ?>
	<div id="splash">
		<div id="piecemaker">
		<p>برای مشاهده کامل وب سایت شما نیازمند نصب و یا ارتقای فلش پلیر به نسخه 10 یا جدیدتر هستید<a href="http://www.adobe.com/products/flashplayer/" target="_blank">کلیک کنید</a>.</p>
		</div>
	</div><!-- e: splash -->
	<script type="text/javascript">
		var direction = {};
			direction.imageSource = "<?php bloginfo('template_url'); ?>/scripts/piecemaker/images";
			direction.cssSource   = "<?php bloginfo('template_url'); ?>/scripts/piecemaker/piecemaker.css";		
			direction.xmlSource   = "<?php bloginfo('template_url'); ?>/scripts/piecemaker/piecemakerXML.php";
		var fickle = {};
			fickle.wmode = "transparent";
			swfobject.embedSWF("<?php bloginfo('template_url'); ?>/scripts/piecemaker/piecemaker.swf", "piecemaker", "1200", "550", "10", "<?php bloginfo('template_url'); ?>/scripts/piecemaker/js/swfobject/expressInstall.swf", direction, fickle);
	</script>
	<?php } ?>
	
	
	<?php if ($slider_switch == 'nivo') { ?>	

	<div id="splash">
	
		<?php
			$get_custom_options = get_option($shortname.'_slider_cp');
			$get_images_count = get_option($shortname.'_slider_images_count');
			$get_custom_url = get_option($shortname.'_piecemaker_text_url');
			$get_custom_headline =  str_replace("'","\'",get_option($shortname.'_piecemaker_text_headline'));
			$get_custom_description = str_replace("'","\'",get_option($shortname.'_piecemaker_text_description'));	
			$get_custom_goto_url = str_replace("'","\'",get_option($shortname.'_piecemaker_text_goto_url'));
		?>			
	
		<div id="nivo_container" class="nivoSlider"> 
		
		<?php
			for($i = 1; $i <= $get_images_count; $i++) {
				if ($get_custom_url[$shortname.'_piecemaker_text_url_'.$i]) {
				echo '
					<img width="900" height="400" src="'.get_bloginfo('template_url').'/scripts/piecemaker/images/'.$get_custom_url[$shortname.'_piecemaker_text_url_'.$i].'" alt="Serena Group | گروه سرنا" title="#htmlcaption'.$i.'" />
				';
				}
			}	
		?>			
		
		</div>
		
		<?php
			for($i = 1; $i <= $get_images_count; $i++) {
				if ( ($get_custom_url[$shortname.'_piecemaker_text_url_'.$i]) ) {
				echo '
					<div id="htmlcaption'.$i.'" class="nivo-caption">
						<strong><a href="'.$get_custom_goto_url[$shortname.'_piecemaker_text_goto_url_'.$i].'">'.$get_custom_headline[$shortname.'_piecemaker_text_headline_'.$i].'</a></strong>'.'
					</div>
				';
				} else {
				echo '
					<div id="htmlcaption'.$i.'" class="nivo-caption">
						'.$get_custom_headline[$shortname.'_piecemaker_text_headline_'.$i].'<br>'.stripslashes($get_custom_description[$shortname.'_piecemaker_text_description_'.$i]).'
					</div>
				';
				}
			}	
		?>			
		

		
	</div>
	
	<?php }	?>
	
	
	
	<div id="front-caption">
		<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Homepage slogan") ) : ?>

		<p><?php echo stripslashes(get_option($shortname."_slogan")); ?></p>
		<?php endif; ?>		
	</div><!-- e: front caption -->
	
	
	
	
	<div id="front">
		
		<div class="front">
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Homepage column 1") ) : ?>
			<?php if (get_option($shortname."_1column_url_link")) { $first_siteurl_begin = '<a href="'.get_option($shortname."_1column_url_link").'" title="'.get_option($shortname."_1column_title").'">'; $first_siteurl_end = '</a>'; } ?>
			<h1><?php echo $first_siteurl_begin; ?><?php echo stripslashes(get_option($shortname."_1column_title")); ?><?php echo $first_siteurl_end; ?></h1>
			<?php if (get_option($shortname."_1column_imageurl")) {
				echo $first_siteurl_begin.'<img width="128" height="128" src="' .get_option($shortname."_1column_imageurl") . '" alt="'. get_option($shortname."_1column_title") .'" />'.$first_siteurl_end;
				} 
			?>
			<p><?php echo stripslashes(get_option($shortname."_1column_text")); ?></p>
			<?php endif; ?>
		</div>
		
		<div class="front">
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Homepage column 2") ) : ?>		
			<?php if (get_option($shortname."_2column_url_link")) { $second_siteurl_begin = '<a href="'.get_option($shortname."_2column_url_link").'" title="'.get_option($shortname."_2column_title").'">'; $second_siteurl_end = '</a>'; } ?>
			<h1><?php echo $second_siteurl_begin; ?><?php echo stripslashes(get_option($shortname."_2column_title")); ?><?php echo $second_siteurl_end; ?></h1>
			<?php if (get_option($shortname."_2column_imageurl")) { 
				echo $second_siteurl_begin.'<img width="128" height="128" src="' .get_option($shortname."_2column_imageurl") . '" alt="'. get_option($shortname."_2column_title") .'" />'.$second_siteurl_end;
				} 
			?>
			
			<p><?php echo stripslashes(get_option($shortname."_2column_text")); ?></p>
			<?php endif; ?>
		</div>
		
		<div class="front">
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("Homepage column 3") ) : ?>
			<?php if (get_option($shortname."_3column_url_link")) { $third_siteurl_begin = '<a href="'.get_option($shortname."_3column_url_link").'" title="'.get_option($shortname."_3column_title").'">'; $third_siteurl_end = '</a>'; } ?>
			<h1><?php echo $third_siteurl_begin; ?><?php echo stripslashes(get_option($shortname."_3column_title")); ?><?php echo $third_siteurl_end; ?></h1>
			<?php if (get_option($shortname."_3column_imageurl")) { 
				echo $third_siteurl_begin.'<img width="128" height="128" src="' .get_option($shortname."_3column_imageurl") . '" alt="'. get_option($shortname."_3column_title") .'"/>'.$third_siteurl_end;
				} 
			?>			
			<p><?php echo stripslashes(get_option($shortname."_3column_text")); ?></p>
			<?php endif; ?>			
		</div>
		
	</div><!-- e: front -->

</div><!-- e: wrap -->

<?php echo stripslashes(get_option($shortname."_tracking_code"));  ?>

<?php get_footer(); ?>