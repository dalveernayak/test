<?php
    /*
   **
   * Template Name:BOB Search Type 
   *
   */   
get_header(); ?>
 
<section class="homeSliderBackground innerPage">
      <div class="container-fluid p-0">
        <div class="sliderHeadingText">
        <div class="overlayTextInner">
          <div class="headingText"><h1>le savoir est le patrimoine de l’humanité, le flambeau qui éclaire le monde</h1></div>
        </div>

        <!-- navbar starts here -->
      <div class="overlayNavSection">
        <span class="navIcon"><i class="fas fa-bars"></i></span>
        <nav class="navSection navbar-expand-md">
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

    <section class="bibliothequeSection firstSection myContainer">
        

          <div class="container-fluid">
            <div class="firstSectionInner adjust">

               
              <?php 
                $field_name = 'doc_type';
                $post_id = 3011;
                $alltabvalues = get_field('doc_type',3011);
               
                 ?>
              <?php
        // Start the Loop.
      while ( have_posts() ) : the_post();

        // Include the page content template.
        the_content();
          endwhile;
      ?>
                    

        
          <div class="container-fluid">
            <div class="row bibliothequeRow">
              

             <?php include("tabs-templates-tooltips.php"); ?>

              

              
            </div>
          </div>
        </div>
         

          </div>
        </div>
    </section>
<section class="searchFiltersSection myContainer">
<div class="container">
  <div class="row">
  <div class="myContainer noShadow">


   <div class="innerSearch">
  <?php echo do_shortcode('[wpdreams_ajaxsearchpro id=8]'); ?> 

</div>
 <div class="myFilters bobFilters" id="div">
 <h1>RECHERCHE EXPERTE</h1>

 
  
      <?php //echo do_shortcode( '[searchandfilter fields="branche_droit,categorie,juridiction" bob_meta="num_bob"]' ); ?>
      <?php  //echo do_shortcode( '[searchandfilter post_types="bob" fields="date_bob,num_bob"]' ); ?>
    

       <!-- code here -->

  <form name="res111" action="<?php echo get_site_url(); ?>/bibliotheque/bob/" method="get" autocomplete="off">

   <!-- <input type="hidden" name="type_de_bob" value="<?php //echo $_GET["type_de_bob"]; ?>">
   <input type="hidden" name="ofbranche_droit" value="<?php //echo $_GET["ofbranche_droit"]; ?>">
    <input type="hidden" name="ofcategorie" value="<?php //echo $_GET["ofcategorie"]; ?>">
    <input type="hidden" name="ofjuridiction" value="<?php //echo $_GET["ofjuridiction"]; ?>"> -->
  
    <div class="container">
        <div class="titleTextBox">
          
  <!-- <div class="titleText">Journaux officiels</div> -->
        </div>
   
      <div class="row">
        <!-- Year Dependacy fileds start -->

          <div class="col-md-4">
    <div class="inputField numberClass">
  <div class="toolTip">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet.</p>
  </div>
 <span>Annee</span>
    
<?php 
global $wpdb; 
$values = $wpdb->get_results("SELECT DISTINCT meta_value FROM undp_burun_postmeta WHERE meta_key  = 'an' ORDER BY meta_value DESC");

?>
  <select name="drobobyear" class="drobobyear chosen" id="drobobyear" >
    <option value="0" selected="">Annee</option>
    <?php foreach ($values as $valuess) {?> 
        <?php if(!empty($valuess->meta_value)){?>  
        <option value="<?php echo $valuess->meta_value; ?>"><?php echo $valuess->meta_value; ?></option>
      <?php }} ?>        
  </select>
  
  
  </div>
  </div>
        <!-- Year Dependacy fileds end -->
<div class="col-md-2">
  
    <div class="inputField dateClass">
      <div class="toolTip">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet.</p>
  </div>
 <span>Mois</span>
    
  
  <select name='date_bob1'  id='date_bo1' onchange="fetchResults_bob_date();">

    <?php 
//global $wpdb; 
//$dta = $wpdb->get_results("SELECT DISTINCT meta_value FROM undp_burun_postmeta WHERE meta_key = 'date_bob' ORDER BY meta_value ASC ");

?>
 
   <option value="0">-Mois-</option>

 <?php //foreach($dta as $dtas){ ?>
  <option value="01">01</option>
  <option value="02">02</option>
  <option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
  <?php //} ?>
  </select>


    </div></div>
<!-- Year Field -->


  <div class="col-md-6">
    <div class="inputField numberClass">
  <div class="toolTip">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet.</p>
  </div>
 <span>Numéro BOB</span>
    
    

 <select name="num_bob1" class="numberbobdrop" id="numberbobdrop">
  
        
        <option value="0">-Sélectionner un numéro de BOB-</option>

       

      </select>

  
  </div>
  </div>




  <input type="submit" name="searchcustomfields" value="Search">



    </div>  
  </div>
</form>
</div>


     </div>
</div>
</div>
</div>
    </section>



<script type="text/javascript">
      $(".chosen").chosen();
</script>

<?php get_footer();

