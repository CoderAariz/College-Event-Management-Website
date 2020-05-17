<%@page import="java.sql.*"%>
<%
try
{
	String uname,id,email,contact,gender,interest,college;
	
	
	uname=request.getParameter("t1");
	id=request.getParameter("t2");
	email=request.getParameter("t3");
	contact=request.getParameter("t4");
	gender=request.getParameter("t6");
	interest=request.getParameter("t7");
	college=request.getParameter("t8");

	
    Class.forName("com.mysql.jdbc.Driver");
	//2 Create Connection
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
	PreparedStatement ps=con.prepareStatement("insert into user (email_id,name,contact,college,college_id,gender) values (?,?,?,?,?,?);");
	ps.setString(1,email);
	ps.setString(2,uname);
	ps.setString(3,contact);
	ps.setString(4,college);
	ps.setString(5,id);
	ps.setString(6,gender);
	int x=ps.executeUpdate();
	
     
	PreparedStatement ps1=con.prepareStatement("insert into volunteer(email,interest) values (?,?);");
	ps1.setString(1,email);
	ps1.setString(2,interest);
	
	int y=ps1.executeUpdate();
	if(x==1 && y==1)
			out.println("Registration");
	else
			out.println("Failed");
	con.close();
	
	
 }
	

catch(Exception e)
{
	out.println(e.getMessage());
}


%>
