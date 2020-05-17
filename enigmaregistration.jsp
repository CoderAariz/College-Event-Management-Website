<HTML>
<HEAD>
		<style type="text/css" rel="stylesheets">
			BODY
		{	 
		background-image: url("images/technology.jpg");
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
		
		h1
		{
		text-align:center;	
		font-size: 80px;
		font-weight: bolder;
		font-family:New Century Schoolbook, TeX Gyre Schola, serif;
		text-shadow: 0 10px 10px #820186; 
		}
		h2{
			color:black;
			font-size: 35px;
			font-family:New Century Schoolbook, TeX Gyre Schola, serif;
			font-weight: bolder;
			text-align: center;
		}
		.main{
		  margin-top:55px;
		  margin-bottom: 55px;
		}
		.button{
			color:black;
			font-size: xx-large;
			font-family:New Century Schoolbook, TeX Gyre Schola, serif;
			font-weight: bolder;
			margin-bottom: 0%;
			margin-left:40%;
		}
		.button input[type=checkbox]
		{
			margin-bottom: 5%;
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
  border: none;
  left:45%;
}
			</style>
	<SCRIPT TYPE="TEXT/JAVASCRIPT" LANGUAGE="JAVASCRIPT">
		function myfun()
		{
		var a=document.getElementsByName('en');
		var newvar=0;
		var count;
		for(count=0;count<a.length;count++){
			if(a[count].checked==true)
			{
				newvar=newvar+1;
			}
		}
		if(newvar>=5){
		document.getElementById("not valid").innerHTML="**please select only four options";
		return false;
		}
		return true;
		}
	</SCRIPT>
</HEAD>
<BODY>
		<div class="nav">
				<a href="logout.jsp">Logout</a>
			</div>
			<div class="main">
	<FORM METHOD="POST" action="enigreg.jsp">
		 <h1><B>ENIGMA</B></h1><BR>
			 <h2>NOTE:-YOU CAN PARTICIPATE IN ANY FOUR EVENTS</h2><BR>
				<div class="button">
				 <input type="checkbox" name="en" value="SINGING" onclick="return myfun()"> 1.RISING VOICE <br>
				 <input type="checkbox" name="en" value="NATRAJ" onclick="return myfun()"> 2.NATRAJ<br> 
				 <input type="checkbox" name="en" value="FACE PAINTING" onclick="return myfun()"> 3.FACE PAINTING<br>
				 <input type="checkbox" name="en" value="T-SHIRT PAINTING" onclick="return myfun()"> 4.T-SHIRT PAINTING <br> 
				 <input type="checkbox" name="en" value="KEYBOARD COMBATING" onclick="return myfun()">5.KEYBOARD COMBATING<br>
				 <input type="checkbox" name="en" value="RANGOLI" onclick="return myfun()"> 6.RANGOLI<br>
				 <input type="checkbox" name="en" value="MEHANDI" onclick="return myfun()"> 7.MEHANDI<br>
				 <input type="checkbox" name="en" value="X FACTOR" onclick="return myfun()"> 8.X FACTOR<br>
				 <input type="checkbox" name="en" value="TH" onclick="return myfun()">9.TREASURE HUNT <br>
				 <input type="checkbox" name="en" value="BOB" onclick="return myfun()">10.BATTLE OF BREAD BOARD <br>
				 <input type="checkbox" name="en" value="EB" onclick="return myfun()">11.EGG BREAK CHALLENGE <br>
				 <input type="checkbox" name="en" value="CB" onclick="return myfun()"> 12.CODE BYTE<br>
				 <input type="checkbox" name="en" value="BAD" onclick="return myfun()"> 13.BADMINTON<br>
				 <input type="checkbox" name="en" value="VB" onclick="return myfun()"> 14.VOLLEYBALL<br>
				 <input type="checkbox" name="en" value="CHESS" onclick="return myfun()"> 15.CHESS<br>
				 <input type="checkbox" name="en" value="TT" onclick="return myfun()">16.TABLE TENNIS <br>
				 <input type="checkbox" name="en" value="EGL" onclick="return myfun()"> 17.ENIGMA GAMING LEAGUE<br>
				 </div>
				 <input type="submit" value="Register" class="adding"> 
		 <div>
			 <span id="not valid" style="color:red"> </span>
		 </div>
	</FORM>
	</div>
</BODY>
</HTML>