<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
       
        String userId = request.getParameter("userId");
        String section = request.getParameter("section");
        String sectionUpdate = request.getParameter("sectionUpdate");
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
        
        PreparedStatement st = con.prepareStatement("update customertable set "+section+"=? where username=? ");
        st.setString(1,sectionUpdate);
        st.setString(2,userId);
         st.executeUpdate();
        
        response.sendRedirect("myaccount.jsp");
        
%>