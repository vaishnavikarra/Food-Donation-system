	<%@ page import="java.sql.*,java.io.*" %>
		
	<%
	
 final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    
 final String DB_URL = "jdbc:mysql://localhost:3306/fooddonatedb";
	

 final String USERNAME = "root";
	
 final String PASSWORD = "";
	

Connection conn = null;
    
Statement stmt = null;

String donate_date="";
String amount="";			if(request.getParameter("donate_date")!=null)
				donate_date=request.getParameter("donate_date");
			else
				donate_date="null";
						if(request.getParameter("amount")!=null)
				amount=request.getParameter("amount");
			else
				amount="null";
			
String qry="insert into donate_money(user_id,donate_date,amount,organization_id) values("+session.getAttribute("userid")+",'"+donate_date+"',"+amount+","+request.getParameter("organization_id")+")";
	
try{
     
      
Class.forName(JDBC_DRIVER);
	  conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
      stmt = conn.createStatement();
	  int n=stmt.executeUpdate(qry);
	  if(n==0)
		  out.println("<script language='javascript'>window.alert('Record Not Added.  Try Again!');window.location='user_donate_money.jsp';</script>");
	  else
		  out.println("<script language='javascript'>window.alert('Record Added Successfully.');window.location='user_donate_money.jsp';</script>");
		  
	  stmt.close();
	  conn.close();
	 }
	 catch(Exception ee)
	 {
		 out.println("<h3>Error :"+ee.toString());
	 }
	 %>