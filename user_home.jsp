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

<%@ include file = "user_menu.jsp" %>

<div class="jumbotron">
  <div class="container text-center">
    <h2>Food Donation</h2>      
    
  </div>
</div>
<div style='width:90%' class="container text-center">
<p>The world is living through unprecedented times. The coronavirus (COVID-19) pandemic is causing disruption & uncertainty in regular wage/salaried employees in urban India. These daily wage workers facing uncertain challenges in meeting their daily food requirements. As is often the case, people living in poverty are suffering the most.
Destitute and elderly people staying alone at home and have limited resources to meet their basic requirements.
Your contribution today will help us to provide food to these helpless people who are hit the hardest by the global coronavirus (COVID-19) pandemic.

Donating the cause is very easy and convenient. A unit contribution of Rs 1000 will help us in distributing roughly 20 meals. You can choose in multiple units of 1,2,3 or more.

With the funds collected, iCharity, as a reach out partner, of ReNew Power, will purchase the meals and distribute them to those who needs it the most in and around Gurgaon.

Please support this critical work by choosing different units and contribute towards helping the community feeding and dry rations distribution.</p>
    
</div>
  
<div class="container-fluid bg-3 text-center">    
   <div class="row">
    <div class="col-lg-4">
      <img src="images/food1.jpg" class="img-responsive center"  style='width:80%' alt="Image" >
    </div>
    <div class="col-lg-4">
      <img src="images/food2.jpg" class="img-responsive center" style='width:80%' alt="Image" >
    </div>
    <div class="col-lg-4">
      <img src="images/food3.jpg" class="img-responsive center"  style='width:80%' alt="Image" >
    </div>
   
  </div>
</div><br>

<br><br>

<!-- Footer -->
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2024 Copyright:
    <a href="">fooddonation.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

</body>
</html>
