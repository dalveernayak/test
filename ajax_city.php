
<?php
include('wp-config.php');
include('db.php');
if($_POST['id'])
{
$id = $_POST['id'];
$sql =  get_terms( 'category', array(
        //'hide_empty' => 0,
        'parent' =>$id
    ));
print_r($sql);

foreach($sql as $row)
{
$id = $row->term_id;
$data = $row->name;
echo '<option value="'.$id.'">'.$data.'</option>';
 } 
}


if($_POST['id111'])
{
$id = $_POST['id111'];
$sql =  get_terms( 'category', array(
        //'hide_empty' => 0,
        'parent' =>$id
    ));
print_r($sql);

foreach($sql as $row)
{
$id = $row->term_id;
$data = $row->name;
echo '<option value="'.$id.'">'.$data.'</option>';
 } 
}

?>