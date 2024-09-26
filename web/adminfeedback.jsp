
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
    
        String username= (String)session.getAttribute("CALL");

        PreparedStatement st = con.prepareStatement("select * from feedbacktable");
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        ArrayList list3 = new ArrayList();
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
           
        }
        
        
        con.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Cart | E-COMMERCE WEBSITE BY EDYODA </title>
    <link rel="stylesheet" href="css/cart.css">
    <!-- favicon -->
    <link rel="icon" href="https://yt3.ggpht.com/a/AGF-l78km1YyNXmF0r3-0CycCA0HLA_i6zYn_8NZEg=s900-c-k-c0xffffffff-no-rj-mo" type="image/gif" sizes="16x16">
    <!-- header links -->
    <script src="https://kit.fontawesome.com/4a3b1f73a2.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <style>
        table
        {
            position: relative;
            top: 100px;
            left: 5px;
        }
    </style>
</head>
<body>
        <!-- HEADER -->
    <div id="1"></div>
    <script>
        load("adminheader.jsp");
        function load(url)
        {
            req = new XMLHttpRequest();
            req.open("GET", url, false);
            req.send(null);
            document.getElementById(1).innerHTML = req.responseText;
        }
    </script>
     <table cellspacing="50px;">
                <tr>
                    <th>Username</th>
                    <th>Name</th>
                    <th>Feedback</th>
                    
                </tr>
                <%for(int i=0;i<list1.size();i++)
                    { %>
                    <tr>
                        <td><%=list1.get(i)%></td>
                  <td><%=list2.get(i)%></td>
                  <td><%=list3.get(i)%></td>
                  
                  
                    </tr>
                <%} %>
            </table>
                
</body>
   
    
</html>