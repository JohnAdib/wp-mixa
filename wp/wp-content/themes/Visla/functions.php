<?php	
/**
* @package WordPress
* @subpackage Novatorix
**/

//add_custom_background();

add_theme_support('nav-menus');
if ( function_exists( 'register_nav_menus' ) ) {
  	register_nav_menus(
  		array(
  		  'header_menu' => 'Header Menu'
  		)
  	);
}

automatic_feed_links();

define('JSLIBS', get_bloginfo('template_url') . '/lib/js' );
define('NVXFUNCTIONS', get_bloginfo('template_url') . '/lib/functions' );

function admin_scripts() {
	wp_enqueue_script('jquery', JSLIBS .'/jquery.js', array('jquery'), '1.0');
	wp_enqueue_script('tablerows', JSLIBS .'/exclude.js', array('jquery'), '1.0.0');
	wp_enqueue_script('panel-slide', JSLIBS .'/panel-slide.js', false, '1.0');
}
add_action('admin_enqueue_scripts', 'admin_scripts');

require_once( TEMPLATEPATH . '/lib/admin/theme-admin.php' );	
require_once( TEMPLATEPATH . '/lib/admin/theme-options.php' );
require_once( TEMPLATEPATH . '/lib/admin/theme-functions.php' );
require_once( TEMPLATEPATH . '/lib/posts/post-options.php' );
require_once( TEMPLATEPATH . '/lib/functions/wp-pagenavi.php' );
require_once( TEMPLATEPATH . '/lib/functions/widgets.php' );	
require_once( TEMPLATEPATH . '/lib/functions/shortcodes.php');
require_once( TEMPLATEPATH . '/lib/functions/breadcrumb.php');

/* Function admin_update_theme */
function admin_update_theme() {

    global $themename, $shortname, $options;

    if ( $_GET['page'] == basename(__FILE__) ) {
    
        if ( 'save' == $_REQUEST['action'] ) {
				
                foreach ($options as $value) {
                    update_option( $value['id'], $_REQUEST[ $value['id'] ] ); }

                foreach ($options as $value) 
				{
                    if( isset( $_REQUEST[ $value['id'] ] ) ) 
					{ 
						update_option( $value['id'], $_REQUEST[ $value['id'] ]  ); 
					} else { 
						delete_option( $value['id'] ); 
					} 
				}				
				
				// Update option 'portfolio_page_id' Portfolio ID to Category for unlimited portfolio subcategories
				foreach ($_POST as $key => $value) 
				{
					if ( preg_match("/portfolio_to_cat_/", $key) ) 
					{	
						if ($value != '') $portfolio_items[$key] = $value;
					}	
									
					delete_option( $shortname.'_portfolio_page_id');
					update_option( $shortname.'_portfolio_page_id', $portfolio_items);					
				}

				// Update option 'portfolio_page_id' Portfolio ID to Category for unlimited portfolio subcategories				
				foreach ($_POST as $key => $value) 
				{
					if ( preg_match("/piecemaker_text_url_/", $key) ) 
					{	
						if ($value != '') $piecemaker_text_url_items[$key] = $value;
					}	
									
					delete_option( $shortname.'_piecemaker_text_url');
					update_option( $shortname.'_piecemaker_text_url', $piecemaker_text_url_items);					

					if ( preg_match("/piecemaker_text_headline_/", $key) ) 
					{	
						if ($value != '') $piecemaker_text_headline_items[$key] = $value;
					}	
									
					delete_option( $shortname.'_piecemaker_text_headline');
					update_option( $shortname.'_piecemaker_text_headline', $piecemaker_text_headline_items);					

					
					if ( preg_match("/piecemaker_text_description_/", $key) ) 
					{	
						if ($value != '') $piecemaker_text_description_items[$key] = $value;
					}	
									
					delete_option( $shortname.'_piecemaker_text_description');
					update_option( $shortname.'_piecemaker_text_description', $piecemaker_text_description_items);										
				}
				
                header("Location: themes.php?page=functions.php&saved=true");
                die;

        } else if ( 'reset' == $_REQUEST['action'] ) {

            foreach ($options as $value) {
                delete_option( $value['id'] ); }

            header("Location: themes.php?page=functions.php&reset=true");
            die;
        }
    }
    add_menu_page($themename, $themename, 'edit_themes', basename(__FILE__), 'theme_update');
}

/* Function admin_theme*/
function theme_update() {
    global $themename, $shortname, $options;
    if ( $_REQUEST['saved'] ) {	echo '<div id="message" class="updated fade"><p><strong>'.$themename.' settings saved.</strong></p></div>'; }
	if ( $_REQUEST['reset'] ) echo '<div id="message" class="updated fade"><p><strong>'.$themename.' settings reset.</strong></p></div>';   

	require_once( TEMPLATEPATH . '/lib/admin/theme-update.php');

}
add_action('admin_menu', 'admin_update_theme');	




/*---------------------------------------------------------------Basic EvazzadehSettings Settings------------------------- */

// Remove rel attribute from the category list
function remove_category_list_rel($output)
{
  $output = str_replace(' rel="category tag"', '', $output);
  return $output;
}
add_filter('wp_list_categories', 'remove_category_list_rel');
add_filter('the_category', 'remove_category_list_rel');

// change wordpress admin footer page
function remove_footer_admin ()
{ echo "به پنل مديريت <a href='"; bloginfo('url'); echo"' Title='"; bloginfo('description'); echo"'>"; bloginfo('name'); echo"</a> خوش آمديد | طراحي و توسعه داده شده توسط <a href='http://www.Serena.ir' Title='Serena Group'>گروه سرنا &copy;</a>";}
add_filter('admin_footer_text', 'remove_footer_admin');

// change wordpress logo
function custom_loginlogo() {echo '<style type="text/css">h1 a {background-image: url('.get_bloginfo('template_directory').'/images/logo-intro.png) !important; }</style>';}
add_action('login_head', 'custom_loginlogo');

// change wordpress logo url
function wpc_url_login(){return "http://www.Serena.ir";}
add_filter('login_headerurl', 'wpc_url_login');

// hide update message for editors
add_action( 'admin_init', 'hide_update_msg', 1 );
function hide_update_msg(){! current_user_can( 'install_plugins' ) and remove_action( 'admin_notices', 'update_nag', 3 );}


/*-----------------------------------------------------------------------------Dashboard Settings------------------------- */
// show theme information on dashboard
function wpc_dashboard_widget_function() {
	echo "<ul>
	<li>زمان انتشار: آبان ماه 1391</li>
	<li>منتشر کننده: <a href='http://www.Serena.ir' title='Serena Group'>گروه طراحی سرنا</a></li>
	<li>پشتیبان هاست: <a href='http://www.Serena.ir' title='Serena گروه هاستینگ'>Serena Server</a></li>
	</ul>";
}
function wpc_add_dashboard_widgets() {
	wp_add_dashboard_widget('wp_dashboard_widget', 'اطلاعات فنی پوسته', 'wpc_dashboard_widget_function');
}
add_action('wp_dashboard_setup', 'wpc_add_dashboard_widgets' );

// hide unused metabox from wordpress dashboard
function wpc_dashboard_widgets() {
	global $wp_meta_boxes;

// Remove the quickpress widget
	unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_quick_press']);
// Incoming links
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_incoming_links']);
// Plugins
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_plugins']);
// Right Now
	//unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_right_now']);
// recent drafts
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_drafts']);
// recent comments
	//unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_comments']);
// Wordpress News	
	unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_primary']);
// Wordpress weblog
	unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_secondary']);
	
}
add_action('wp_dashboard_setup', 'wpc_dashboard_widgets');





?>