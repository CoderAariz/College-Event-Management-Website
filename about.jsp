<html>
    <head>
        <link href="about.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div>
            <div class="nav">
                <h3 class="heading">United Events</h3>
                <a href="index.jsp">HOME</a>
                <a href="about.jsp">ABOUT</a>
                <a href="events.html">EVENTS</a>
                <a href="volunteer.html">VOLUNTEER</a>
                <a href="contact.html">CONTACT US</a>
                <a href="organizeevent.html">ORGANIZE AN EVENT ?</a>
                <%@page import="java.String.*"%>
                <%
                    String uname=null;
                    String type=null; 
                    uname=(String)session.getAttribute("user");
                    type=(String)session.getAttribute("type");
                    if(uname==null && type==null)
                    {
                        out.print("<a href='login.html'>LOGIN</a>");
                    }
                    if(uname!=null && type.equals("admin"))
                    {
                        out.print("<a href='admin.jsp'>Admin Account</a>");
                    }
                    if(uname!=null && type.equals("student"))
                    {
                        out.print("<a href='eventselection.html'>Student Account</a>");
                    }
                %>
            </div>
            <div class="content">
            <br>
            <br>
            <div class="head">About Us</div>
            <br>
            <br>
            <br>
                <div class="body">
                <b>United Group of Institution's</b> brings you the biggest cultural & tech-fest where everyone looks forward to coming together be it, competing or enjoying. Offering a rich blend of music, art, dance, technical and numerous other fun events.A year's worth of excitement, fervor and hard work packed into  amazing events to give you the experience of thrill an competence. There are various events which gives each participant a new experience and learning followed by a chance to win exciting prizes. Our vision is to serve as a platform for those aspiring to turn their vision into tangible reality.
                So, buckle up and get ready for the most thrilling experience ever, where you get drenched in the adrenaline rush.
            </div>
            </div>
            <div>
                <footer class="foot">
                    <br>
                        <p>You can follow us on...</p>
                        <a href="https://www.facebook.com"><img src="images/facebook.png" class="fb"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="https://www.facebook.com"><img src="images/instagram.jpg" class="fb"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <br>
                        <h6>All Rights Reserved.</h6>
                </footer>
            </div>
        </div>
    </body>
</html>