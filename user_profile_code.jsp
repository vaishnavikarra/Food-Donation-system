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
		
	
	String qry="delete from users where id='"+request.getParameter("id")+"'";	
	try
	{
		  Class.forName(JDBC_DRIVER);
		conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        stmt = conn.createStatement();
		int n=stmt.executeUpdate(qry);
		if(n>0)
			out.print("<script language='javascript'>window.alert('Record deleted successfully');window.location='user_profile.jsp';</script>");
		
		stmt.close();
		conn.close();
	}
	catch(Exception e1)
	{
		out.println("Error e1 :"+e1);
	}
	%>
		