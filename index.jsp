<html>
    <head>
        <link href="homepage.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div>
            <div class="nav">
                <h3 class="heading">United Events</h3>
                <a href="index.jsp">HOME</a>
                <a href="about.jsp">ABOUT</a>
                <a href="events.html">EVENTS</a>
                <a href="volunteering.html">VOLUNTEER</a>
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
            <marquee direction="left" height="300" width="100%" behaviour="slide" scrollamount="20">
                <img src="event/IMG_20191114_004947.jpg" height="100%">
                <img src="event/maxresdefault.jpg" height="100%">
                <img src="event/IMG_20191114_005000.jpg" height="100%">
                <img src="event/imagesbad.jpg" height="100%">
                <img src="event/IMG_20191114_005014.jpg" height="100%">
                <img src="event/enigmaimages.jpg" height="100%">
                <img src="event/IMG_20191114_005032.jpg" height="100%">
                <img src="event/collage.jpg" height="100%">
                <img src="event/flashimages.jpg" height="100%">
                <img src="event/images.jpg" height="100%">
                <img src="event/invi.jpg" height="100%">
            </marquee>  
            <br>
            <br>
            <video controls height="300" width="600" loop poster="event/IMG_20191114_005014.jpg" style="margin-left:35%;" autoplay>
                <source src="event/VID-20191113-WA0008.mp4" type="video/mp4">
            </video>          
            <p><b>Welcome to UNITED COLLEGE event management website.Register for the events and join our community.<br>
            Culture is the arts elevated to a set of belief's... Ah, now that was not me, this is a Thomas Wolfe quote which I agree in appearance is 'SUPER' philosophical, but in meaning is, rather an obvious truth. Art has always been there... in fact art is the one (Yes I'm personifying), who has witnessed the evolution and devolution of civilizations first hand. As, Art became an integral part of these civilizations, it became their culture. But culture is not just art... it is everything from human lifestyle to human burial and all the things in between. With the advent of technologies "Machines have become cultural", or may i say "Culture has become mechanical". Whatever it is one thing is certainly true, that with time man has learnt to live with and among these technologies meanwhile, preserving his culture to its very root. Now, isn't it enigmatic, the nature in which culture compliments technology and vice versa? The mysterious force that works in the backstage of the show that technology and culture put together is adorably eccentric! With the zeal and zest of cultures untold and technologies yet to born from the most sparkling neurons, We bring to you a fest celebrating the mysterious energy that brings together culture and technology.</b></p>
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