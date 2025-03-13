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
	
String email="";
String password="";		
			if(request.getParameter("email")!=null)
				email=request.getParameter("email");
			else
				email="null";		
			if(request.getParameter("password")!=null)
				password=request.getParameter("password");
			else
				password="null";
String qry="select * from users where email='"+email+"' and password='"+password+"'";	 
try{
     
      
Class.forName(JDBC_DRIVER);
	  conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
      stmt = conn.createStatement();
	  ResultSet rs=stmt.executeQuery(qry);
	  if(rs.next())
	  {
		  session.setAttribute("userid",""+rs.getInt("id"));	
		session.setAttribute("email",email);		
		session.setAttribute("password",password);
		  response.sendRedirect("user_home1.jsp");
	  }
	  else
	  {
		  response.sendRedirect("user_login.jsp?msg=Invalid username/password");
	  }
	 
	  stmt.close();
	  conn.close();
	 }
	 catch(Exception ee)
	 {
		 out.println("<h3>Error :"+ee.toString());
	 }
	 %>