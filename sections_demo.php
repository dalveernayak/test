<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sections Demo</title>
<script type="text/javascript" src="http://ajax.googleapis.com/
ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
$(".country").change(function()
{
var id=$(this).val();
alert(id);
var dataString = 'id='+ id;

$.ajax
({
type: "POST",
url: "ajax_city.php",
data: dataString,
cache: false,
success: function(html)
{
$(".city").html(html);
} 
});

});
});
</script>


<script type="text/javascript">
$(document).ready(function()
{
$(".city").change(function()
{
var idcity = $(this).val();
alert(idcity);
var dataString = 'id111='+ idcity;

$.ajax
({
type: "POST",
url: "ajax_city.php",
data: dataString,
cache: false,
success: function(html)
{
$(".third").html(html);
} 
});

});
});
</script>
<style>
label
{
font-weight:bold;
padding:10px;
}
</style>
</head>

<body>
	fggggggggggggggggggggggggggg
	<form action="sections_demosucees.php" method="get">
<div style="margin:80px">
<label>Country :</label> <select name="country" class="country">
<option selected="selected">--Select Country--</option>
<?php
include('wp-config.php');
include('db.php');
$sql=  get_terms( array( 'taxonomy' => 'category', 'parent' => 0 ) );
print_r($sql);
foreach($sql as $row)
{
$id = $row->term_id;
$data = $row->name;
echo '<option value="'.$id.'">'.$data.'</option>';
 } ?>
</select>
 <br/><br/>
<label>City :</label> <select name="city" class="city">
<option selected="selected">--Select City--</option>

</select>


 <br/><br/>
<label>Third Label :</label> <select name="third" class="third">
<option selected="selected">--Select third--</option>

</select>



</div>
<input type="submit" name="submit" value="Search">
</form>
</body>
</html>
