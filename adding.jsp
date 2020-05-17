<%@page import="java.sql.*"%>
<%
try
{
	String uname,email,mobile,college,id,branch,gender,utype,pass;
	utype=request.getParameter("t1");
	uname=request.getParameter("t2");
	pass=request.getParameter("t3");
	email=request.getParameter("t5");
	mobile=request.getParameter("t6");
	college=request.getParameter("t7");
	id=request.getParameter("t8");
	branch=request.getParameter("t9");
	gender=request.getParameter("t10");
    Class.forName("com.mysql.jdbc.Driver");
	//2 Create Connection
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
	Statement st=con.createStatement();
	// 3.Create statement
	PreparedStatement ps=con.prepareStatement("insert into user(email_id,name,contact,college,college_id,branch,gender) values (?,?,?,?,?,?,?);");
	ps.setString(1,email);
	ps.setString(2,uname);
	ps.setString(3,mobile);
	ps.setString(4,college);
	ps.setString(5,id);
	ps.setString(6,branch);
	ps.setString(7,gender);
	int x=ps.executeUpdate();
	PreparedStatement ps1=con.prepareStatement("insert into login(email_id,password,type) values (?,?,?);");
	ps1.setString(1,email);
	ps1.setString(2,pass);
	ps1.setString(3,utype);
	int y=ps1.executeUpdate();
	if(x==1 && y==1)
			response.sendRedirect("adduser.jsp");
	else
		out.println("Failed");
	con.close();
	
	}
	

catch(Exception e)
{
	out.println(e.getMessage());
}


%>
