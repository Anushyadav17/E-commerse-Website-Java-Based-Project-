<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException,java.util.Date" %>
<%      
        String pname=request.getParameter("pname");
        String price=request.getParameter("price");
        session.setAttribute("pname", pname);
        session.setAttribute("price", price);
        String quantity=(String)session.getAttribute("q");
        String username= (String)session.getAttribute("CALL");
        String id= pname.concat(username);
        if(quantity==null)
        {
        quantity="1";
}
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
        
        PreparedStatement st = con.prepareStatement("insert into shoppingcart values(?,?,?,?,?)");
        st.setString(1,pname);
        st.setString(2,price);
        st.setString(3,quantity);
        st.setString(4,username);
        st.setString(5,id);
        st.executeUpdate();
        con.close();
        response.sendRedirect("confirmorder.jsp");
%>