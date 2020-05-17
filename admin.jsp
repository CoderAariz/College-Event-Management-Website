<html>
    <head>
        <link type="text/css" rel="stylesheet" href="admin.css">
        <script type="text/javascript" language="javascript">
            function admininfo()
            {
                try
                {
                var obj=new XMLHttpRequest();
                obj.onreadystatechange=function()
                {
                    if((obj.readyState==4)&&(obj.status==200))
                    {
                        document.getElementById("info").innerHTML=obj.responseText;
                    }
                }
                obj.open("get","admininfo.jsp",true);
                obj.send();
                }
                catch(err)
                {
                    document.getElementById("info").innerHTML=err.message;
                }
            }
        </script>
    </head>
    <body onload="admininfo()">
        <div class="nav">
            <a href="index.jsp">Home</a>
            <a href="viewevents.jsp">View Events</a>
            <a href="adduser.jsp">Add User</a>
            <a href="deleteuser.jsp">Delete User</a>
            <a href="modify.jsp">Modify</a>
            <a href="logout.jsp">Logout</a>
        </div>
        <div id="admin" class="admin" height="700px">
            <h1 style="font-size:550%; text-align: center; text-shadow: 0 10px 10px #3d3f41; padding:0px 0px">Welcome</h1> 
            <div id="info" class="info"></div>
        </div>
    </body>
</html>