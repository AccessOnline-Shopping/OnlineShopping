<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html><%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String oldPassword=session.getAttribute("oldPassword").toString();
String newPassword=session.getAttribute("newPassword").toString();
String confirmPassword=session.getAttribute("confirmPassword").toString();

if(!confirmPassword.equals(newPassword))
    response.sendRedirect("changePassword.jsp?msg=notMatch");
else
{
	int check=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from users where email='"+email+"' and password='"+oldPassword+"'");
	    while(rs.next())
	    {
	      check=1;
	      st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
	      response.sendRedirect("changePassword.jsp?msg=done");
	      }
	    if(check==0)
		      response.sendRedirect("changePassword.jsp?msg=wrong");

	    }
	catch(Exception e)
	{
		System.out.println(e);
	}
	
}
%>