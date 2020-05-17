<%@ page import="java.sql.*" %>
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
			.adding{
				position: relative;
				padding: 7px 18px;
				text-align: center;
				cursor: pointer;
				font-family: 'Times New Roman', Times, serif;
				font-size: large;
				border-radius: 5px;
				background-color: #f71b0b;
				height:35px;border: none;
				width: 150px;
				left:0.5%;
			  }
			  input[type=text]{
				width: 250px;
    			height: 30px;
				color:black;
				text-align: center;
				margin: 5px 0px 5px 0px;
				font-size: large;
				font-weight: bold;
				font-family: 'Times New Roman', Times, serif;
				border:2px solid rgba(44, 85, 44, 0.979);
				border-radius: 6px;
				resize: vertical;
				box-sizing: border-box;
			  }
			  label{
				  color:whitesmoke;
				  font-family: 'Times New Roman', Times, serif;
				  font-size: x-large;
			  }
			  h1{
			font-size: 300%;
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			text-align: center;
		}
		</style>
	</head>
<body>
		<div class="nav">
				<a href="modify.jsp">Back</a>
				<a href="logout.jsp">Logout</a>
			  </div>
			  <div class="main">
	<h1>Edit Information</h1>
<%
	try
	{
	String uname=(String)session.getAttribute("user");	
	String email=request.getParameter("u");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","coolbuddy");
    Statement smt=con.createStatement();
	String sql="select * from user where email_id='"+email+"'";
    ResultSet rs=smt.executeQuery(sql);
	rs.next();
%>
		<form method="post" action="" align="center">
		<label><b>EMAIL_ID</b></label><br>
		<input type="text" name="t5" value='<%= rs.getString(1) %>' readonly /> <br><br>
		<label><b>COLLEGE_ID</b></label><br>
		<input type="text" name="t1" value='<%= rs.getString(5) %>' /> <br><br>
		<label><b>NAME</b></label><br>
		<input type="text" name="t2" value='<%= rs.getString(2) %>' /> <br><br>
		<label><b>CONTACT</b></label><br>
		<input type="text" name="t3" value='<%= rs.getString(3) %>' /> <br><br>
		<label><b>COLLEGE</b></label><br>
		<input type="text" name="t4" value='<%= rs.getString(4) %>' /> <br><br>
		<input type="submit" value="Update" name="b1" class="adding" />
		<%
			if(request.getParameter("b1")!=null)
			{
			try{	
			String email_id=request.getParameter("t5");
    	    String col_id=request.getParameter("t1");
			String name=request.getParameter("t2");
			String contact=request.getParameter("t3");
			String college=request.getParameter("t4");
			String query="update user set college_id=?,name=?,contact=?,college=? where email_id='"+email+"'";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,col_id);
			ps.setString(2,name);
			ps.setString(3,contact);
			ps.setString(4,college);
			int x=ps.executeUpdate();
			if(x!=0)
				response.sendRedirect("modify.jsp");
			else
				out.println("Record Not Updated");
			con.close();
		}catch(Exception e)
		{
			out.println(e.toString());
		}
			}
		%>
		</form>
		<%
		}catch(Exception e)
		{
			out.println(e.toString());
		}
		%>
	</div>
</body>
</html>