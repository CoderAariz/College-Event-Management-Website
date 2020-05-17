<HTML>
	<HEAD>
	  <link type="text/css" href="adduser.css" rel="stylesheet">
  <script language="javascript" type="text/javascript">
  function validate()
  {
	  var uname=document.getElementById("t2").value;
	  var unamepattern=/^[a-zA-Z ]{1,}$/;
	  var pass=document.getElementById("t3").value;
	  var pass1=document.getElementById("t4").value;
	  var mail=document.getElementById("t5").value;
	  var passpattern=new RegExp("^(?=.*[a-zA-Z])(?=.*[~!@#$%^&*])(?=.{1,})");
	  var contact=document.getElementById("t6").value;
	  var conlen=contact.length;
		if(uname=="")
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
		<a href="login.html">Back</a>
	</div>
	<div class="main">
  <h1>Create Your Account</h1>
	<div class="myclass">
  <form action="registrationinsert.jsp" method="post" onsubmit="return validate()">
  <h3>
  
  
  <LABEL>User Name: </LABEL>
  <INPUT TYPE="text" NAME="t2" ID="t2"><BR><BR>
  
	<LABEL>Email: </LABEL>
	<INPUT TYPE="email" NAME="t5" ID="t5"><BR><BR>
  
  <LABEL>Password: </LABEL>
  <INPUT TYPE="password" NAME="t3" ID="t3" required><BR><BR>
  
  <LABEL>Confirm Password: </LABEL>
  <INPUT TYPE="password" NAME="t4" ID="t4"><BR><BR>
  
  <LABEL>Mobile No.: </LABEL>
  <INPUT TYPE="number" NAME="t6" ID="t6"><BR><BR>
  
  <LABEL>College: </LABEL>
  <input type="text" name="t7" id="t7"><br><br>

  <LABEL FOR="t8">College_ID: </LABEL>
  <INPUT TYPE="number" NAME="t8" ID="t8"><BR><BR>
  
  <LABEL FOR="t9" >Branch: </LABEL>
  <INPUT TYPE="text" NAME="t9" ID="t9"><br><br>
  
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