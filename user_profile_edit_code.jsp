<!DOCTYPE html>
<html lang="en">
<head>
  <title>Edit</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffff;background-image: url(images/)">

<%@ include file="user_menu1.jsp" %>
<div class="container" style="background-color: #ccf5ff">
  <h2>Update Profile</h2>
  <form name='f1' method='post' action="#" enctype="">
	<div class="container">
        
        	<%@ page import="java.sql.*,java.io.*" %>
	<%@page import="java.util.ArrayList"%>
	<%@ page import="java.util.*" %>
 	<%
	
 final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    
 final String DB_URL = "jdbc:mysql://localhost:3306/fooddonatedb";
	

 final String USERNAME = "root";
	
 final String PASSWORD = "";
	

Connection conn = null;
    
Statement stmt = null;
	
String path=request.getContextPath(); //returns application path
		
	String qry="select id,name,mobile,email,address,city,state,password,pic from users where id='"+request.getParameter("id")+"'";	
	try
	{
		  Class.forName(JDBC_DRIVER);
		conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        stmt = conn.createStatement();
		ResultSet rs=stmt.executeQuery(qry);
		//out.println("<div class='container'>");
		if(rs.next())
		{
			out.println("<div class='row'>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>id</label>");
			out.println("<input type='text' class='form-control' name='id' value='"+rs.getString("id")+"' readonly>");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>name</label>");
			out.println("<input type='text' class='form-control' name='name' value='"+rs.getString("name")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>mobile</label>");
			out.println("<input type='text' class='form-control' name='mobile' value='"+rs.getString("mobile")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>email</label>");
			out.println("<input type='text' class='form-control' name='email' value='"+rs.getString("email")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>address</label>");
			out.println("<input type='text' class='form-control' name='address' value='"+rs.getString("address")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>city</label>");
			out.println("<input type='text' class='form-control' name='city' value='"+rs.getString("city")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>state</label>");
			out.println("<input type='text' class='form-control' name='state' value='"+rs.getString("state")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>password</label>");
			out.println("<input type='text' class='form-control' name='password' value='"+rs.getString("password")+"' >");
			out.println("</div>");			
			out.println("<div class='col-sm-3'>");
			out.println("<label class='form-check-label'>pic</label>");
			out.println("<input type='text' class='form-control' name='pic' value='"+rs.getString("pic")+"' >");
			out.println("</div>");			out.println("</div><hr></hr>");
		}
		else
		{
			out.println("<h1>Records Not Found</h1>");
		}
		stmt.close();
		conn.close();
	}
	catch(Exception e1)
	{
		out.println("Error e1 :"+e1);
	}
	%>
   <br>
	<button type="submit" name='submit' class="btn btn-default btn-success">Submit</button>
	
	
	
	
	
	
   </form>
   
   <form name='f2' method='post' action='#'>
   	
	<%
	
	if(request.getParameter("submit")!=null)
	{
		try
		{
			conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			stmt = conn.createStatement();
			String updateqry="update users set id='"+request.getParameter("id")+"',name='"+request.getParameter("name")+"',mobile='"+request.getParameter("mobile")+"',email='"+request.getParameter("email")+"',address='"+request.getParameter("address")+"',city='"+request.getParameter("city")+"',state='"+request.getParameter("state")+"',password='"+request.getParameter("password")+"',pic='"+request.getParameter("pic")+"'  where id='"+request.getParameter("id")+"'";
			int n=stmt.executeUpdate(updateqry);
			if(n>0)
				out.print("<script language='javascript'>window.alert('Record updated successfully');window.location='user_profile.jsp';</script>");
		
			stmt.close();
			conn.close();
		}
		catch(Exception e1)
		{
			out.println("Error e1 :"+e1);
		}
	}
	%>
		
   </form>
</div>
		
		
</body>
</html>
