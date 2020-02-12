<?php
    /*
   **
   * Template Name:BOB Type 
   *
   */   
get_header(); ?>
<section class="homeSliderBackground innerPage">
      <div class="container-fluid p-0">
        <div class="sliderHeadingText">
        <div class="overlayTextInner">
          <!-- <div class="headingText"><h1>le savoir est le patrimoine de l’humanité, le flambeau qui éclaire le monde</h1></div> -->
        </div>
        <!-- navbar starts here -->
      <div class="overlayNavSection">
        <span class="navIcon"><i class="fas fa-bars"></i></span>
        <nav class="navSection navbar-expand-md ">
          <?php
            wp_nav_menu(
               array(
                  'theme_location' => 'Header Menu',
                  'menu_class'     => ''
                 
               )
            );
            ?>
         
        </nav>
      </div>
      <!-- navbar ends here -->

      </div>
    </div>
    </section>
<section class="globalSearchSection myContainer">

  <?php include("listgoback.php"); ?>
<div class="searchBTnResultsTop">

  <?php echo do_shortcode('[wpdreams_ajaxsearchpro id=16]'); ?>
</div>
</section>

<section class="searchFiltersSection myContainer">
     <div class="viewIcons">
        <!-- <a href="javascript:void(0)"><span class="icon-grid active"></span></a>
        <a href="javascript:void(0)"><span class="icon-list"></span></a> -->
        <div class="pull-right">
                <div class="btn-group">
                    <button id="grid">
                        <a href=""><i class="fas fa-th"></i></a>
                    </button>
                    <button id="list">
                        <a href="#"><i class="fas fa-list"></i></a>
                    </button>
                </div>
            </div>
      </div>




      <?php //echo do_shortcode('[wpdreams_ajaxsearchpro id=10]'); ?> 
      <div class="searchDropdown">
        <?php 
        //dynamic_sidebar( 'useful-links' ); ?>
        <!-- <form name="cityselect">
     <select name="menu" onChange="window.document.location.href=this.options[this.selectedIndex].value;" value="GO">
        <option selected="selected">Select One</option>
        <option value="http://www.leeds.com">Leeds</option>
        <option value="http://www.manchester.com">Manchester</option>
    </select>
       </form> -->
        <?php //echo do_shortcode("[wpdreams_asp_settings id=8]"); ?>
      


      </div>

    </section>

    <section class="gridListSection firstSection myContainer">
      <div class="container-fluid p-0">
        <div class="row view-group grid-group-item" id="products">

          <!-- list view head starts here-->
          <div class="tableHeadingGreen">
            <div class="thumbnail card">
              <div class="caption card-body">
                <?php  
                 $lables = get_field('lables');
                     //print_r($lables);
                  ?>
                <ul class="group inner list-group-item-text">
                  <?php foreach ($lables as $labless) {?>
                   
                  
                  <li class="<?php echo $labless['class']; ?>"><span><?php echo $labless['name']; ?></span></li>
                <?php } ?>
                  
                </ul>

          </div>
        </div>
      </div>
      <!-- list view head ends here -->


 <?php
   $IdBob = $_GET['num_bob1'];
   $NumBob = $_GET['date_bob1'];
   $drobobyear = $_GET['drobobyear'];
   //echo $IdBob;

$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
$args = array('post_type'=>'bob','posts_per_page' => 10,'paged' => $paged,
/*
  'tax_query' => array(
    'relation' => 'OR',
    array(
        'taxonomy' => 'branche_droit',
        'field'    => 'slug',
        'terms'    => 'droit-civil',
    ),
    array(
        'taxonomy' => 'space',
        'field'    => 'slug',
        'terms'    => $space_terms,
    ),*/
/*),*/
  'meta_query' => array(
    'relation' => 'AND',
    /*array(
        'key' => 'num_bob',
        'value' => $IdBob,
        'compare' => '='
    ),*/
    array(
        'key' => 'date_bob',
        'value' => $NumBob,
        'compare' => 'LIKE'
    ),
    array(
        'key' => 'an',
        'value' => $drobobyear,
        'compare' => 'LIKE'
    ),
    /*array(
        'key' => 'q_and_a_category',
        'value' => '%project-management%',
        'compare' => 'LIKE'
    )*/
)
);

$the_query = new WP_Query($args);
//echo count($the_query)."Hello Developer";

if ( $the_query->have_posts() ){
    while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
           
          <div class="item">
            <?php 
                    // All variables 
                    $field_ = get_field_object('id_bob'); 
                    $num_bob = get_field_object('num_bob');
                    $date_bob = get_field_object('date_bob');                    
                    $page_debut = get_field_object('page_debut');
                    $page_fin = get_field_object('page_fin');
                    $nom_fichier_bob = get_field_object('nom_fichier_bob');
                    //$nom_fichier_bob = get_field_object('nom_fichier_bob');
                    $category_doc_tag = get_field_object('category_doc_tag');

                    //print_r($field);
                    ?>

            <div class="thumbnail card">
              <div class="caption card-body">

                <ul class="group inner list-group-item-text">
                  <li class="nature"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                  
                  <li class="number"><span><?php echo $num_bob['label']; ?></span><?php echo get_field('num_bob'); ?></li>
                  <li class="date"><span><?php echo $date_bob['label']; ?></span><?php echo get_field('date_bob'); ?>/<?php echo get_field('an'); ?></li>
                  <!-- <li class="statement"><span><?php //echo $category_doc_tag['label']; ?></span><?php ///echo get_field('category_doc_tag'); ?></li>
                  <li class="status"><span><?php //echo $page_debut['label']; ?></span><?php //echo get_field('page_debut'); ?></li>
                  <li class="category"><span><?php //echo $page_fin['label']; ?></span><?php //echo get_field('page_fin'); ?></li> --> 
                  <li class="action">
                    <div class="actionIcon"><i class="fas fa-chevron-down"></i></div>

                    <div class="actionButton"><a href="<?php the_permalink(); ?>">Voir plus</a></div>
                    <div class="icons">
                      <ul>
                        <li><a class="w-inline-block social-share-btn fb" href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>&t=<?php the_title(); ?>" title="Share on Facebook" target="_blank" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>&t=<?php the_title(); ?>">
    <i class="fas fa-share-alt"></i></a>
    </li>
    <li><a href="<?php echo get_field('doc', get_the_ID()); ?>" target="_blank"><i class="fas fa-file-download"></i></a></li>

    <!-- <li><a class="w-inline-block social-share-btn tw" href="https://twitter.com/intent/tweet?" target="_blank" title="Tweet" onclick="window.open('https://twitter.com/intent/tweet?text=%20Check%20up%20this%20awesome%20content' + encodeURIComponent(document.title) + ':%20 ' + encodeURIComponent(document.URL)); return false;"><i class="fa fa-twitter"></i></a></li> -->
    <li><a href="mailto:?subject=<?php the_title(); ?> - %20<?php bloginfo('name'); ?>&body=<?php the_title(); ?> -<?php the_permalink(); ?>" title="" target="_blank">   <i class="fa fa-envelope"></i></a></li>
    
    <?php 
    if ( wp_is_mobile() ) {?>
        <li><a href="whatsapp://send?text=<?php the_permalink(); ?>"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
    <?php } ?>
                      </ul>
                    </div>
                    <div class="views">Téléchargé : <?php 
global $post;
print get_post_meta($post->ID,'link_check_click_counter',true);
?> fois</div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
 <?php endwhile;  ?>

        
       

            </div>
</div>

      <div class="paginationSection">
           <?php pagination_bar( $the_query ); 
 
              ?>
          </div>
          <?php wp_reset_postdata();

          ?>
          
          <?php 
}else{?>
      <h1>Aucun résultat trouvé</h1>
<?php }?>

    </section>

<!-- footer starts here -->
    <!-- footer starts here -->
       <footer class="myFooter">
        <div class="footerTop">
          <div class="container">
            <div class="row">
            <!-- footer left -->
              <div class="col-md-4">
                <div class="footerTopLeft">
               <?php dynamic_sidebar( 'navigation-total_footer' ); ?>
                
             </div></div>
            <!-- footer middle -->
            <div class="col-md-4"><div class="footerTopMiddle">

              <?php dynamic_sidebar( 'useful-links' ); ?>

            </div></div>
            <!-- footer right -->
            <div class="col-md-4"><div class="footerTopRight">
            <?php dynamic_sidebar( 'visitors-count-total' ); ?>
              
             
              
            </div></div>
          </div>
        </div>
        </div>
        <div class="footerMiddle">
          <div class="container">
            <ul>
              <li>Propulsé par<img src="<?php echo get_template_directory_uri();?>/images/dfa.svg"></li>
              <li>Développé par<img src="<?php echo get_template_directory_uri();?>/images/csf.svg"></li>
            </ul>
          </div>
        </div>
        <div class="footerBottom">
           <?php dynamic_sidebar( 'copyright-total_footer' ); ?>
         
        </div>
      
    </footer>
<!-- footer ends here -->  

   
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript">
      $(document).ready(function() {
            $('#list').click(function(event){event.preventDefault();$('.row.view-group').addClass('list-group-item');$('#list i').css("color","#d19136");$('#grid i').css("color","#ddd");});
            $('#grid').click(function(event){event.preventDefault();$('.row.view-group').removeClass('list-group-item');$('.row.view-group').addClass('grid-group-item');$('#grid i').css("color","#d19136");$('#list i').css("color","#ddd");});
              //
            $(".thumbnail ul li.action div.actionIcon").click(function(){
            $(this).parent().parent().parent().parent().toggleClass("classAdd"); });

        });


    </script>
    <?php wp_footer(); ?>
  </body>
</html>
 