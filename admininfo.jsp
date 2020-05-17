<%@page import="java.sql.*"%>
<%
    String uname=(String) session.getAttribute("user");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
    PreparedStatement ps=con.prepareStatement("select * from user where email_id=?");
    ps.setString(1,uname);
    ResultSet rs=ps.executeQuery();
    out.println("<h3><u>Administrator</u></h3>");
    while(rs.next())
    {
        out.println("<label style='float:left; margin-left:25%;'>Name: </label><label style='margin-left:3%;'>"+rs.getString(2)+"</label><br>");
        out.println("<label style='float:left; margin-left:25%;'>Email-Id: </label><label style='margin-left:3%;'>"+rs.getString(1)+"</label><br>");
        out.println("<label style='float:left; margin-left:25%;'>Contact: </label><label style='margin-left:3%;'>"+rs.getString(3)+"</label><br>");
        out.println("<label style='float:left; margin-left:25%;'>College: </label><label style='margin-left:3%;'>"+rs.getString(4)+"</label><br>");
        out.println("<label style='float:left; margin-left:25%;'>Branch: </label><label style='margin-left:3%;'>"+rs.getString(6)+"</label><br>");
    }
%>