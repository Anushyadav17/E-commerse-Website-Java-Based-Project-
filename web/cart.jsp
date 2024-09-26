<%@include file="security.jsp" %>
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
        form
        {
            position: absolute;
            width: 50px;
            height: 50px;
            top: 345px;
            left: 1100px;
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

        <!-- CART CONTAINER -->
    <div id="cartMainContainer">
        <h1> Checkout </h1>
        <h3 id="totalItem"> Total Items: 0 </h3>

        <div id="cartContainer">
            <!-- JS rendered code -->  
            
   

        </div>

    </div>

</body>
    <!-- FOOTER -->
    <div id="4"></div>
    <script>
        load("footer.jsp");
        function load(url)
        {
            req = new XMLHttpRequest();
            req.open("GET", url, false);
            req.send(null);
            document.getElementById(4).innerHTML = req.responseText;
        }
    </script>
    <%@include file="cart1.jsp" %>
</html>