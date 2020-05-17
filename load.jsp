<%@page import="java.sql.*"%>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
    Statement smt=con.createStatement();
    ResultSet rs=smt.executeQuery("select u.*,l.type from user as u inner join login as l on(u.email_id=l.email_id);");
    out.println("<form method='post' action='delete.jsp'>");
    out.println("<table align='center' cellspacing='8' cellpadding='22'>");
    out.println("<col width='7%'><col width='15%'><col width='7%'><col width='7%'><col width='10%'><col width='7%'><col width='7%'><col width='7%'>");
    while(rs.next())
    {
        out.println("<tr>");
        out.println("<td style='border:none; color: aliceblue;'>");
        out.println(rs.getString(1));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(2));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(3));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(4));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(5));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(6));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(7));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println(rs.getString(8));
        out.println("</td>");
        out.println("<td style='border:none;color: aliceblue;'>");
        out.println("<input type='checkbox' value='"+rs.getString(1)+"' name='c'>");
        out.println("</td>");
        out.println("</tr>");
    }
    out.println("</table>");
    out.println("<input type='submit' value='DELETE' style='position: relative;padding: 7px 18px;text-align: center;cursor: pointer;font-family: Times, serif;font-size: large;border-radius: 5px;background-color: #f71b0b;height:35px;width: 150px;left:35%; border: none;'>");
    out.println("<input type='reset' value='REFRESH' style='position: relative;padding: 7px 18px;text-align: center;cursor: pointer;font-family: Times, serif;font-size: large;border-radius: 5px;background-color: #c90f4d;height:35px;width: 150px;left:38%; border:none;'>");
    out.println("</form>");
    con.close();
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>    