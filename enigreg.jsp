<%@page import="java.sql.*"%>
<%
try 
{
   String[] event;
   String uname=(String)session.getAttribute("user");
	event=request.getParameterValues("en");
	int x;
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
	  if(event!=null)
	  { 	
		  	PreparedStatement ps=con.prepareStatement("select count(*) from registration where email_id=? and event_id=?");
			ps.setString(1,uname);
			ps.setString(2,"3");
			ResultSet rs=ps.executeQuery();
			rs.next();
         if(((rs.getString(1).trim()).equals("1")))
         {
            out.println("Already Registered.");
         }
         else
         {
			PreparedStatement ps1=con.prepareStatement("insert into registration(event1,event2,event3,event4,email_id,event_id) values(?,?,?,?,?,?)");
			for(int i=0;i<event.length;i++)
			{
					ps1.setString((i+1),event[i]);
							}
				if(event.length==3)
				{
					ps1.setString(4,"NULL");
						}
				else if(event.length==2)
				{
					ps1.setString(3,"NULL");
					ps1.setString(4,"NULL");
					}
				else if(event.length==1)
				{
					ps1.setString(2,"NULL");
					ps1.setString(3,"NULL");
					ps1.setString(4,"NULL");
						}
				ps1.setString(5,uname);
				ps1.setString(6,"1");
				x = ps1.executeUpdate();
		if(x==1)
		{
			out.println("<h3>Registration Successful.<br>Contact your helpdesk within 3 days otherwise your registration will be cancelled</h3>");
			out.println("<a href='index.jsp'><button type='button' style='position: relative;padding: 7px 18px;text-align: center;cursor: pointer;font-family: Times, serif;font-size: large;border-radius: 5px;background-color: #f71b0b;height:35px;width: 200px;color:antiquewhite;left:15%; border: none;'>Go To Homepage</button></a>");
			}	
		 }
	  }
	   else
		out.println("failed");
	con.close();
   }

	catch(Exception e)
{
out.println(e);
}
%>