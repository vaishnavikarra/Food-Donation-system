<!DOCTYPE html>
<html lang="en">
<head>
  <title>View Records</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
</head>
<body style="background-color: #ffffff;background-image: url(images/)">

<%@ include file = "admin_menu.jsp" %>
<div class="container" style="background-color: #ffc266">
  <h2>Donaters</h2>
  <form name='f1' method='post' action="#" enctype="">
	
        
        
	
   <br>

	
	
	
   </form>
   
   
   <div class="container" style='margin-top:-40px'>
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
		
	 
try{
     
      

	  //gets path of web app on the server		
	  // String path = application.getRealPath("/");
	  Class.forName(JDBC_DRIVER);
	  conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
      stmt = conn.createStatement();
	  String qry1="select id,name,mobile,email,address,city,state,password,pic from users";
	  ResultSet rs=stmt.executeQuery(qry1);
	 if(rs.next())
	  {
		out.println("<br><table class='table table-bordered display' id='table_id'>");
		out.println("<thead class='thead-light'>");
		out.println("<tr>");out.println("<th>id</th>");out.println("<th>name</th>");out.println("<th>mobile</th>");out.println("<th>email</th>");out.println("<th>address</th>");out.println("<th>city</th>");out.println("<th>state</th>");out.println("<th>password</th>");out.println("<th>pic</th>");		out.println("</tr>");
		out.println("</thead>");
		out.println("<tbody>");
						
		do
		{
			out.println("<tr>");
		 out.println("<td>"+rs.getString("id")+"</td>");
		 out.println("<td>"+rs.getString("name")+"</td>");
		 out.println("<td>"+rs.getString("mobile")+"</td>");
		 out.println("<td>"+rs.getString("email")+"</td>");
		 out.println("<td>"+rs.getString("address")+"</td>");
		 out.println("<td>"+rs.getString("city")+"</td>");
		 out.println("<td>"+rs.getString("state")+"</td>");
		 out.println("<td>"+rs.getString("password")+"</td>");
		 out.println("<td><img src='"+path+"/uploads/"+rs.getString("pic")+"' width='100px' height='100px'></img></td>");		out.println("</tr>");
		}while(rs.next());
		out.println("</tbody>");
		out.println("<thead class='thead-light'>");
		out.println("<tr>");out.println("<th>id</th>");out.println("<th>name</th>");out.println("<th>mobile</th>");out.println("<th>email</th>");out.println("<th>address</th>");out.println("<th>city</th>");out.println("<th>state</th>");out.println("<th>password</th>");out.println("<th>pic</th>");		out.println("</tr>");
		out.println("</thead>");
		out.println("</table></div>");
	  }
	 else
	  {
	 	  out.println("<h3>Records Not Found.</h3>");
	  }
	  stmt.close();
	  conn.close();
	  
	 }
	 catch(Exception ee)
	 {
		 out.println("<h3>Error :"+ee.toString());
	 }
	%>
   </div>
   <br>
   
  
</div>
		<script>
		$(document).ready( function () {
    $('#table_id').DataTable();
} );
		</script>
		
</body>
</html>
