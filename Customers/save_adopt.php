
<?php
include("db_conection.php");
if(isset($_POST['adopt_save']))
{
$user_id = $_POST['user_id'];
$adopt_name = $_POST['adopt_name'];
$adopt_price = $_POST['adopt_price'];
$adopt_quantity = $_POST['adopt_quantity'];
$adopt_total=$adopt_price * $adopt_quantity;
$adopt_status='Pending';


 
$save_adopt_details="insert into adoptdetails (user_id,adopt_name,adopt_price,adopt_quantity,adopt_total,adopt_status,adopt_date) VALUE ('$user_id','$adopt_name','$adopt_price','$adopt_quantity','$adopt_total','$adopt_status',CURDATE())";
mysqli_query($dbcon,$save_adopt_details);
echo "<script>alert('已添加至認養清單')</script>";				
echo "<script>window.open('shop.php?id=1','_self')</script>";
	

}

?>
