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
    <div class="container" style="background-color: #ccf5ff;width:60%">
        <div class="row">
           
            <div class="col-md-12">
                <h1 style="color: #e74c3c">Donate Food</h1>
               <form name='f1' method='post' action="user_donate_food_code.jsp" enctype="multipart/form-data">
   
					
		<%@ page import="java.sql.*,java.io.*" %>
	<%@page import="java.util.ArrayList"%>
	<%@ page import="java.util.*" %>
    <%@ page import="java.util.Iterator" %>
	<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
   <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
   <%@ page import="org.apache.commons.fileupload.FileItemFactory"%>
   <%@ page import="org.apache.commons.fileupload.FileItem"%>
    <%@ page import="org.apache.commons.fileupload.FileUpload"%>

	
	
	<%
	
 final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    
 final String DB_URL = "jdbc:mysql://localhost:3306/fooddonatedb";
	

 final String USERNAME = "root";
	
 final String PASSWORD = "";
	

Connection conn = null;
    
Statement stmt = null;
	%>
<div class='row'>
	<div class='col-md-12'>
		<label for='organization_id'>Organization_id:</label>
		<select class='form-control' id='organization_id' name='organization_id'  >				<%
				
	 try{
     
      Class.forName(JDBC_DRIVER);
	  conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
      stmt = conn.createStatement();
	  String qry="select distinct organization_name,area,city,mobile,id from donate_to";
	  ResultSet rs=stmt.executeQuery(qry);
	  while(rs.next())
	  {
		  out.println("<option value='"+rs.getInt(5)+"'>"+rs.getString(1)+","+rs.getString(2)+","+rs.getString(3)+"- (Ph)"+rs.getString(4)+"</option>");
	  }
	  stmt.close();
	  conn.close();
	 }
	 catch(Exception ee)
	 {
		 out.println("<h3>Error :"+ee.toString());
	 }
	 %>
		</select>
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='food_description'>Food Description:</label>
		<textarea rows='3' class='form-control' id='food_description' placeholder='food_description' name='food_description' required ></textarea>
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='total_quantity'>Total Quantity:</label>
		<input type='text' class='form-control' id='total_quantity' placeholder='Enter total_quantity' name='total_quantity' required >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='donate_type'>Donation Type:</label>
		<select class='form-control' id='donate_type' name='donate_type' required >
		<option>Self</option>
		<option>Delivery Boy</option>
		</select>
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='pic1'>Picture 1:</label>
		<input type='file' class='form-control' id='pic1' placeholder='Enter pic1' name='pic1'  >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='pic2'>Picture 2:</label>
		<input type='file' class='form-control' id='pic2' placeholder='Enter pic2' name='pic2'  >
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
