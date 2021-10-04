<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%
session.invalidate();
response.sendRedirect("login.jsp");
%>