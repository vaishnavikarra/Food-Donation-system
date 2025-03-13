<html lang="en">
<head>
  <title>Add Record</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

<%@ page import="java.sql.*,java.io.*" %>
</head>
<body style="background-color: #ffffff;background-image: url(images/)">

<%@ include file = "user_menu1.jsp" %>
<section >
	<%
	
 final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    
 final String DB_URL = "jdbc:mysql://localhost:3306/fooddonatedb";
	

 final String USERNAME = "root";
	
 final String PASSWORD = "";
	

Connection conn = null;
    
Statement stmt = null;
	%>
	 <div class="container" style="background-color: #ccf5ff;width:50%">

   
        <div class="row">
           
            <div class="col-md-12">
                <h1 style="color: #e74c3c">Donate Money</h1>
               <form name='f1' method='post' action="user_donate_money_code.jsp" enctype="">
   
					<div class='row'>
	<div class='col-md-12'>
		<label for='organization_id'>Charity name:</label>
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
		<label for='donate_date'>Donation Date:</label>
		<input type='date' class='form-control' id='donate_date' placeholder='Enter donate_date' name='donate_date' required >
	</div>
</div>
<div class='row'>
	<div class='col-md-12'>
		<label for='amount'>Amount:</label>
		<input type='number' class='form-control' id='amount' placeholder='Enter amount' name='amount' required >
	</div>
</div>
					
                 
					<div class='col-md-4'>
					  <br>
					   <input   type="submit" name="submit" class="btn btn-danger form-control" value="Donate">
					</div>
                    </div>
                </form>
            </div>
        </div>
    
</section>
		
</body>
</html>
