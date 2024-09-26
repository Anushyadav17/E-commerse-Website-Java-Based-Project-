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
        body
        {
            overflow: hidden;
        }
        table
        {
            position: relative;
            top: 00px;
            left: 0px; 
            font-size: 20px;
        }
        #profile2edit
        {
            position: relative;
            top: 150px;
            left: 500px;
            
        }
        h2
        {
            margin-left: 120px;
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
                
                background-color: rgb(3, 122, 122);
                border: none;
                border-radius: 5px;
                cursor: pointer;
                color: white;
                border: none;
                font-size: 15px;
                width: 70px;
                position: relative;
                left: 150px;
            }
            #btn1:hover
            {
                background-color: rgb(3, 94, 94);
            }
            #btn1 a:focus
            {
                outline: none;
            }
            input
            {
                width: 200px;
                height: 30px;
                
            }
            label
            {
                font-family: sans-serif;
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
    
        
            <div id="profile2edit">
                <h2 style=" font-size:24px"> Shipping Details - </h2>
           <form name="form"  method="post"action="JavacodeTest.jsp">
            <table cellspacing="40" >
            <tr>
              <td><label for="state">Address</label></td>
              <td><textarea name="address" id="" cols="30" rows="1"></textarea></td>
            </tr>
            <tr>
              <td><label for="city">City</label></td>
              <td><input type="text" name="city" ></td>
            </tr>
            <tr>
              <td><label for="state">State</label></td>
              <td><input type="text" name="state" ></td></td>
            </tr>
            <tr>
              <td><label for="pincode">Pin Code</label></td>
              <td><input type="text" name="pincode" ></td>
            </tr>
          </table>
                   <input type="submit" class="submit" value="Next" id="btn1" />
        </form>
            </div>

</body>
    
</html>