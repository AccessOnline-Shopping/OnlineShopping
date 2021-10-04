<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='http://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color : black; text-align: center; font-size: 30px;">Message Us <i class='fas-fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent .Our team contact you</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Something went wrong! Try Again!</h3>
<%} %>
<form action="MessageUsAction.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="subject" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter your Message" required></textarea>
<hr>
<button class="button" type="submit">Send <i class="far fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
</body>
</html>