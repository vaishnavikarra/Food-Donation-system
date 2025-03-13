<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
.form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-signin-heading, .form-signin .checkbox
{
    margin-bottom: 10px;
}
.form-signin .checkbox
{
    font-weight: normal;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

.login-title
{
    color: #555;
    font-size: 18px;
    font-weight: 400;
    display: block;
}
.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}
</style>
</head>
<body style="background-color: #ffffff;background-image: url(images/)">

<%@ include file = "user_menu.jsp" %>
<div class="container" style="background-color: #ffbf80;width:50%">
    <br>
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div >
                <img src="images/admin_user.jpg" style="width:100px" class="profile-img" alt="give image path">
				<form name='f1' method='post' action="admin_login_code.jsp" enctype="">
                
<div class='row'>
	<div class='col-md-12'>
		<label for='username'>Username:</label>
		<input type='text' class='form-control' id='username' placeholder='Enter username' name='username' required >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='password'>Password:</label>
		<input type='password' class='form-control' id='password' placeholder='Enter password' name='password' required >
	</div>
</div>
				<br>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
               
               
                </form>
            </div>
            
			
        </div>
    </div>
	<br><center>
				<%
		if(request.getParameter("msg")!=null)
		{
		 out.println("<br><h3>Invalid Username/Password</h3>");
		} 
	%>
			</center>
</div>
</body>
</html>