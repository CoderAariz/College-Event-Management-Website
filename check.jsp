<%@page import="java.sql.*"%>
<%
	try
	{
		String uname,pass;
		uname=request.getParameter("uname");
		pass=request.getParameter("pass");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery("select * from login;");
		while(rs.next())
		{
			if((rs.getString(1).equals(uname)) && (rs.getString(2).equals(pass)))
			{
				session.setAttribute("user",uname);
				session.setAttribute("type",rs.getString(3));
        		if(rs.getString(3).equals("admin"))
        		{
            		response.sendRedirect("admin.jsp");
        		}
        		if(rs.getString(3).equals("student"))
        		{
           		 	response.sendRedirect("eventselection.html");
				}
			}
			else
    		{
        		out.println("Something went wrong!!!!");
			}
		}
		con.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>