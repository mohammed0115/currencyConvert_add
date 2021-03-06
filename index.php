

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <title>Hello, world!</title>
    <script src="script.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="raw">
        <div class="col">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Currency Convert</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add_country.php">add country currency</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="exchange.php">add rate currency</a>
      </li>
      
     
    </ul>
   
</nav>
<div >
  <br>
  <br>
</div>
<div class="raw">
  
  <div class="col">
   
<div class="content">
  <div class="container-fluid">
    <h2>Currency Converter Using PHP</h2>

    <video width="500" controls>
  <source src="Easy Currency Converter app for mobile.mp4" type="video/mp4">
  Your browser does not support HTML video.
</video>


    <br><br>  
    <div class="row">
     
      <form class="form-inline" method="post" action="convert.php" >
        <div class="form-group classWithPad">
          <label for="Name2">From Currency &nbsp;&nbsp;</label>
          <select class="form-control" id="from_currency_id" required name="from_currency" style="width:170px;">
            <?php include('db-connection.php');?>
            <?php  
              $sql_query = "SELECT * FROM `exchange_rate` INNER JOIN currency_list on exchange_rate.cuId=currency_list.id ";
             
              if ($result=mysqli_query($con,$sql_query))
              {
                 
                while ($currency_list = mysqli_fetch_assoc($result))
                { 
            ?>
              <option value="<?php echo $currency_list['currency_id'];?>" <?php if($currency_list['currency_id'] == "USD"){echo 'selected';}?> ><?php echo $currency_list['currency_name']; ?></option>
            <?php    } } ?>
          </select>
        </div>

        <div class="form-group classWithPad">
          <label for="Email2">Amount&nbsp;&nbsp;</label>
          <input style="width:90px;" type="text" class="form-control" name="amount" id="amount_id" required>
        </div>

        <div class="form-group classWithPad">
          <label for="Email2">To Currency &nbsp;&nbsp;</label>
          <select class="form-control" id="to_currency_id" name="to_currency" required style="width:170px;">
           <?php  
              $sql_query  = "SELECT * FROM `exchange_rate` INNER JOIN currency_list on exchange_rate.cuId=currency_list.id";
              if ($result = mysqli_query($con,$sql_query))
              {
                 
                while ($currency_list = mysqli_fetch_assoc($result))
                { 
            ?>
              <option value="<?php echo $currency_list['currency_id'];?>" <?php if($currency_list['currency_id'] == "INR"){echo 'selected';}?>><?php echo $currency_list['currency_name']; ?></option>
            <?php    } } ?>
          </select>
        </div>

         <!-- <div class="form-group classWithPad">
          <label for="Email2">Converted Amount&nbsp;</label>
          <input style="width:90px;" type="text" class="form-control" id="converted_amount_id" readonly="">
        </div> -->

        <div class="form-group classWithPad">
          <button type="submit"  onclick="convertCurrency();" class="btn btn-danger">Convert</button>
        </div>
      </form>
    </div>
    <br><br>
 
  </div>  
</div>  
   
  </div>
</div>

</div>
</div>
    </div>
    
    
 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>


