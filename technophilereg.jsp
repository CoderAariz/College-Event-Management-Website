<HTML>
    <HEAD>
        <style type="text/css" rel="stylesheets">
            BODY
            {	 
            background-image: url("images/technology.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            }            
            .nav{
            background-color:#333;
            top:0;
            left:0;
            width:100%;
            overflow: hidden;
            position: fixed;
            }            
            .nav a{
            color: white;
            width: 160px;
            font-family: 'Times New Roman', Times, serif;
            font-weight: bolder;
            text-decoration: none;
            margin:0px 0px 0px 0px;
            display:inline-block;
            text-align: center;
            font-size: x-large;
            padding: 14px 16px;
            }            
            .nav a:hover{
            background-color: black;
            color:white;
            }
            
            h1
            {
            text-align:center;	
            font-size: 80px;
            font-weight: bolder;
            font-family:New Century Schoolbook, TeX Gyre Schola, serif;
            text-shadow: 0 10px 10px #820186; 
            }
            h2{
                color:black;
                font-size: 35px;
                font-family:New Century Schoolbook, TeX Gyre Schola, serif;
                font-weight: bolder;
                text-align: center;
            }
            .main{
              margin-top:55px;
              margin-bottom: 55px;
            }
            .button{
                color:black;
                font-size: xx-large;
                font-family:New Century Schoolbook, TeX Gyre Schola, serif;
                font-weight: bolder;
                margin-bottom: 0%;
                margin-left:40%;
            }
            .button input[type=checkbox]
            {
                margin-bottom: 5%;
            }
            .adding{
            position: relative;
            padding: 7px 18px;
            text-align: center;
            cursor: pointer;
            font-family: 'Times New Roman', Times, serif;
            font-size: large;
            border-radius: 5px;
            background-color: #f71b0b;
            height:35px;border: none;
            width: 150px;
            border: none;
            left:45%;
            }
        </style>
    </HEAD>
    <BODY>
        <div class="nav">
            <a href="logout.jsp">Logout</a>
        </div>
        <div class="main">
            <FORM METHOD="GET" ACTION="techreg.jsp">
                <h1><B>TECHNOPHILE</B></h1><BR>
                <h2>NOTE:-YOU CAN PARTICIPATE IN AS MANY EVENTS YOU WANT</h2><BR>
                <div class="button">
                    <input type="checkbox" name="tech" value="CODE STORM"> 1.CODE STORM <br>
                    <input type="checkbox" name="tech" value="CODE-A-THON"> 2.CODE-A-THON<br> 
                    <input type="checkbox" name="tech" value="EFFICACY"> 3.EFFICACY<br>
                    <input type="checkbox" name="tech" value="TECHNOSANCE"> 4.TECHNOSANCE QUIZ<br>
                </div> 
			    <input type="submit" value="Register" class="adding">
            </FORM>
        </div>
    </BODY>
</HTML>