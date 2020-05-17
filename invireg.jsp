<%@page import="java.sql.*"%>
<%
try 
{
	String[] event;
	event=request.getParameterValues("INVICTUS");
	int x;
	if(event!=null)
   {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","kuttu");
	  PreparedStatement ps1=con.prepareStatement("insert into registration(event1,event2,event3,event4) values(?,?,?,?)");
		ps1.setString(4,"NULL");
		for(int i=0;i<event.length;i++)
		{
			ps1.setString((i+1),event[i]);
		}
		
   if(event.length==2)
   {
   ps1.setString(3,"NULL");
   }
   else if(event.length==1)
   {ps1.setString(2,"NULL");
   ps1.setString(3,"NULL");
   }
   
   x = ps1.executeUpdate();
   if(x==1)
		out.println("registered");	
	else
		out.println("failed");

   }
}
	catch(Exception e)
{
out.println(e);


}
%>

