
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      @import url("https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap");

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Montserrat", sans-serif;
      }
      body {
        background: #fec107;
        padding: 0 10px;
      }
      .wrapper {
        max-width: 500px;
        width: 100%;
        background: #fff;
        margin: 50px auto;
        box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.125);
        padding: 30px;
      }

      .wrapper .title {
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 25px;
        color: #fec107;
        text-transform: uppercase;
        text-align: center;
      }

      .wrapper .form {
        width: 100%;
      }

      .wrapper .form .inputfield {
        margin-bottom: 15px;
        display: flex;
        align-items: center;
      }

      .wrapper .form .inputfield label {
        width: 200px;
        color: #757575;
        margin-right: 10px;
        font-size: 14px;
      }

      .wrapper .form .inputfield .input,
      .wrapper .form .inputfield .textarea {
        width: 100%;
        outline: none;
        border: 1px solid #d5dbd9;
        font-size: 15px;
        padding: 8px 10px;
        border-radius: 3px;
        transition: all 0.3s ease;
      }

      .wrapper .form .inputfield .textarea {
        width: 100%;
        height: 125px;
        resize: none;
      }

      .wrapper .form .inputfield .custom_select {
        position: relative;
        width: 100%;
        height: 37px;
      }

      .wrapper .form .inputfield .custom_select:before {
        content: "";
        position: absolute;
        top: 12px;
        right: 10px;
        border: 8px solid;
        border-color: #d5dbd9 transparent transparent transparent;
        pointer-events: none;
      }

      .wrapper .form .inputfield .custom_select select {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        outline: none;
        width: 100%;
        height: 100%;
        border: 0px;
        padding: 8px 10px;
        font-size: 15px;
        border: 1px solid #d5dbd9;
        border-radius: 3px;
      }

      .wrapper .form .inputfield .input:focus,
      .wrapper .form .inputfield .textarea:focus,
      .wrapper .form .inputfield .custom_select select:focus {
        border: 1px solid #fec107;
      }

      .wrapper .form .inputfield p {
        font-size: 14px;
        color: #757575;
      }
      .wrapper .form .inputfield .check {
        width: 15px;
        height: 15px;
        position: relative;
        display: block;
        cursor: pointer;
      }
      .wrapper .form .inputfield .check input[type="checkbox"] {
        position: absolute;
        top: 0;
        left: 0;
        opacity: 0;
      }
      .wrapper .form .inputfield .check .checkmark {
        width: 15px;
        height: 15px;
        border: 1px solid #fec107;
        display: block;
        position: relative;
      }
      .wrapper .form .inputfield .check .checkmark:before {
        content: "";
        position: absolute;
        top: 1px;
        left: 2px;
        width: 5px;
        height: 2px;
        border: 2px solid;
        border-color: transparent transparent #fff #fff;
        transform: rotate(-45deg);
        display: none;
      }
      .wrapper
        .form
        .inputfield
        .check
        input[type="checkbox"]:checked
        ~ .checkmark {
        background: #fec107;
      }

      .wrapper
        .form
        .inputfield
        .check
        input[type="checkbox"]:checked
        ~ .checkmark:before {
        display: block;
      }

      .wrapper .form .inputfield .btn {
        width: 100%;
        padding: 8px 10px;
        font-size: 15px;
        border: 0px;
        background: #fec107;
        color: #fff;
        cursor: pointer;
        border-radius: 3px;
        outline: none;
      }

      .wrapper .form .inputfield .btn:hover {
        background: #ffd658;
      }

      .wrapper .form .inputfield:last-child {
        margin-bottom: 0;
      }

      @media (max-width: 420px) {
        .wrapper .form .inputfield {
          flex-direction: column;
          align-items: flex-start;
        }
        .wrapper .form .inputfield label {
          margin-bottom: 5px;
        }
        .wrapper .form .inputfield.terms {
          flex-direction: row;
        }
      }
    </style>
    <script language="javascript">
      function validate() {
        //alert("testing");
        var x = document.form1.text1.value;
        if (isNaN(x) || x.length != 10) {
          alert("Please enter  10 digit numbers for AcNo");
          return false;
        }

        x = document.form1.text2.value;
        if (x.length < 4) {
          alert("Please enter  at least 4 characters for password");
          return false;
        }

        var y = document.form1.text3.value;
        if (x != y) {
          alert("Please enter  the correct retype password");
          return false;
        }

        x = document.form1.text4.value;
        if (x.length < 3) {
          alert("Please enter  correct person name");
          return false;
        }

        x = document.form1.text6.value;
        if (isNaN(x) || x.length != 10) {
          alert("Please enter  10 digit Mobile Number");
          return false;
        }

        x = document.form1.text7.value;
        var atpos1 = x.indexOf("@");
        var atpos2 = x.indexOf(".");
        //alert(atpos1+ " " + atpos2);
        if (x.length < 8 || atpos1 < 2 || atpos2 < 5) {
          alert("Please enter  correct eMail ID");
          return false;
        }
      }
    </script>
  </head>
  <body>
    <div class="wrapper">

      <div class="title">Create Account</div>
      <div class="form">
        <form name=form1 method="post"  action="/useraccount/save">
        <div class="inputfield">
          <label>Account Number (10digit)</label>
          <input type="hidden" class="input" name="acc_num" value="0" />
        </div>

        <div class="inputfield">
          <label>Name</label>
          <input type="text" class="input" name="person_name" />
        </div>

        <div class="inputfield">
          <label>Address</label>
          <textarea class="textarea" name="address"></textarea>
        </div>

        <div class="inputfield">
          <label>Phone Number</label>
          <input type="text" class="input" name="mobile_num" />
        </div>
        <div class="inputfield">
          <label>Email Address</label>
          <input type="email" class="input" name="email" />
        </div>

        <div class="inputfield">
          <label>Password</label>
          <input type="password" class="input" name="password" />
        </div>
        <div class="inputfield">
          <label>Confirm Password</label>
          <input type="password" class="input" name="repassword" />
        </div>

        <div class="inputfield">
          <label>Deposit Amount</label>
          <input type="number" class="input" name="balance" />
        </div>

        <div class="inputfield">
          <input
            type="submit"
            value="Request to create"
            class="btn"
            name="Login"
            onclick="return validate()"
          />
        </div>
    </form>
 </div>
    </div>
  </body>
</html>





























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


	

<form name=form1 method="post"  action="/useraccount/save">

<table width=80% border=1 cellspacing=5 cellpadding=5 align=center>
<tr> <td colspan=2> Customer Signup </td> </tr>
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

</body>
</html> -->