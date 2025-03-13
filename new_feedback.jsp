<html lang="en">
<head>
  <title>Add Record</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  


</head>
<body style="background-color: #ffffff;background-image: url(images/)">

<%@ include file = "user_menu1.jsp" %>
<section >
    <div class="container" style="background-color: #ccf5ff;width:50%">
        <div class="row">
           
            <div class="col-md-12">
                <h1 style="color: #e74c3c">Post Feedback</h1>
               <form name='f1' method='post' action="new_feedback_code.jsp" enctype="">
   
					
	
<div class='row'>
	<div class='col-md-12'>
		<label for='feedback'>Feedback:</label>
		<textarea rows='3' class='form-control' id='feedback' placeholder='feedback' name='feedback' required ></textarea>
	</div>
</div>
					
                 
					<div class='col-md-12'>
					  <br>
					   <input   type="submit" name="submit" class="btn btn-danger form-control" value="Add">
					</div>
                    </div>
                </form>
            </div>
        </div>
    
</section>
		
</body>
</html>
