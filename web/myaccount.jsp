<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException, java.sql.ResultSet,java.util.ArrayList " %>
<%       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","root");
        String userId = (String)session.getAttribute("CALL");
        PreparedStatement st = con.prepareStatement("select * from customertable where username="+userId);
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        ArrayList list3 = new ArrayList();
        ArrayList list4 = new ArrayList();
        ArrayList list5 = new ArrayList();
        ArrayList list6 = new ArrayList();
        
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            list6.add(rs.getString(6));
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
        body
        {
            overflow: hidden;
        }
        table
        {
            position: relative;
            top: 100px;
            left: 200px; 
            font-size: 20px;
        }
        #profile2edit
        {
            position: relative;
            top: 150px;
            left: 200px;
        }
        #hide
        {
            display: none;
        }
        #container
        {
            position: relative;
            top: 0px;
        }
        #btn1 
            {
                padding: 8px 12px;
                background-color: rgb(3, 122, 122);
                border: none;
                border-radius: 5px;
                cursor: pointer;
                color: white;
                border: none;
                font-size: 15px;
            }
            #btn1:hover
            {
                background-color: rgb(3, 94, 94);
            }
            #btn1 a:focus
            {
                outline: none;
            }
    </style>
</head>
<body>
    <div id="1"></div>
    <script>
        load("header.jsp");
        function load(url)
        {
            req = new XMLHttpRequest();
            req.open("GET", url, false);
            req.send(null);
            document.getElementById(1).innerHTML = req.responseText;
        }
    </script>
    <div>
        <h2 style=" font-size:20px ;
            position: relative;
            top: 110px;
            left: 200px; ">Your Account Details - </h2>
     <table class="table" cellspacing="20">
                  <tr>
                      <td>Name :- </td>
                      <td><%=list1.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Username :- </td>
                    <td><%=list2.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Email :- </td>
                    <td><%=list3.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Contact :- </td>
                    <td><%=list4.get(0)%></td>
                  </tr>
                  <tr>
                    <td>Address :- </td>
                    <td><%=list6.get(0)%></td>
                  </tr>
                    
                </table>
    </div> 
            <div id="profile2edit">
                <h2 style=" font-size:20px">Edit Your Account Details - </h2>
                <form action="JavacodeUpdateuser.jsp" method="post">
                  <input type="text" name="userId" placeholder="username" id="hide" value="<%=session.getAttribute("CALL") %>">
                  <label for="userId">Enter the content you want to update :- </label>
                  <input type="text" name="section" placeholder="ex-password/Address/State/city/age"><br><br>
                  <label for="userId">Enter updated content :- </label>
                  <input type="text" name="sectionUpdate" placeholder="update content"><br><br>
                  <input type="submit"  value="Edit" id="btn1">
                </form>
            </div>

</body>
    
</html>