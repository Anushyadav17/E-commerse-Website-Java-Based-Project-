<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String pincode = request.getParameter("pincode");
        String username= (String)session.getAttribute("CALL");
       Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
        PreparedStatement st2 = con.prepareStatement("delete from test");
        st2.executeUpdate();
        PreparedStatement st = con.prepareStatement("insert into test values(?,?)");
          
        st.setString(1,username);
        st.setString(2,address);
       
        st.executeUpdate();
        con.close();
        response.sendRedirect("JavacodeInsertOrder.jsp");
%>