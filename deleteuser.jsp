<html>
    <head>
        <link href="deleteuser.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" language="javascript">
            function display(evt,work)
            {
                var i,tabcontent,tablink;
                tabcontent=document.getElementsByClassName("tabcontent");
                for (i=0;i<tabcontent.length;i++)
                {
                    tabcontent[i].style.display="none";
                }
                document.getElementById(work).style.display="block";
            }

            function searchsuggestion()
            {
                var s=document.getElementById("searchbox").value;
                var obj=new XMLHttpRequest();
                obj.onreadystatechange=function()
                {
                    if((obj.readyState==4) && (obj.status==200))
                    {
                        document.getElementById("showresult").innerHTML=obj.responseText;
                    }
                }
                obj.open("get","search.jsp?Input="+s,true);
                obj.send();
            }

            function load()
            {
                var obj=new XMLHttpRequest();
                obj.onreadystatechange=function()
                {
                    if((obj.readyState==4)&&(obj.status==200))
                    {
                        document.getElementById("load").innerHTML=obj.responseText;
                    }
                }
                obj.open("get","load.jsp",true);
                obj.send();
            }
        </script>
    </head>
    <body onload="load()">
        <div class="nav">
            <a href="admin.jsp">Back</a>
            <a href="logout.jsp">Logout</a>
        </div>
        <div>
            <div class="tab">
                <button class="tablink" onclick="display(event,'all')">View</button>
                <button class="tablink" onclick="display(event,'search')">Search</button>
            </div>
            <div class="main">
                <div class="tabcontent" id="all">
                    <h1>All Users</h1>
                    <br>
                    <table align="center" cellspacing="8" cellpadding="13" style="border:none; width:100%; font-size:18px; font-weight:bolder; font-family: 'Times New Roman', Times, serif;">
                        <col width='20%'><col width='15%'><col width='13%'><col width='10%'><col width='10%'><col width='5%'><col width='9%'><col width='2%'>
                        <tr style="border:none;">
                            <th  style="border:none; background-color: rgb(145, 145, 16);">Email_ID</th>
                            <th  style="border:none; background-color: rgb(226, 226, 55);">Name</th>
                            <th  style="border:none; background-color: rgb(145, 145, 16);">Contact No.</th>
                            <th  style="border:none; background-color: rgb(226, 226, 55);">College</th>
                            <th  style="border:none; background-color: rgb(145, 145, 16);">College_ID</th>
                            <th  style="border:none; background-color: rgb(226, 226, 55);">Branch</th>
                            <th  style="border:none; background-color: rgb(145, 145, 16);">Gender</th>
                            <th  style="border:none; background-color: rgb(226, 226, 55);">Type</th>
                            <th  style="border:none; background-color: rgb(226, 226, 55);">CheckBox</th>
                        </tr>
                    </table>
                   <div id="load"></div>
                </div>
                <div class="tabcontent" id="search">
                    <div class="search">
                        <input type="text" name="search" id="searchbox" onkeyup="searchsuggestion()" placeholder="Search.....">
                    </div>
                    <br>
                    <h1>Search Results:</h1>
                    <div>
                            <table align="center" cellspacing="8" cellpadding="13" style="border:none; width:100%; font-size:18px; font-weight:bolder; font-family: 'Times New Roman', Times, serif;">
                                    <col width='20%'><col width='15%'><col width='13%'><col width='10%'><col width='10%'><col width='5%'><col width='9%'><col width='2%'>
                                    <tr style="border:none;">
                                        <th  style="border:none; background-color: rgb(145, 145, 16);">Email_ID</th>
                                        <th  style="border:none; background-color: rgb(226, 226, 55);">Name</th>
                                        <th  style="border:none; background-color: rgb(145, 145, 16);">Contact No.</th>
                                        <th  style="border:none; background-color: rgb(226, 226, 55);">College</th>
                                        <th  style="border:none; background-color: rgb(145, 145, 16);">College_ID</th>
                                        <th  style="border:none; background-color: rgb(226, 226, 55);">Branch</th>
                                        <th  style="border:none; background-color: rgb(145, 145, 16);">Gender</th>
                                        <th  style="border:none; background-color: rgb(226, 226, 55);">Type</th>
                                        <th  style="border:none; background-color: rgb(226, 226, 55);">CheckBox</th>
                                    </tr>
                                </table>
                    </div>
                    <div id="showresult" class="show"></div>
                </div>
            </div>
        </div>
    </body>
</html>