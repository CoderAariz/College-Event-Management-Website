<html>
  <head>
    <style type="text/css" rel="stylesheets">
    body{
    background-image: url("images/admin.jpg");
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
  .main{
    margin-top:55px;
}

td{
  border:none;
  color: aliceblue;
  font-weight: bolder;
  font-size: xx-large;
}
h1{
			font-size: xx-large;
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			text-align: center;
		}
    </style>
  </head>
  <body>
    <div class="nav">
      <a href="admin.jsp">Back</a>
      <a href="logout.jsp">Logout</a>
    </div>
    <div class="main">
      <h1>View Events</h1>
        <table align="center" cellspacing="8" cellpadding="13" style="border:none; width:100%; font-size:18px; font-weight:bolder; font-family: 'Times New Roman', Times, serif;">
            <col width='5%'><col width='10%'><col width='9%'><col width='6%'>
            <tr style="border:none;">
                <th  style="border:none; background-color: rgb(145, 145, 16);">Event ID</th>
                <th  style="border:none; background-color: rgb(226, 226, 55);">Event Name</th>
                <th  style="border:none; background-color: rgb(145, 145, 16);">Event Date</th>
                <th  style="border:none; background-color: rgb(226, 226, 55);">No. of Days</th>
            </tr>
        </table>
      <%@page import="java.sql.*"%>
      <%
      try
      {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
        Statement smt=con.createStatement();
        ResultSet rs=smt.executeQuery("select * from event");
        out.println("<Table border='1'>");
        out.println("<table align='center' cellspacing='4' cellpadding='30'>");
        out.println("<col width='10%'><col width='15%'><col width='8%'><col width='7%'>");
        while(rs.next())
        {  
	        out.println("<TR>");
          out.println("<TD>");
          out.println( rs.getString(1)); 
          out.println("</TD>");
          out.println("<TD>");
          out.println(rs.getString(2));
          out.println("</TD>");
          out.println("<TD>");
          out.println(rs.getString(3));    
          out.println("</TD>");
	        out.println("<TD>");
          out.println( rs.getString(4));    
          out.println("</TD>");        
          out.println("</TR>");
        }
        out.println("</Table>");
        con.close();
      }
      catch(Exception e)
      {
        out.println(e);
      }
      %>
    </div>
  </body>
</html>