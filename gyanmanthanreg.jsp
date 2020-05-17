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
			margin-bottom: 5%;
			margin-left:40%;
		}
		.button input[type=checkbox]
		{
			margin-bottom: 8%;
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
  left:47%;
}
			</style>
	<SCRIPT TYPE="TEXT/JAVASCRIPT" LANGUAGE="JAVASCRIPT">
		function myfun()
		{
		var a=document.getElementsByName('gm');
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
	<FORM METHOD="post" action="gyanman.jsp">
		 <h1><B>GYAN-MANTHAN</B></h1><br>
			 <h2>NOTE:-YOU CAN PARTICIPATE IN ANY FOUR EVENTS</h2><BR>
				<div class="button">
				 <input type="checkbox" name="gm" value="CODE HUNT" onclick="return myfun()"> 1.CODE HUNT <br>
				 <input type="checkbox" name="gm" value="COLLAGE" onclick="return myfun()"> 2.COLLAGE<br> 
				 <input type="checkbox" name="gm" value="WASTE-TO-WOW" onclick="return myfun()"> 3.WASTE-TO-WOW<br>
				 <input type="checkbox" name="gm" value="SOFTWARE SCHEMING" onclick="return myfun()"> 4.SOFTWARE SCHEMING<br> 
				 <input type="checkbox" name="gm" value="KEYBOARD COMBATING" onclick="return myfun()">5.KEYBOARD COMBATING<br>
				 <input type="checkbox" name="gm" value="POT POURRI" onclick="return myfun()"> 6.POT POURRI<br>
				 <input type="checkbox" name="gm" value="PRATIBIMB" onclick="return myfun()"> 7.PRATIBIMB<br>
				 <input type="checkbox" name="gm" value="NATYA ARPAN" onclick="return myfun()"> 8.NATYA ARPAN<br>
				 <input type="checkbox" name="gm" value="ART OF START" onclick="return myfun()"> 9.ART OF START<br>
				</div>
				 <input type="submit" value="Register" class="adding">
		 <div>
			<span id="not valid" style="color:red; font-size: xx-large;"></span>
		 </div>
	</FORM>
	</div>
</BODY>
</HTML>