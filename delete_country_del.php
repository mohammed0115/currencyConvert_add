
<?php
if (isset($_GET['GetID'])) {
  $id = $_GET['GetID'];
  mysqli_query($db, "DELETE FROM currency_list WHERE id=$id");
  $_SESSION['message'] = "Address deleted!"; 
  header('location: index.php');
}

?>