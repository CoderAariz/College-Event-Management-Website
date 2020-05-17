<%@page import="java.sql.*"%>
<%
try 
{
   String[] event;
   String uname=(String)session.getAttribute("user");
	event=request.getParameterValues("gm");
	int x;
	if(event!=null)
   {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
	  PreparedStatement ps1=con.prepareStatement("insert into registration(event1,event2,event3,event4,email_id,event_id) values(?,?,?,?,?,?)");
		for(int i=0;i<event.length;i++)
		{
			ps1.setString((i+1),event[i]);
		}
	if(event.length==3)
	{ps1.setString(4,"NULL");
	}
   else if(event.length==2)
   {
   ps1.setString(3,"NULL");
   ps1.setString(4,"NULL");
   }
   else if(event.length==1)
   {ps1.setString(2,"NULL");
   ps1.setString(3,"NULL");
   ps1.setString(4,"NULL");
   }
   ps1.setString(5,uname);
   ps1.setString(6,"4");
   x = ps1.executeUpdate();
   if(x==1)
   {
      out.println("Registration Successful");
      out.println("<a href='index.jsp'><button type='button'>Go To Homepage</button></a>");
   }	
	else
		out.println("failed");

   }
}
	catch(Exception e)
{
out.println(e);


}
%>

