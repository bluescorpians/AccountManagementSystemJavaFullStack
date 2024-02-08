<!-- <html>
<head>
<title> Banking Project </title>
</head>
<style>
body {
	font-size:20px;
	
}
table{
	font-size:20px;
	
}
</style>

<script language=javascript>
function validate()
{
		//alert("testing");
	var x=document.form1.text1.value;
	if(isNaN(x)||x.length!=10)
	{
		alert("Please enter  10 digit numbers for AcNo");
		return false;
	}
		
	x=document.form1.text2.value;
	if(x.length < 4)
	{
		alert("Please enter  at least 4 characters for password");
		return false;
	}
	
	var y =document.form1.text3.value;
	if(x!=y)
	{
		alert("Please enter  the correct retype password");
		return false;
	}
	
	x =document.form1.text4.value;
	if(x.length < 3)
	{
		alert("Please enter  correct person name");
		return false;
	}
	
	x=document.form1.text6.value;
	if(isNaN(x)||x.length!=10)
	{
		alert("Please enter  10 digit Mobile Number");
		return false;
	}
	
	x =document.form1.text7.value;
	var atpos1 = x.indexOf("@");
	var atpos2 = x.indexOf(".");
	//alert(atpos1+ " " + atpos2);
	if(x.length < 8||atpos1 < 2|| atpos2 < 5)
	{
		alert("Please enter  correct eMail ID");
		return false;
	}
	
	
}

</script>






<body bgcolor= #ffdaa>
<img src="/images/head4.png"> <br><br>


	

<form name=form1 method="post"  action="/admin/save">

<table width=80% border=1 cellspacing=5 cellpadding=5 align=center>
<tr> <td colspan=2> Create Account </td> </tr>
<tr> <td > AcNo (10digit) </td> <td> <input type=text name=acc_num> </td> </tr>
<tr> <td > Password </td> <td> <input type=password name=password> </td> </tr>
<tr> <td > Retype Password </td> <td> <input type=password name=repassword> </td> </tr>
<tr> <td > Person Name </td> <td> <input type=text name=person_name> </td> </tr>
<tr> <td > Address </td> <td> <textarea name=address rows=4></textarea> </td> </tr>
<tr> <td > MobileNo </td> <td> <input type=text name=mobile_num> </td> </tr>
<tr> <td > Email </td> <td> <input type=text name=email> </td> </tr>
<tr> <td > Deposit Amount </td> <td> <input type=number name=balance> </td> </tr>


<tr> <td></td> <td> <input type=submit name=Login  style="height: 45px; width: 150px" onclick="return validate()"> </td> </tr>

</table>

</form>

<table width=100%>
<tr height=200> <td></td> </tr>
</table>
<a href=/adminlogin> Logout </a> 

</body>
</html>
 -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Create</title>
    <script>
        const signInBtn = document.getElementById("signIn");
const signUpBtn = document.getElementById("signUp");
const fistForm = document.getElementById("form1");
const secondForm = document.getElementById("form2");
const container = document.querySelector(".container");

signInBtn.addEventListener("click", () => {
	container.classList.remove("right-panel-active");
});

signUpBtn.addEventListener("click", () => {
	container.classList.add("right-panel-active");
});

fistForm.addEventListener("submit", (e) => e.preventDefault());
secondForm.addEventListener("submit", (e) => e.preventDefault());

    </script>
    <style>
        :root {
	/* COLORS */
	--white: #e9e9e9;
	--gray: #333;
	--blue: #0367a6;
	--lightblue: #008997;

	/* RADII */
	--button-radius: 0.7rem;

	/* SIZES */
	--max-width: 758px;
	--max-height: 420px;

	font-size: 16px;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
		Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}

body {
	align-items: center;
	background-color: rgb(16, 189, 146);
	/* background: url("https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg"); */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	display: grid;
	height: 100vh;
	place-items: center;
}

.form__title {
	font-weight: 300;
	margin: 0;
	margin-bottom: 1.25rem;
}

.link {
	color: var(--gray);
	font-size: 0.9rem;
	margin: 1.5rem 0;
	text-decoration: none;
}

.container {
	background-color: var(--white);
	border-radius: var(--button-radius);
	box-shadow: 0 0.9rem 1.7rem rgba(0, 0, 0, 0.25),
		0 0.7rem 0.7rem rgba(0, 0, 0, 0.22);
	height: 40rem;
	max-width: var(--max-width);
	overflow: hidden;
	position: relative;
	width: 100%;
}

.container__form {
	height: 100%;
	position: absolute;
	top: 0;
	transition: all 0.6s ease-in-out;
}

.container--signin {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .container--signin {
	transform: translateX(100%);
}

.container--signup {
	left: 0;
	opacity: 0;
	width: 50%;
	z-index: 1;
}

.container.right-panel-active .container--signup {
	animation: show 0.6s;
	opacity: 1;
	transform: translateX(100%);
	z-index: 5;
}

.container__overlay {
	height: 100%;
	left: 50%;
	overflow: hidden;
	position: absolute;
	top: 0;
	transition: transform 0.6s ease-in-out;
	width: 50%;
	z-index: 100;
}

.container.right-panel-active .container__overlay {
	transform: translateX(-100%);
}

.overlay {
	background-color: var(--lightblue);
	background: url("https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg");
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
	left: -100%;
	position: relative;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
	width: 200%;
}

.container.right-panel-active .overlay {
	transform: translateX(50%);
}

.overlay__panel {
	align-items: center;
	display: flex;
	flex-direction: column;
	height: 100%;
	justify-content: center;
	position: absolute;
	text-align: center;
	top: 0;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
	width: 50%;
}

.overlay--left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay--left {
	transform: translateX(0);
}

.overlay--right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay--right {
	transform: translateX(40%);
}

.btn {
	background-color: var(--blue);
	background-image: linear-gradient(90deg, var(--blue) 0%, var(--lightblue) 74%);
	border-radius: 20px;
	border: 1px solid var(--blue);
	color: var(--white);
	cursor: pointer;
	font-size: 0.8rem;
	font-weight: bold;
	letter-spacing: 0.1rem;
	padding: 0.9rem 4rem;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

.form > .btn {
	margin-top: 1.5rem;
}

.btn:active {
	transform: scale(0.95);
}

.btn:focus {
	outline: none;
}

.form {
	background-color: var(--white);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 3rem;
	height: 100%;
	text-align: center;
}

.input {
	background-color: #fff;
	border: none;
	padding: 0.9rem 0.9rem;
	margin: 0.5rem 0;
	width: 100%;
}

@keyframes show {
	0%,
	49.99% {
		opacity: 0;
		z-index: 1;
	}

	50%,
	100% {
		opacity: 1;
		z-index: 5;
	}
}

    </style>
<head>
    <body>
        
<div class="container right-panel-active">
	<!-- Sign Up -->
	<div class="container__form container--signup">
		<form name=form1 method="post"  action="/admin/save" class="form" id="form1">
			<h2 class="form__title">Create Account</h2>
			<input type="hidden" placeholder="AcNo" class="input" name="acc_num" value="0" />
			<input type="text" placeholder="Person Name" class="input" name="person_name" />
            <input type="text" placeholder="Mobile Number" class="input" name="mobile_num"/>
			<input type="email" placeholder="Email" class="input" name="email" />
            <input type="password" placeholder="Password" class="input" name="password"/>
            <input type="password" placeholder="Confirm Password" class="input" name="repassword" />
             <input type="text" placeholder="Address" class="input" name="address" />
			<input type="number" placeholder="Deposit Amount" class="input" name="balance" />
			<button class="btn">Sign Up</button>
		</form>
	</div>

	<!-- Sign In
	<div class="container__form container--signin">
		<form action="/customersignin" class="form" id="form2">
			<h2 class="form__title">Sign In</h2>
			<input type="email" placeholder="Email" class="input" />
			<input type="password" placeholder="Password" class="input" />
			<a href="#" class="link">Forgot your password?</a>
			<button class="btn">Sign In</button>
		</form>
	</div> -->

	<!-- Overlay -->
	<div class="container__overlay">
		<div class="overlay">
			<div class="overlay__panel overlay--left">
				<!-- <a href="/customersignin"><button class="btn" id="signIn">Sign In</button></a> -->
			</div>
			<div class="overlay__panel overlay--right">
				<button class="btn" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>
    </body>
</head>
</html>