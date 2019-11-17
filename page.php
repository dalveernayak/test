<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

       <form role="search" method="get" class="search-form" action="<?php echo home_url( '/' ); ?>" autocomplete="off">
    <label>
        <span class="screen-reader-text"><?php echo _x( 'Search for:', 'label' ) ?></span>
        <input type="search" class="search-field"
            placeholder="<?php echo esc_attr_x( 'Search …', 'placeholder' ) ?>"
            value="<?php echo get_search_query() ?>" name="s"
            title="<?php echo esc_attr_x( 'Search for:', 'label' ) ?>" id="searchInput" onkeyup="fetchResults();" />
    </label>
<br/>
<label>Country :</label> <select name="country" id="country" class="country" onchange="fetchResults1();">
<option selected="selected">--Select Country--</option>
<?php
//include('wp-config.php');
//include('db.php');
$sql=  get_terms( array( 'taxonomy' => 'category', 'parent' => 0 ) );
print_r($sql);
foreach($sql as $row)
{
$id = $row->term_id;
$data = $row->name;
echo '<option value="'.$id.'">'.$data.'</option>';
 } ?>
</select>


    <input type="submit" class="search-submit"
        value="<?php echo esc_attr_x( 'Search', 'submit button' ) ?>" />


        <br/><br/>
<label>City :</label> <select name="city" class="city">
<option selected="selected">--Select City--</option>

</select>
</form>
		<div id="datafetch">
		</div>

		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php
get_footer();
