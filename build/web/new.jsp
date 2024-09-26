<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        String a =(String)session.getAttribute("CALL1");
        System.out.println("hello");
        System.out.println(a);
%>