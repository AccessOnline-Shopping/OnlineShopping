<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="Signupaction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required><br>
  <input type="email" name="email" placeholder="Enter Email" required><br>
  <input type="number" name="moblieNumber" placeholder="Enter MobileNumber" required><br>
  <select name="securityQuestion" required><br>
  <option value="what was your first car?">what was your first car?</option>
  <option value="what is the name of your first pet?">what is the name of your first pet?</option>
  
  </select><br>
  <input type="text" name="answer" placeholder="Enter answer" required><br>
  <input type="password" name="password" placeholder="Enter Password" required><br>
  <input type="submit" value="signup">
  </form>
    <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
  <h1>Successfully Registered !</h1>
  <%}%>
  <% 
  if("invalid".equals(msg))
  {
  %>
  <h1>Some thing Went Wrong! Try Again !</h1>
  <%}%>
  <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>