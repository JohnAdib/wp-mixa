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
<link rel="stylesheet" href="<?php echo bloginfo('template_url').'/css/'.$color; ?>" type="text/css" media="Screen" />
<?php }else{ ?>
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/arsenic.css" type="text/css" media="Screen" />
<?php } ?>

<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css" type="text/css" media="screen,print" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />

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

<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/fonts/stylesheet.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/piecemaker/js/swfobject/swfobject.js"></script>	

	<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url'); ?>/ie.css" />
	<![endif]-->

<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/scripts/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" />
<script src="<?php bloginfo('template_url'); ?>/scripts/prettyPhoto/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>

<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<?php if ( is_singular() ) wp_enqueue_script( 'comment-reply' ); ?>

</head>

<body class="inner">
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
	<?php } else { ?>
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


	
	<div id="section-title">
		<h1><?php 		
			if (is_single()) 
			{	$category = get_the_category();
				echo $category[0]->cat_name; 
			} else if(is_archive()) {
				//echo 'Post Archive';
			?>
					<?php $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>
					<?php /* If this is a category archive */ if (is_category()) { ?>
					آرشیو موضوعی<br />برای: &lsquo;<?php single_cat_title(); ?>&rsquo;
					<?php /* If this is a tag archive */ } elseif( is_tag() ) { ?>
					تمام نوشته های مرتبط<br />کلیدواژه: &lsquo;<?php single_tag_title(); ?>&rsquo;
					<?php /* If this is a daily archive */ } elseif (is_day()) { ?>
					آرشیو روزانه<br />برای: &lsquo;<?php the_time('F jS, Y'); ?>&rsquo;
					<?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
					آرشیو ماهانه<br />برای: &lsquo;<?php the_time('F, Y'); ?>&rsquo;
					<?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
					آرشیو سالانه<br />برای: &lsquo;<?php the_time('Y'); ?>&rsquo;
					<?php /* If this is an author archive */ } elseif (is_author()) { 
					$curauth = get_userdatabylogin(get_query_var('author_name')); ?>
					آرشیو کاربر<br />برای: &lsquo;<?php echo $curauth->nickname; ?>&rsquo;
					<?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
					آرشیو وب سایت
					<?php } ?>
			<?php
			} else if(is_search()) {
				echo 'نتایج جستجوی:';
				/* Search Count */ $allsearch = &new WP_Query("s=$s&showposts=-1"); $key = wp_specialchars($s, 1); $count = $allsearch->post_count; _e(''); _e('<strong>'); echo $key; _e('</strong>'); wp_reset_query();
				
			} else { echo $post->post_title; }
		?></h1>
	</div>

	<div id="outer-page">
		<div id="page">
		<?php 	if (get_option($shortname."_breadcrumbs")) : ?>
			<div class="breadcrumb"><?php get_breadcrumb(); ?></div>
		<?php endif; ?>
		