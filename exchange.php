
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Hello, world!</title>
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
        <a class="nav-link" href="exchange.php">add country currency</a>
      </li>
      
   
    </ul>
   
</nav>
<div >
  <br>
  <br>
</div>
<div class="raw">
  
  <div class="col">

    <?php include('db-connection.php'); 
      $sql_query = "SELECT id,currency_id,currency_name FROM currency_list";
      if ($result=mysqli_query($con,$sql_query))
      {
                 
                
   ?>

    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">id</th>
      <th scope="col">currency name</th>
      <th scope="col">currency_symbol</th>
      <th scope="col">currency rate per USD</th>
 
    </tr>
  </thead>
  <tbody>
    <?php
    while ($currency_list = mysqli_fetch_assoc($result))
    { 
    ?>
    <tr>
     
      <td><?php echo $currency_list['id'];?></td>
      <td><?php echo $currency_list['currency_id'];?></td>
      <td><?php echo $currency_list['currency_name'];?></td>
      <form action="rate.php?">
      <input type="hidden" name="id" id="id" value="<?php echo $currency_list['id']?>">
      <td><input type="text" step="0.00001" name="rate" id="rate"></td>
      <td> <button type="submit">update</button> </td>
      </form>
    </tr>
   <?php
     }}
    ?>
    <tr>
      <td></td>
      <td><a href="add_new_currency.php">add new country code </a></td>
    </tr>

  </tbody>
</table>

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




