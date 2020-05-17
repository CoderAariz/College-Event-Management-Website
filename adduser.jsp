<HTML>
	<HEAD>
	  <link type="text/css" href="adduser.css" rel="stylesheet">
  <script language="javascript" type="text/javascript">
  function validate()
  {
	  var utype=document.getElementById("t1").value;
	  var utypepattern=/^[a-zA-Z]{1,}$/;
	  var uname=document.getElementById("t2").value;
	  var unamepattern=/^[a-zA-Z ]{1,}$/;
	  var pass=document.getElementById("t3").value;
	  var pass1=document.getElementById("t4").value;
	  var mail=document.getElementById("t5").value;
	  var passpattern=new RegExp("^(?=.*[a-zA-Z])(?=.*[~!@#$%^&*])(?=.{1,})");
	  var contact=document.getElementById("t6").value;
	  var conlen=contact.length;
	  if(utype=="")
	  {
		alert("please enter user type!");
		 return false;
	  }
		  else if(!utypepattern.test(utype))
	  {
		  alert("Only Alphabets are allowed in user type!");
		  return false;
	  }
		else if(uname=="")
	  {
		alert("Please Enter User Name!");
		 return false;
	  }
	   else if(!unamepattern.test(uname))
	  {
		  alert("Only Alphabet are allowed in username!");
		  return false;
	  }
	   if (pass=="")
	   
	  {
		  alert("Please! Enter the password");
		  return false;
	  }
		else if(!passpattern.test(pass))
	  {
		  alert("Password must contain an alphabet,a number and a special character!");
		  return false;
	  }
	  else if(pass!=pass1)
	  {
		  alert("Password mismatch Please Re-enter");
		  return false;
	  
	  }
	  else if(mail=="")
	  {
		alert("Please Enter the email_id!");
		 return false;
	  }
	  else if(contact=="")
	  {
		alert("Please Fill Mobile No!");
		 return false;
	  }
	   else if(conlen!=10)
	  {
		  alert("Mobile no must be of 10 digits");
		  return false;
	  }
	  return true;
	  }
	  </SCRIPT>
  </HEAD>
  <BODY>
	<div class="nav">
		<a href="admin.jsp">Back</a>
		<a href="logout.jsp">Logout</a>
	</div>
	<div class="main">
  <h1>ADD USER</h1>
	<div class="myclass">
  <form action="adding.jsp" method="post" onsubmit="return validate()">
  <h3><LABEL>User Type: </LABEL>
  <INPUT TYPE="text" NAME="t1" ID="t1"><BR><BR>
  
  
  <LABEL>User Name: </LABEL>
  <INPUT TYPE="text" NAME="t2" ID="t2"><BR><BR>
  
	<LABEL>Email: </LABEL>
	<INPUT TYPE="email" NAME="t5" ID="t5"><BR><BR>

  <LABEL>Password: </LABEL>
  <INPUT TYPE="password" NAME="t3" ID="t3"><BR><BR>
  
  <LABEL>Confirm Password: </LABEL>
  <INPUT TYPE="password" NAME="t4" ID="t4"><BR><BR>
  
  <LABEL>Mobile: </LABEL>
  <INPUT TYPE="number" NAME="t6" ID="t6"><BR><BR>
  
  <LABEL>College: </LABEL>
  <select name="t7" ID="t7">
  <option value="UCER">UCER </option>
  <option value="UIM">UIM</option>
  <option value="UCEM">UCEM</option>
  <option value="UIT">UIT</option>
  </select><br><br>
  <LABEL FOR="t8">College_ID: </LABEL>
  <INPUT TYPE="number" NAME="t8" ID="t8"><BR><BR>
  
  <LABEL FOR="t9" >Branch: </LABEL>
  
  <select name="t9" align="center" ID="t9"><br>
  
  <option value="CS" >CS </option><br>
  <option value="IT">IT</option>
  <option value="EN">EC</option>
  <option value="EE">EE</option>
  <option value="EN">EN</option>
  <option value="ME">ME</option>
  <option value="CIV">CIVIL</option>
  
  </select><br><br>
  
  <LABEL FOR="t10">Gender: </LABEL>
  <INPUT TYPE="RADIO" VALUE="male" NAME="t10" ID="t10.1">Male
  <INPUT TYPE="RADIO" VALUE="female" NAME="t10" ID="t10.2">Female<BR></h3>
  
  <INPUT TYPE="SUBMIT" NAME="ADD" VALUE="ADD" class="adding">
  
  
  <INPUT TYPE="RESET" NAME="RES" VALUE="REFRESH" class="fresh">
  
  
	  </div>
	</div>
  </FORM>
  </BODY>
  </HTML>