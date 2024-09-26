
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        String name = request.getParameter("name");
        String Username = request.getParameter("Username");
        String Email = request.getParameter("Email");
        String Phone = request.getParameter("Phone");
        String Password = request.getParameter("Password");
        String address = request.getParameter("address");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
        
        PreparedStatement st = con.prepareStatement("insert into customertable values(?,?,?,?,?,?)");
        st.setString(1,name);
        st.setString(2,Username);
        st.setString(3,Email);
        st.setString(4,Phone);
        st.setString(5,Password);
       st.setString(6,address);
        st.executeUpdate();
        con.close();
        session.setAttribute("CALL", Username);
        
        response.sendRedirect("mainpage.jsp");
%>