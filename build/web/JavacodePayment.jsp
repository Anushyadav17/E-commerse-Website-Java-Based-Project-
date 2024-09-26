
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        String name = request.getParameter("no");
        String Username = request.getParameter("cvc");
        
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
        
        PreparedStatement st = con.prepareStatement("insert into payment values(?,?)");
        st.setString(1,name);
        st.setString(2,Username);
       
       
        st.executeUpdate();
        con.close();
        
        response.sendRedirect("orderPlaced.jsp");
%>