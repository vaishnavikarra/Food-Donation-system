	<%@ page import="java.sql.*,java.io.*" %>
		
	<%
	
 final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    
 final String DB_URL = "jdbc:mysql://localhost:3306/fooddonatedb";
	

 final String USERNAME = "root";
	
 final String PASSWORD = "";
	

Connection conn = null;
    
Statement stmt = null;

String feedback="";			
if(request.getParameter("feedback")!=null)
				feedback=request.getParameter("feedback");
			else
				feedback="null";
			
String qry="insert into feedbacks(fdate,user_id,feedback) values(curdate(),'"+session.getAttribute("userid")+"','"+feedback+"')";
//out.println(qry);

	 
try{
     
      
Class.forName(JDBC_DRIVER);
	  conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
      stmt = conn.createStatement();
	  int n=stmt.executeUpdate(qry);
	  if(n==0)
		  out.println("<script language='javascript'>window.alert('Record Not Added.  Try Again!');window.location='new_feedback.jsp';</script>");
	  else
		  out.println("<script language='javascript'>window.alert('Record Added Successfully.');window.location='new_feedback.jsp';</script>");
		 
	  stmt.close();
	  conn.close();
	 }
	 catch(Exception ee)
	 {
		 out.println("<h3>Error :"+ee.toString());
	 }
	 %>