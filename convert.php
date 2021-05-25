<?php

if(isset($_POST['from_currency']) && isset($_POST['to_currency'])  && isset($_POST['amount'])  )
{
	$from_currency 	= 	$_POST['from_currency'];
	$to_currency 	= 	$_POST['to_currency'];
	$amount 		= 	$_POST['amount'];
	if($from_currency == $to_currency)
	{	
		$response = array('error'=>1,'message'=>'From Currency & TO Currency Must be Different','converted_result'=>'');
		echo json_encode($response);
		die;
	}
	else
	{
		$converted_result = convertCurrency( $amount, $from_currency, $to_currency );
		$response = array('error'=>0,'message'=>'ok','converted_result'=>$converted_result);
		echo $converted_result ." ".$to_currency;
        echo "<br><a class='nav-link' href='index.php'>Home <span class='sr-only'>(current)</span></a>";
		die;
	}
}

function getCurrencyDaller($currency){
	include('db-connection.php'); 
	$ins_query="SELECT rate FROM `exchange_rate` INNER JOIN currency_list on exchange_rate.cuId=currency_list.id where currency_id='$currency'";
    $res = $con->query($ins_query);
    while ($currency_list = mysqli_fetch_assoc($res))
    { 
    return $currency_list['rate'];
    }
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

function convertCurrency( $amount , $from_currency , $to_currency ){
  
  $from_Currency = urlencode($from_currency);
  $to_Currency = urlencode($to_currency);
  $query =  "{$from_Currency}_{$to_Currency}";
  //($amount/getCurrencyDaller($from_currency))*getCurrencyDaller($to_currency)
  $total=number_format(($amount/getCurrencyDaller($from_currency))*getCurrencyDaller($to_currency),2,'.',"");
//   $total = 4*$amount;
  return $total;
}