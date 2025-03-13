<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Registration Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body{
		color: #fff;
		background: #63738a;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 40px;
		box-shadow: none;
		color: #969fa4;
	}
	.form-control:focus{
		border-color: #5cb85c;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.signup-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.signup-form h2:before, .signup-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.signup-form h2:before{
		left: 0;
	}
	.signup-form h2:after{
		right: 0;
	}
    .signup-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form input[type="checkbox"]{
		margin-top: 3px;
	}
	.signup-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}    	
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
    .signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}  
</style>
</head>
<body style="background-color: #e6fff2;background-image: url(images/)">

<%@ include file = "user_menu.jsp" %>
<div class="signup-form" style="background-color: #ccf5ff;width:50%">
    <form name='f1' method='post' action="user_registration_code.jsp" enctype="multipart/form-data">
		<h2>Register</h2>
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
       
		
<div class='row'>
	<div class='col-md-12'>
		<label for='name'>Name:</label>
		<input type='text' class='form-control' id='name' placeholder='Enter name' name='name' required >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='mobile'>Mobile No.:</label>
		<input type='text' class='form-control' id='mobile' placeholder='Enter mobile' name='mobile' maxlength="10" pattern="\d{10}" required >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='email'>Email:</label>
		<input type='email' class='form-control' id='email' placeholder='Enter email' name='email' required >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='address'>Address:</label>
		<textarea rows='3' class='form-control' id='address' placeholder='address' name='address' required ></textarea>
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='city'>city:</label>
		<select class='form-control' id='city' name='city' required >
		<option>Madhapur</option>
		<option>Kondapur</option>
		<option>Hitech city</option>
		<option>Gachibowli</option>
		<option>Shaikpet</option>
		<option>Manikonda</option>
		</select>
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='state'>State:</label>
		<select class='form-control' id='state' name='state' required >
		<option>Telangana</option>
		</select>
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='password'>Password:</label>
		<input type='password' class='form-control' id='password' placeholder='Enter password' name='password' required >
	</div>
	<div class='col-md-12'>
		<label for='cpassword'>Confirm-password:</label>
		<input type='password' class='form-control' id='cpassword' placeholder='Enter Confirm-password' name='cpassword' onfocusout='Validate()'required >
		</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='pic'>Profile Picture:</label>
		<input type='file' class='form-control' id='pic' placeholder='Enter pic' name='pic'  >
	</div>
</div>
		<br>
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
        </div>
        <div class="text-center">Already have an account? <a href="user_login.jsp">Sign in</a></div>
    </form>
	
</div>
</body>
</html>                            