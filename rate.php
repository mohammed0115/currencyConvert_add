<!-- //INSERT INTO exchange_rate(id, rate, cuId) VALUES (NULL,'455.5','1') ON DUPLICATE KEY -->
<!-- UPDATE  rate='455.5' ;  -->


<?php
include('db-connection.php'); 
$status = "";
if(isset($_GET['id']) &&$_GET['rate']){
    echo "isset ok";
    $id =$_GET['id'];
    $rate =$_GET['rate'];
    echo $rate;
    // $submittedby = $_SESSION["username"];
    $ins_query="INSERT INTO exchange_rate(rate, cuId) VALUES ('$rate','$id') ON DUPLICATE KEY UPDATE rate='$rate'";
    $res = $con->query($ins_query);
    // echo "welcome;
    if($con->error){
    try {   
        throw new Exception("MySQL error $con->error <br> Query:<br> $ins_query", $con->error);   
    } catch(Exception $e ) {
        echo "Error No: ".$e->getCode(). " - ". $e->getMessage() . "<br >";
        echo nl2br($e->getTraceAsString());
    }
    }
    $status = "New Record Inserted Successfully.
    </br></br><a href='view.php'>View Inserted Record</a>";
}

?>
<script type="text/javascript">location.href = 'exchange.php';</script>
