<%@page import="java.sql.Connection,java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%
      String userId = request.getParameter("userId");
      String name = request.getParameter("name");
      String feedback = request.getParameter("feedback");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
      PreparedStatement st=con.prepareStatement("insert into feedbacktable values(?,?,?)");
      st.setString(1,userId);
      st.setString(2,name);
      st.setString(3,feedback);
      st.executeUpdate();
        con.close();
      response.sendRedirect("mainpage.jsp");
%>