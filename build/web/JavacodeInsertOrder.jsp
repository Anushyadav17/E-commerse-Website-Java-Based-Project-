<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException,java.util.Date,java.sql.ResultSet , java.util.ArrayList" %>
<%     
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
         String username= (String)session.getAttribute("CALL");
         PreparedStatement st1 = con.prepareStatement("select address from test where username="+username);
         ResultSet rs = st1.executeQuery();
         ArrayList list1 = new ArrayList();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            
        }
        String address=(String)list1.get(0);
        
        Date date=new Date();
        String date1=date.toString();
        String date2="11/21/2023";
        String status="In process";
        String id= date1.concat(username);
         
       
        PreparedStatement st = con.prepareStatement("insert into ordertable values(?,?,?,?,?,?)");
        st.setString(1,date1);
        st.setString(2,username);
        st.setString(3,date2);
        st.setString(4,status);
        st.setString(5,id);
        st.setString(6,address);
        st.executeUpdate();
        con.close();
        response.sendRedirect("payment.jsp");
%>