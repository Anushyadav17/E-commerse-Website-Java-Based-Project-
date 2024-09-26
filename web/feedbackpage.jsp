<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <link rel="Shortcut icon" href="images/logo.png" type="image/x-icon">
    <style>
        body
        {
            background-color: rgba(225, 225, 225, 0.4);
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .contanier
        {
            background: rgba(255, 255, 255, 1);
            height: 500px;
            width: 60%;
            border-radius: 30px;
            position: relative;
            top: 80px;
            display: flex;
            justify-content: space-between;
        }
        .contanier h1
        {
            margin: 40px;
            margin-left: 70px;
            margin-top: 80px;
            margin-bottom: 0;
            width: 100px;
            font-size: 50px;
            font-family: sans-serif;
            color: #6674CC;
        }
        .form
        {
            margin: 30px;
            margin-top: 100px;
        }
        input
        {
            background-color: transparent;
            border: none;
            border-bottom: 3px solid gray;
            font-size: 30px;
            margin: 20px;
            outline: none;  
            font-family: sans-serif; 
        }
        #submitbtn
        {
            border: none;
            color: #6674CC;
            font-weight: 600;
        }
        #submitbtn:hover
        {
            transform: scale(1.05);
        }
        .logo
        {
            margin-left: 20px;
            display: flex;
            height: 100%;
            width: 300px;
            align-items: center;
            position: relative;
            top: 10px;
        }
        .logo img
        {
            width: 50px;
            height: 50px;
            background-color: transparent;
        }
        .logo p{
            font-size: 20px;
            text-shadow: 1px 1px;
            color: #6674CC;
        }
    </style>
</head>
<body>
    <div class="contanier">
        <div class="div1">
            <h1>FEEDBACK US</h1>
            <div class="logo">
                <p><i><b>Fashion Hub</b></i></p>
            </div>
        </div>
        <div class="form">
            <form action="JavacodeInsertFeedback.jsp">
                <input type="text" placeholder="Username" name="userId"><br>
                <input type="text" placeholder="Name" name="name"><br>
                <input type="text" placeholder="Feedback" name="feedback"><br><br>
                <input type="submit" value="Submit" id="submitbtn">
                <input type="reset" value="Reset" id="submitbtn">
            </form>
        </div>
    </div>
</body>
</html>