<%@page import="java.sql.*"%>
<%
try
{
   String[] selecteduser;
   selecteduser=request.getParameterValues("c");
   if(selecteduser!=null)
   {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
      for(int i=0;i<selecteduser.length;i++)
      {
         PreparedStatement ps1=con.prepareStatement("select * from login where email_id=?;");
         ps1.setString(1,selecteduser[i]);
         ResultSet rs=ps1.executeQuery();
         rs.next();
         if(rs.getString(3).equals("student"))
         {
            PreparedStatement ps4=con.prepareStatement("delete from registration where email_id=?;");
            ps4.setString(1,selecteduser[i]);
            ps4.executeUpdate();
         }
         PreparedStatement ps2=con.prepareStatement("delete from login where email_id=?;");
         ps2.setString(1,selecteduser[i]);
         ps2.executeUpdate();
         PreparedStatement ps3=con.prepareStatement("delete from user where email_id=?;");
         ps3.setString(1,selecteduser[i]);
         ps3.executeUpdate();
         
      }
      con.close();
      response.sendRedirect("deleteuser.jsp");
   }
   else
   {
      response.sendRedirect("deleteuser.jsp");
   }
}
catch(Exception e)
{
   out.println(e);
}
%>