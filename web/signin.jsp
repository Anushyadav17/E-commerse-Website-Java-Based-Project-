<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%
      String userId=request.getParameter("userId");
      String pass=request.getParameter("pass");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
      PreparedStatement st=con.prepareStatement("select * from  customertable  where username=? and password=?");
      st.setString(1,userId);
      st.setString(2,pass);
      ResultSet rs=st.executeQuery();
       if(rs.next())
      {
        session.setAttribute("CALL", userId);
         response.sendRedirect("mainpage.jsp");
      }
%>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Responsive Login Form | CodingLab </title>
    <link rel="stylesheet" href="signinstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div class="container">
      <form>
        <div class="title">Login</div>
        <div class="input-box underline">
          <input type="text" placeholder="Enter Your Username" required name="userId">
          <div class="underline"></div>
        </div>
        <div class="input-box">
          <input type="password" placeholder="Enter Your Password" required name="pass">
          <div class="underline"></div>
        <div><a href="#Forgot password" style="font-size: 12px;" >forgot password</a></div>
        </div>
        <div class="input-box button">
          <input type="submit" name="button1" value="Login">
        </div>
      </form>
        <div class="option">Not having account? <a href="signup.jsp">SignUp</a></div>
        
    </div>
  </body>
</html>