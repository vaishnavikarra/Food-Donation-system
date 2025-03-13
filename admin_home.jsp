<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}
  </style>
</head>
<body style="background-color: bodycolor;background-image: url(images/)">

<%@ include file = "admin_menu.jsp" %>

<div class="jumbotron">
  <div class="container text-center">
    <h2>Food Donation</h2>      
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
   <div class="row">
    <div class="col-sm-12">
      <img src="images/admin_home.jpg" class="img-responsive center"  alt="Image" >
    </div>
   
  </div>
</div><br>

<br><br>

<!-- Footer -->
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2024 Copyright:
    <a href=""> fooddonate.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

</body>
</html>
