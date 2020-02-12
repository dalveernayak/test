<?php
/**
 * Isoko functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package WordPress
 * @subpackage Isoko_Brundi
 * @since 1.0
 */


/**
 * Isoko only works in WordPress 4.7 or later.
 */
add_theme_support( 'post-thumbnails');

define( '_DEVELOPER_USER_ROLE',  'administrator');

// set for sidebar general survey id
if( $_SERVER['SERVER_NAME'] == 'localhost' ){
		define( 'SIDEBAR_GEN_SVY_ID',  924478511); // localhost
	}else{
		define( 'SIDEBAR_GEN_SVY_ID',  207192866); // staging or live
}



 
function add_theme_scripts() {
 
 //css
  
  //wp_enqueue_style( 'raleway-font', 'https://fonts.googleapis.com/css?family=Raleway:300,400,400i,700,800|Varela+Round');
  wp_enqueue_style( 'bootstrap-min', get_template_directory_uri() . '/css/bootstrap.min.css');
  wp_enqueue_style( 'font-awesome-min', get_template_directory_uri() . '/css/font-awesome.min.css');
  wp_enqueue_style( 'icomoon', get_template_directory_uri() . '/css/icomoon.css');
  wp_enqueue_style( 'style', get_stylesheet_uri() );
  wp_enqueue_style( 'jquery-bxslider', get_template_directory_uri() . '/css/jquery.bxslider.css');
  wp_enqueue_style( 'responsive', get_template_directory_uri() . '/css/responsive.css');
  wp_enqueue_style( 'print', get_template_directory_uri() . '/css/print.css');
  
 
 //js
  //wp_enqueue_script( 'jquery-min', get_template_directory_uri() . '/js/jquery-3.2.1.min.js');
  wp_enqueue_script( 'bootstrap.min', get_template_directory_uri() . '/js/bootstrap.min.js', array( 'jquery' ));
  wp_enqueue_script( 'jquery-bxslider', get_template_directory_uri() . '/js/jquery.bxslider.js', array( 'jquery' ));
  wp_enqueue_script( 'custom', get_template_directory_uri() . '/js/custom.js', array( 'jquery' ));
  
  wp_localize_script('custom', 'provience_script_vars', array(
			'selectProvience' => __('--- Votre Province ---', 'contact_us')
		)
	);

 
}
add_action( 'wp_enqueue_scripts', 'add_theme_scripts' );

/*
* Add JS to admin panel
*/
function scripts_for_admin() {
    wp_enqueue_script( 'custom-admin', get_template_directory_uri() . '/js/custom-admin.js', array( 'jquery' ));
}

add_action('admin_enqueue_scripts', 'scripts_for_admin');


/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function burundi_widgets_init() {
  register_sidebar( array(
  'name'          => __( 'Useful Links', 'burundi' ),
  'id'            => 'useful-links',
  'description'   => __( 'Add widgets here to appear in your footer.', 'burundi' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '<h4>',
  'after_title'   => '</h4>',
) );
register_sidebar( array(
  'name'          => __( 'Visitors Count', 'burundi' ),
  'id'            => 'visitors-count-total',
  'description'   => __( 'Add widgets here to appear in your footer.', 'burundi' ),
  'before_widget' => '<section id="%1$s" class="widget %2$s">',
  'after_widget'  => '</section>',
  'before_title'  => '<h2 class="widget-title">',
  'after_title'   => '</h2>',
) );


register_sidebar( array(
  'name'          => __( 'Footer Navigation', 'burundi' ),
  'id'            => 'navigation-total_footer',
  'description'   => __( 'Add widgets here to appear in your footer navigation.', 'burundi' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '<h4>',
  'after_title'   => '</h4>',
) );

register_sidebar( array(
  'name'          => __( 'Footer Copyright', 'burundi' ),
  'id'            => 'copyright-total_footer',
  'description'   => __( 'Add widgets here to appear in your footer navigation.', 'burundi' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );

register_sidebar( array(
  'name'          => __( 'Filter page', 'burundi' ),
  'id'            => 'filter_page_demo',
  'description'   => __( 'Add widgets here to appear in your footer navigation.', 'burundi' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );




register_sidebar( array(
  'name'          => __( 'Language Switcher', 'isoko' ),
  'id'            => 'language-switcher',
  'description'   => __( 'Add widgets here to appear in your header.', 'burundi' ),
  'before_widget' => '<section id="%1$s" class="widget %2$s">',
  'after_widget'  => '</section>',
  'before_title'  => '<h2 class="widget-title">',
  'after_title'   => '</h2>',
) );

register_sidebar( array(
  'name'          => __( 'Message For Slide', 'burundi' ),
  'id'            => 'message-slide',
  'description'   => __( 'Add widgets here to appear in your home page.', 'burundi' ),
  'before_widget' => '',
  'after_widget'  => '',
  'before_title'  => '',
  'after_title'   => '',
) );
}
add_action( 'widgets_init', 'burundi_widgets_init' );

/**
 * Use front-page.php when Front page displays is set to a static page.
 *
 * @since Isoko 1.0
 *
 * @param string $template front-page.php.
 *
 * @return string The template to be used: blank if is_home() is true (defaults to index.php), else $template.
 */
function isoko_front_page_template( $template ) {
  return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'isoko_front_page_template' );

/**
 * Implement the Custom Header feature.
 */
require get_parent_theme_file_path( '/inc/custom-header.php' );

/**
 * Custom template tags for this theme.
 */
require get_parent_theme_file_path( '/inc/template-tags.php' );

/**
 * Additional features to allow styling of the templates.
 */
require get_parent_theme_file_path( '/inc/template-functions.php' );

/**
 * Customizer additions.
 */
require get_parent_theme_file_path( '/inc/customizer.php' );

/**
 * SVG icons functions and filters.
 */
require get_parent_theme_file_path( '/inc/icon-functions.php' );

/*
* Hide Dashboard options in front end like Dashboad, Edit page etc
*
*/
show_admin_bar( false );

/*
* Remove unnecessary meta-data from site
*
*/
remove_action( 'wp_head', 'wp_generator' ); 
remove_action( 'wp_head', 'wlwmanifest_link' ); 
remove_action( 'wp_head', 'rsd_link' );

/*
* Disable HTML in WordPress comments
*
*/
add_filter( 'pre_comment_content', 'wp_specialchars' );

/*
* hide all update realted notifications
* @ hide_update_notice_to_all_but_admin_users is the function name 
*
*/
function hide_update_notice_to_all_but_admin_users()
{
    if (!current_user_can('update_core')) {
        remove_action( 'admin_notices', 'update_nag', 3 );
    }
}
add_action( 'admin_head', 'hide_update_notice_to_all_but_admin_users', 1 );

/*
* Addon to remove the Editor menu from the dashboard so that users 
* @ remove_editor_menu is the function name 
*
*/
function remove_editor_menu() {
  remove_action('admin_menu', '_add_themes_utility_last', 101);
}
add_action('_admin_menu', 'remove_editor_menu', 1);

 /**
 *Register menu  option in backend 
 *@param Header Menu name of menu
 *@param primary menu for location of menu
 */
 register_nav_menu('Header Menu', 'primary menu');
 
  /**
  * Load dynamic menu (navigation) in footer section
  *@param Footer Menu Name of menu
  *@param footer location for menu
  */
 register_nav_menus(  array('footer' => __( 'Footer Menu', 'iskos' ),));

/*
* Change the default error messages
* @chng_default_error_msg is the function name
* @return pass error msg that you want to display
*
*/
function chng_default_error_msg(){ 
  return 'Username Or Password Is Invalid!!';
}
add_filter( 'login_errors', 'chng_default_error_msg' );


/*
* Auto logout after specific session if any user is idle on backend
*
*/
function wpdev_login_session( $expire ) {
// Set login session limit in seconds
return 1200; 
}
//add_filter ( 'auth_cookie_expiration', 'wpdev_login_session' );

/*
* Change the login Form logo Url
*
*/
add_filter( 'login_headerurl', 'custom_loginlogo_url' );
function custom_loginlogo_url($url) {
    return home_url();
} 

/*
* Change the Default Logo on login page
*
*/
function custom_loginlogo() {
echo '<style type="text/css">
h1 a {background-image: url('.get_bloginfo('template_directory').'/images/brand-logo.png) !important; 
height:auto!important;}
</style>';
}
add_action('login_head', 'custom_loginlogo');


/* 
* To change the default placeholder for Procedure Page 
*
*/
function wpb_change_title_text( $title ){
    $screen = get_current_screen();
    if('procedures' == $screen->post_type ){
        $title = 'Saisir le nom de la procédure ';
    }
    return $title;
}
add_filter( 'enter_title_here', 'wpb_change_title_text' );


/*
* Disallow procedure with same name/title of the procedure
* If post created with the same name it will automatically moves in the draft section of the procedure
* When title of the procedure will match to the exsting published posts it threws the error in alert box
*
*/
function disallow_posts_with_same_title($messages) {
    global $post;
    global $wpdb ;
    $title = $post->post_title;
    $post_id = $post->ID ;
    $wtitlequery = "SELECT post_title FROM $wpdb->posts WHERE post_status = 'publish' AND post_type = 'procedures' AND post_title = '{$title}' AND ID != {$post_id} " ;
 
    $wresults = $wpdb->get_results( $wtitlequery) ;
  
    if ( isset($wresults[0]) && !empty( $wresults[0]->post_title != '' ) ) {
        $error_message = _e("Ce titre est déjà utilisé. Merci d'en choisir un autre", "error-msg");
        add_settings_error('post_has_links', '', $error_message, 'error');
        settings_errors( 'post_has_links' );
        $post->post_status = 'draft';
        wp_update_post($post);
        return;
    }
    return $messages;
}
add_action('post_updated_messages', 'disallow_posts_with_same_title');

/*
* Register the taxonomy capabilities for different type of taxonomies of the custom post type
* services_gestionnaires is the capability type of Procedure that reflect on the user capabilties setting page 
* thématique is the capability type of Procedure that reflect on the user capabilties setting page 
* usertype is the capability type of Procedure that reflect on the user capabilties setting page 
* provinces_cat is the capability type of Provinces that reflect on the user capabilties setting page 
*
*/

function cptui_register_my_taxes( $args, $taxonomy_slug ) {
	//echo $taxonomy_slug."nayak";
	if ( 'ministries' === $taxonomy_slug ) {
		$args['capabilities'] = array(
			'manage_terms' => 'manage_services_gestionnaires',
			'edit_terms'   => 'edit_services_gestionnaires',
			'delete_terms' => 'delete_services_gestionnaires',
			'assign_terms' => 'assign_services_gestionnaires',
		);
	}

	if ( 'provinces_cat' === $taxonomy_slug ) {
		$args['capabilities'] = array(
			'manage_terms' => 'manage_provinces_cat',
			'edit_terms'   => 'edit_provinces_cat',
			'delete_terms' => 'delete_provinces_cat',
			'assign_terms' => 'assign_provinces_cat',
		);
	}

  if ( 'bob_management_category' === $taxonomy_slug ) {
    $args['capabilities'] = array(
      'manage_terms' => 'manage_bob_management_category',
      'edit_terms'   => 'edit_bob_management_category',
      'delete_terms' => 'delete_bob_management_category',
      'assign_terms' => 'assign_bob_management_category',
    );
  }
	
if ( 'jurisprudence_type' === $taxonomy_slug ) {
    $args['capabilities'] = array(
      'manage_terms' => 'manage_jurisprudence_type',
      'edit_terms'   => 'edit_jurisprudence_type',
      'delete_terms' => 'delete_jurisprudence_type',
      'assign_terms' => 'assign_jurisprudence_type',
    );
  }

  if ('treatments_type' === $taxonomy_slug ) {
    $args['capabilities'] = array(
      'manage_terms' => 'manage_treatments_type',
      'edit_terms'   => 'edit_treatments_type',
      'delete_terms' => 'delete_treatments_type',
      'assign_terms' => 'assign_treatments_type',
    );
  }
  
  
	if ( 'glossary_type' === $taxonomy_slug ) {
		$args['capabilities'] = array(
			'manage_terms' => 'manage_glossary_type',
			'edit_terms'   => 'edit_glossary_type',
			'delete_terms' => 'delete_glossary_type',
			'assign_terms' => 'assign_glossary_type',
		);
	}
	if ( 'usertype' === $taxonomy_slug ) {
		$args['capabilities'] = array(
			'manage_terms' => 'manage_usertype',
			'edit_terms'   => 'edit_usertype',
			'delete_terms' => 'delete_usertype',
			'assign_terms' => 'assign_usertype',
		);
	}

	return $args;
}
add_filter( 'cptui_pre_register_taxonomy', 'cptui_register_my_taxes', 10, 2 );

flush_rewrite_rules();

/*add_action('admin_menu', 'my_menu_pages');
function my_menu_pages(){
    add_menu_page('Category Management', 'Category Management', 'manage_options', 'category_mnagemnt', 'category_mnagemnt' );
    
}

function category_mnagemnt()
{

  include("category_managent.php");
}*/

//
function menu_item_text( $menu ) {
     $menu = str_ireplace( 'Dashboard', 'Home', $menu );
     //$menu = str_ireplace( 'Posts', 'Articles', $menu );
     $menu = str_ireplace( 'Users', 'Users Management', $menu );
     $menu = str_ireplace( 'All Terms', 'All Glossary', $menu );
     $menu = str_ireplace( 'Add New Term', 'Add New Glossary', $menu );
   // $menu1 = str_ireplace( 'All Jurisprudence', 'Jurisprudence Management', $menu1);
      //$menu = str_ireplace( 'BOB', 'BOB Management', $menu );
     return $menu;
}
add_filter('gettext', 'menu_item_text');
add_filter('ngettext', 'menu_item_text');

///


/**

function cptui_register_my_taxes_bob_management_category() {

  $labels = array(
    "name" => __( "BOB Management Category", "avalon" ),
    "singular_name" => __( "BOB Management Category", "avalon" ),
    "all_items" => __( "BOB Management Category", "avalon" ),
    "add_new_item" => __( "BOB Management Category", "avalon" ),
  );

  $args = array(
    "label" => __( "BOB Management Category", "avalon" ),
    "labels" => $labels,
    "public" => true,
    "hierarchical" => true,
    "label" => "BOB Management Category",
    "show_ui" => true,
    "show_in_menu" => true,
    "show_in_nav_menus" => true,
    "query_var" => true,
    "rewrite" => array( 'slug' => 'bob_management_category', 'with_front' => true,  'hierarchical' => true, ),
    "show_admin_column" => false,
    "show_in_rest" => false,
    "rest_base" => "bob_management_category",
    "show_in_quick_edit" => false,
  );
  register_taxonomy( "bob_management_category", array( "bob" ), $args );
}

add_action( 'init', 'cptui_register_my_taxes_bob_management_category' );

 */

/*function alphaindex_save_alpha( $post_id ) {
  if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE )
  return;
  //only run for songs
  $slug = 'bob';
  $letter = '';
  // If this isn't a 'song' post, don't update it.
  if ( isset( $_POST['post_type'] ) && ( $slug != $_POST['post_type'] ) )
  return;
  // Check permissions
  if ( !current_user_can( 'edit_post', $post_id ) )
  return;
  // OK, we're authenticated: we need to find and save the data
  $taxonomy = 'branche_droit';
  if ( isset( $_POST['post_type'] ) ) {
    // Get the title of the post
    $title = strtolower( $_POST['post_title'] );
    
    // The next few lines remove A, An, or The from the start of the title
    $splitTitle = explode(" ", $title);
    $blacklist = array("an","a","the");
    $splitTitle[0] = str_replace($blacklist,"",strtolower($splitTitle[0]));
    $title = implode("", $splitTitle);
    
    // Get the first letter of the title
    $letter = substr( $title, 0, 1 );
    
    // Set to 0-9 if it's a number
    if ( is_numeric( $letter ) ) {
      $letter = '0-9';
    }
  }
  //set term as first letter of post title, lower case
  wp_set_post_terms( $post_id, $letter, $taxonomy );
}
add_action( 'save_post', 'alphaindex_save_alpha' );*/


function pagination_bar( $query_wp ) 
{
    $pages = $query_wp->max_num_pages;
    $big = 999999999; // need an unlikely integer
    if ($pages > 1)
    {
        $page_current = max(1, get_query_var('paged'));
        echo paginate_links(array(
            'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
            'format' => '?paged=%#%',
            'current' => $page_current,
            'total' => $pages,
        ));
    }

 
}
/* functions.php */
add_action( 'wp_ajax_link_check_click_counter', 'link_check_click_counter');
add_action( 'wp_ajax_nopriv_link_check_click_counter', 'link_check_click_counter' );
function link_check_click_counter() {

    if ( isset( $_POST['nonce'] ) &&  isset( $_POST['post_id'] ) && wp_verify_nonce( $_POST['nonce'], 'link_check_click_counter_' . $_POST['post_id'] ) ) {
        $count = get_post_meta( $_POST['post_id'], 'link_check_click_counter', true );
        update_post_meta( $_POST['post_id'], 'link_check_click_counter', ( $count === '' ? 1 : $count + 1 ) );
    }
    exit();
}


add_action( 'wp_footer', 'link_click' );
//add_action( 'wp_head', 'link_click' );
function link_click() {
    global $post;

    if( isset( $post->ID ) ) {
?>
    <script type="text/javascript" >
    jQuery(function ($) {
        var ajax_options = {
            action: 'link_check_click_counter',
            nonce: '<?php echo wp_create_nonce( 'link_check_click_counter_' . $post->ID ); ?>',
            ajaxurl: '<?php echo admin_url( 'admin-ajax.php' ); ?>',
            post_id: '<?php echo $post->ID; ?>'
        };

        $( '#link_count a' ).on( 'click', function() {
            var href = $( this ).attr( "href" );
            var redirectWindow = window.open(href, '_blank');   
            $.post( ajax_options.ajaxurl, ajax_options, function() {
                redirectWindow.location;
            });
            return false;
        });
    });
    </script>
<?php
    }
}
function link_check_meta_values( $key = '', $type = 'bob', $status = 'publish' ) {
    global $wpdb;
    if( empty( $key ) )
        return;
    $r = $wpdb->get_col( $wpdb->prepare( "
        SELECT pm.meta_value FROM {$wpdb->postmeta} pm
        LEFT JOIN {$wpdb->posts} p ON p.ID = pm.post_id
        WHERE pm.meta_key = '%s'
        AND p.post_status = '%s'
        AND p.post_type = '%s'
    ", $key, $status, $type ) );

    return $r;
}
//remove_action('media_buttons', 'media_buttons');



$url = get_the_permalink();

$wpml_permalink = apply_filters( 'wpml_permalink', $url , 'fr' ); 

///

/// custom ajax
add_action('wp_ajax_data_fetch' , 'data_fetch');
add_action('wp_ajax_nopriv_data_fetch','data_fetch');
function data_fetch(){
$id = $_POST['ofbranche_droit'];
$sql =  get_terms( 'division_du_droit', array(
        //'hide_empty' => 0,
        'parent' =>$id
    ));
//print_r($sql);
foreach($sql as $row)
{
$id = $row->term_id;
$data = $row->name;
echo '<option value="'.$id.'">'.$data.'</option>';
 } 
  ?>

  

                 
  
  <?php  die();
}
// add the ajax fetch js
add_action( 'wp_footer', 'ajax_fetch' );
function ajax_fetch() {
?>
<script type="text/javascript">
/*function fetchResults(){
  var keyword = jQuery('#searchInput').val();
  if(keyword == ""){
    jQuery('#datafetch').html("");
  } else {
    jQuery.ajax({
      url: '<?php //echo admin_url('admin-ajax.php'); ?>',
      type: 'post',
      data: { action: 'data_fetch', keyword: keyword  },
      success: function(data) {
        jQuery('#datafetch').html( data );
      }
    });
  }
    
}*/
//test
function fetchResults1(){
  var ofbranche_droit = jQuery('#ofbranche_droit').val();
  //alert(ofbranche_droit);
  if(ofbranche_droit == ""){
    jQuery('#datafetch').html("");
  } else {
    jQuery.ajax({
      url: '<?php echo admin_url('admin-ajax.php'); ?>',
      type: 'post',
      data: { action: 'data_fetch', ofbranche_droit: ofbranche_droit  },
      success: function(data) {
        //jQuery('#datafetch').html( data );
        jQuery(".ofcategorie").html(data);
      }
    });
  }
    
}

//


</script>

<?php
}

//other 2

/// custom ajax
add_action('wp_ajax_data_fetch_other' , 'data_fetch_other');
add_action('wp_ajax_nopriv_data_fetch_other','data_fetch_other');
function data_fetch_other(){
$id = $_POST['ofcategorie'];
$sql =  get_terms( 'division_du_droit', array(
        //'hide_empty' => 0,
        'parent' =>$id
    ));
//rint_r($sql);
foreach($sql as $row)
{
$id = $row->term_id;
$data = $row->name;
echo '<option value="'.$id.'">'.$data.'</option>';
 } 
  ?>
     
  
  <?php  die();
}
// add the ajax fetch js
add_action( 'wp_footer', 'ajax_fetch_other' );
function ajax_fetch_other() {
?>
<script type="text/javascript">
/*function fetchResults(){
  var keyword = jQuery('#searchInput').val();
  if(keyword == ""){
    jQuery('#datafetch').html("");
  } else {
    jQuery.ajax({
      url: '<?php //echo admin_url('admin-ajax.php'); ?>',
      type: 'post',
      data: { action: 'data_fetch', keyword: keyword  },
      success: function(data) {
        jQuery('#datafetch').html( data );
      }
    });
  }
    
}*/
//test
function fetchResults_ofcategorie(){
  var ofcategorie = jQuery('#ofcategorie').val();
  //alert(ofcategorie);
  if(ofcategorie == ""){
    jQuery('#datafetch').html("");
  } else {
    jQuery.ajax({
      url: '<?php echo admin_url('admin-ajax.php'); ?>',
      type: 'post',
      data: { action: 'data_fetch_other', ofcategorie: ofcategorie  },
      success: function(data) {
        //jQuery('#datafetch').html( data );
        jQuery(".ofjuridiction").html(data);
      }
    });
  }
    
}

//


</script>

<?php
}


/// date filter dependacy





add_action('wp_ajax_data_fetch_other_bob_date' , 'data_fetch_other_bob_date');
add_action('wp_ajax_nopriv_data_fetch_other_bob_date','data_fetch_other_bob_date');
function data_fetch_other_bob_date(){
$id1 = $_POST['date_bob1'];
//$added = array();
?>

<?php
$args = array(
  
  'post_type'   => 'bob',
  'meta_key'    => 'date_bob',
  'meta_value'  => $id1
);


// query
$the_query = new WP_Query( $args );
 
  ?>

   <?php if( $the_query->have_posts() ): ?>
<?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>

  <option value="<?php the_title(); ?>"><?php the_title(); ?></option>
 
  <?php endwhile; // end of the loop. ?>
    <?php wp_reset_query(); ?>
    <?php else: ?>
    No results found.
    <?php endif; ?>
                 
  
  <?php  die();
}
// add the ajax fetch js
add_action( 'wp_footer', 'ajax_fetch_other_bob_date' );
function ajax_fetch_other_bob_date() {
?>
<script type="text/javascript">
function fetchResults_bob_date(){
  var date_bob1 = jQuery('#date_bo1').val();
  //alert(date_bob1);
  if(date_bob1 == ""){
    jQuery('#datafetch').html("");
  } else {
    jQuery.ajax({
      url: '<?php echo admin_url('admin-ajax.php'); ?>',
      type: 'post',
      data: { action: 'data_fetch_other_bob_date', date_bob1: date_bob1  },
      success: function(data) {
        //jQuery('#datafetch').html( data );
        jQuery(".numberbobdrop").html(data);
      }
    });
  }
    
}


</script>

<?php
}

//custom functions for admin layout design

add_action( 'in_admin_header', 'insert_header_wpse_51023' );
add_action( 'admin_footer', 'insert_footer_wpse_51023' );
add_filter( 'admin_print_styles', 'footer_hide_wpse_51023' );

function insert_header_wpse_51023()
{
    echo '<div style="width:100%"><header class="myHeader" id="wpAdminHeader">
  <div class="bottomHeader">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-3 p-0">
              <div class="bottomHeaderLeft">
                <figure class="p-0 m-0 img-fluid">
                   
                      
                         <a href="http://burundi/en">
                    <img class="img-fluid" src="http://burundi.dataforall.org/wp-content/themes/burundi_new/images/flag.jpg" alt="burundi logo"></a>
                 <a href="http://burundi/en">  <img class="img-fluid" src="http://burundi.dataforall.org/wp-content/themes/burundi_new/images/unite-travail-progress-logo.jpg" alt="burundi logo"></a>

                       
                  


                </figure>
              </div>
            </div>
            <div class="col-lg-6 p-0">
              <div class="bottomHeaderMiddle">
                <h3 class="greenColor">mémoire du droit burundais</h3>
              </div>
            </div>
            <div class="col-lg-3 p-0">
              <div class="bottomHeaderRight">
                <figure class="p-0 m-0 imf-fluid">

                                                <a href="http://burundi/en"> <img src="http://burundi.dataforall.org/wp-content/themes/burundi_new/images/cedj-logo.jpg" alt="burundi logos" class="img-fluid"></a>
                   <a href="http://burundi/en"><img src="http://burundi.dataforall.org/wp-content/themes/burundi_new/images/undp-logo.jpg" alt="burundi logos" class="img-fluid"></a>
                       
                  
                </figure>
              </div>
            </div>
          </div>
        </div>
      </div></header></div>';?>
       <style type="text/css">
        
        #wpAdminHeader { background: #fff; display: inline-block; width: 100%; height: 135px; position: relative; }
         #wpAdminHeader .bottomHeader .bottomHeaderMiddle{ display: inline-block; margin: 0 auto; width: 50%; text-align: center; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); }
         #wpAdminHeader .bottomHeader .bottomHeaderLeft figure a:first-child{ position: relative; bottom: 10px; }
 #wpAdminHeader .bottomHeader .bottomHeaderMiddle h3{ font-size: 42px; font-family: 'Fjalla One', sans-serif; text-align: center; text-transform: uppercase; margin: 0px; color: #1eb53a; }
 #wpAdminHeader .bottomHeader .bottomHeaderLeft{ height: 100%; position: absolute; left: 0px; top: -5px; }
 #wpAdminHeader .bottomHeader .bottomHeaderLeft img:last-child{ margin-left: 12px; }
 #wpAdminHeader .bottomHeader .bottomHeaderRight{ text-align: right !important; position: absolute; top: 0px; right: 0px; }
 #wpAdminHeader .bottomHeader .bottomHeaderRight img:first-child{ margin-right: 12px; }
/*admin panel sidebars*/
#adminmenu .wp-has-current-submenu .wp-submenu, #adminmenu .wp-has-current-submenu .wp-submenu.sub-open, #adminmenu .wp-has-current-submenu.opensub .wp-submenu, #adminmenu a.wp-has-current-submenu:focus + .wp-submenu, .no-js li.wp-has-current-submenu:hover .wp-submenu{ background-color: #d19136; color: #fff; }
#wpAdminHeader .bottomHeader .bottomHeaderMiddle h3{ font-size: 32px; }
#adminmenu .wp-has-current-submenu .wp-submenu .wp-submenu-head, #adminmenu .wp-menu-arrow, #adminmenu .wp-menu-arrow div, #adminmenu li.current a.menu-top, #adminmenu li.wp-has-current-submenu a.wp-has-current-submenu, .folded #adminmenu li.current.menu-top, .folded #adminmenu li.wp-has-current-submenu{ background: #9f712e; }
#wpadminbar{ background: #1eb53a; }
#adminmenu, #adminmenu .wp-submenu, #adminmenuback, #adminmenuwrap{ background-color: #18842c; color: #fff; }
#adminmenu .wp-submenu a:focus, #adminmenu .wp-submenu a:hover, #adminmenu a:hover, #adminmenu li.menu-top > a:focus{ color: #fff !important; }
#adminmenu li a:focus div.wp-menu-image::before, #adminmenu li.opensub div.wp-menu-image::before, #adminmenu li:hover div.wp-menu-image::before{ color: #fff; }
      </style>

      <?php
}

function insert_footer_wpse_51023()
{
    
}

function footer_hide_wpse_51023()
{
    echo '<style type="text/css">#wpfooter { display: none; }</style>';
}

function cc_wpse_278096_disable_admin_bar() {
 if ( is_user_logged_in()) {
  $current_user = wp_get_current_user();
  $current_user_id = $current_user->ID;

  //echo $_SERVER['HTTP_CLIENT_IP'];
  $myprivateIP = gethostbyname(trim(exec("hostname")));
  // echo $_SERVER['ip'];
  $json = file_get_contents("https://www.geoip-db.com/json");
  $data = json_decode($json);
    //print $data->country_code . "<br>";
    //print $data->country_name . "<br>";
    //print $data->state . "<br>";
   // print $data->city . "<br>";
    //print $data->postal . "<br>";
    //print $data->latitude . "<br>";
   // print $data->longitude . "<br>";
    //print $data->IPv4 . "<br>";
  //echo  $_SERVER['REMOTE_ADDR']?:($_SERVER['HTTP_X_FORWARDED_FOR']?:$_SERVER['HTTP_CLIENT_IP']);
   //print_r(exec("ifconfig en1 inet"));
   //print_r($current_user);
   //echo $current_user_id."Dalveer Developer";
       if(($current_user_id=='470') && (current_user_can('administrator')) && ($data->IPv4=="119.82.74.10") && ($data->city=="New Delhi") && ($data->country_name=="India") && ($data->postal=="110001") && ($data->state=="National Capital Territory of Delhi"))  
        {
        ?>     
        <?php  //exit; ?>
         <?php }elseif($current_user_id=='471'){ ?>

         <?php }elseif($current_user_id=='469'){ ?>

         <?php }elseif($current_user_id=='468'){ ?>

         <?php }elseif($current_user_id=='467'){ ?>

         <?php }elseif($current_user_id=='466'){ ?>

         <?php }elseif($current_user_id=='465'){ ?>

         <?php }elseif($current_user_id=='464'){ ?>

         <?php }elseif($current_user_id=='463'){ ?>

      <?php}else{ ?>
    
     <script type="text/javascript">alert("Error in login 80 port");</script>
    <style type="text/css"> .wp-admin{ display:none !important; }</style>
    <?php  exit; ?>
    <?php }
   }
}
add_action('after_setup_theme', 'cc_wpse_278096_disable_admin_bar');

add_filter('show_admin_bar', '__return_false');


/**
 * Hide admin bar from certain users
 */

function remove_menus () {
global $menu;
$user = wp_get_current_user();
    
        $restricted = array(__('Dashboard'), __('Posts'), __('Media'), __('Links'), __('Appearance'), __('Tools'), __('Users'), __('Settings'), __('Comments'),  __('Downloads'), __('FAQ'), __('Mail Bank'));
        end ($menu);
        while (prev($menu)){
            $value = explode(' ',$menu[key($menu)][0]);
            if(in_array($value[0] != NULL?$value[0]:"" , $restricted)){unset($menu[key($menu)]);}
        }
    }

add_action('admin_menu', 'remove_menus');
//

add_filter( 'rest_authentication_errors', function( $result ) {
    if ( ! empty( $result ) ) {
        return $result;
    }
    if ( ! is_user_logged_in() ) {
        return new WP_Error( '420', 'I think you are chor in.', array( 'status' => 420 ) );
    }
    return $result;
});

//

function wpse_285333_remove_unfiltered_html_cap() {
    $wp_roles = wp_roles();
    $wp_roles->remove_cap( 'administrator', 'unfiltered_html' );
}

// This function actually only needs to run once, so you can comment this out
// after loading the site once.
add_action( 'init', 'wpse_285333_remove_unfiltered_html_cap', 5 );

function __notify_admin_on_publish( $new_status, $old_status, $post )
{
    global $post;
    if( ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) || $post->post_status == 'auto-draft' )
        return;

    $message = 'View it:  '.get_content($post->ID ) . get_permalink( $post->ID ) . "\nEdit it: " . get_edit_post_link( $post->ID );
    if ( $post_type = get_post_type_object( $post->post_type ) )    
        wp_mail('dnayak009@gmail.com', 'New ' . $post_type->labels->singular_name, $message );
}
add_action( 'save_post', '__notify_admin_on_publish', 10, 3 );
//


function change_role_name() {
    global $wp_roles;

    if ( ! isset( $wp_roles ) )
        $wp_roles = new WP_Roles();

    //You can list all currently available roles like this...
    //$roles = $wp_roles->get_names();
    //print_r($roles);

    //You can replace "administrator" with any other role "editor", "author", "contributor" or "subscriber"...
    $wp_roles->roles['subscriber']['name'] = 'Glossaire';
    $wp_roles->role_names['subscriber'] = 'Glossaire';           
}
add_action('init', 'change_role_name');
?>
