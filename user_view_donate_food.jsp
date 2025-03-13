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

<%@ include file = "user_menu1.jsp" %>
<div class="container" style="background-color: #ccf5ff">
  <h2>Your Previous Food Donations</h2>
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
	  String qry1="select donate_date,organization_id,food_description,total_quantity,donate_type,pic1,pic2,credits from donate_food where user_id="+session.getAttribute("userid");
	  ResultSet rs=stmt.executeQuery(qry1);
	 if(rs.next())
	  {
		out.println("<br><table class='table table-bordered display' id='table_id'>");
		out.println("<thead class='thead-light'>");
		out.println("<tr>");out.println("<th>donate_date</th>");out.println("<th>charity</th>");out.println("<th>food_description</th>");out.println("<th>total_quantity</th>");out.println("<th>donate_type</th>");out.println("<th>pic1</th>");out.println("<th>pic2</th>");out.println("<th>credits</th>");		out.println("</tr>");
		out.println("</thead>");
		out.println("<tbody>");
						
		do
		{
			out.println("<tr>");
		 out.println("<td>"+rs.getString("donate_date")+"</td>");
		//get charity details
		 out.println("<td>"+rs.getString("organization_id"));
		 String qry2="select organization_name,incharge_name,mobile,email,area,address,city,state from donate_to where id="+rs.getString("organization_id");
		 Statement st2=conn.createStatement();
		  ResultSet rs2=st2.executeQuery(qry2);
		 if(rs2.next())
		  {
			 out.println("<br>"+rs2.getString("organization_name")+"<br>"+rs2.getString("incharge_name")+"<br>"+rs2.getString("mobile")+"<br>"+rs2.getString("address")+","+rs2.getString("city")+","+rs2.getString("state"));
		  }
		 out.println("</td>");
		 out.println("<td>"+rs.getString("food_description")+"</td>");
		 out.println("<td>"+rs.getString("total_quantity")+"</td>");
		 out.println("<td>"+rs.getString("donate_type")+"</td>");
		 out.println("<td><img src='"+path+"/uploads/"+rs.getString("pic1")+"' width='100px' height='100px'></img></td>");
		 out.println("<td><img src='"+path+"/uploads/"+rs.getString("pic2")+"' width='100px' height='100px'></img></td>");
		 out.println("<td>"+rs.getString("credits")+"</td>");		out.println("</tr>");
		}while(rs.next());
		out.println("</tbody>");
		out.println("<thead class='thead-light'>");
		out.println("<tr>");out.println("<th>donate_date</th>");out.println("<th>charity</th>");out.println("<th>food_description</th>");out.println("<th>total_quantity</th>");out.println("<th>donate_type</th>");out.println("<th>pic1</th>");out.println("<th>pic2</th>");out.println("<th>credits</th>");		out.println("</tr>");
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
