<%@include file="security.jsp" %>
<%@page import=" java.util.Scanner, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.Connection, java.sql.SQLException " %>
<%      
        String test=request.getParameter("test");
        session.setAttribute("q", test);
        
        
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> CONTENT DETAILS | E-COMMERCE WEBSITE BY EDYODA </title>
    <!-- favicon -->
    <link rel="icon" href="https://yt3.ggpht.com/a/AGF-l78km1YyNXmF0r3-0CycCA0HLA_i6zYn_8NZEg=s900-c-k-c0xffffffff-no-rj-mo" type="image/gif" sizes="16x16">
    <!-- <link rel="stylesheet" href="/box1.css"> -->
    <link rel="stylesheet" href="css/contetDetails.css">
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <!-- header links -->
    <script src="https://kit.fontawesome.com/4a3b1f73a2.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <style>
        #Select
        {
            position: absolute;
            top: 290px;
            left: 650px;
        }
        #inputbox
        {
            width: 30px;
        }
    </style>
</head>

<body>
<!-- HEADER -->
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
    
    <div id="containerProduct">
        <!-- JS rendered code -->
        
    </div>
    
<script src="contentDetails.js"></script>

<!-- FOOTER -->
<div id="4"></div>
<div id="Select">
    <form action="" method="post">
    <label><b>Enter Quantity:-</b></label>
    <input type="text" id="inputbox" name="test">
    <input type="submit" value="Add" id="btn1">
    </form>
</div>
</body>

</html>