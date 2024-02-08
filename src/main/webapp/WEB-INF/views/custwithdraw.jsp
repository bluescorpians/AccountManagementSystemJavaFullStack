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

<body bgcolor=#ffddaa>
<img src="/images/head4.png"> <br><br>


<form action="/useraccount/withdraw"  method="post">
<table width=100% align=center>
<tr> <td width=''50%''>
<table width=80% border=1 cellspacing=5 cellpadding=6>

<tr> <td colspan=2>Cash Withdraw </td> </tr>
<tr> <td > Enter Your Account Number </td> <td> <input type="text" name="acc_num" id="acc_num" > </td> </tr>
<tr> <td > Enter Your Amount </td> <td> <input type="text" name="amount" id="amount" > </td> </tr>
 
<tr> <td > </td> <td> <input type=submit name=submit  style="height: 45px; width: 150px"> </td> </tr>
</table>
  </td> <td width="50%" > <img src="/images/Banks-1.jpg" style="width:100%;"> </td> </tr>
</table>
</form>


<table width=100%>
<tr height=97%> <td></td> </tr>
</table>
<a href=/customersignin> Logout </a> 

</body>
</html> -->







<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Withdraw</title>
   
</head>
<body>
<style>
    * {
    box-sizing: border-box;
  }
  body {
    margin: 0;
    font-family: sans-serif;
  }
  a {
    color: #666;
    font-size: 14px;
    display: block;
  }
  .login-title {
    text-align: center;
  }
  #login-page {
    display: flex;
  }
  .notice {
    font-size: 13px;
    text-align: center;
    color: #666;
  }
  .login {
    width: 30%;
    height: 100vh;
    background: #FFF;
    padding: 70px;
  }
  .login a {
    margin-top: 25px;
    text-align: center;
  }
  .form-login {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    align-content: center;
  }
  .form-login label {
    text-align: left;
    font-size: 13px;
    margin-top: 10px;
    margin-left: 20px;
    display: block;
    color: #666;
  }
  .input-email,
  .input-password {
    width: 100%;
    background: #ededed;
    border-radius: 25px;
    margin: 4px 0 10px 0;
    padding: 10px;
    display: flex;
  }
  .icon {
    padding: 4px;
    color: #666;
    min-width: 30px;
    text-align: center;
  }
  input[type="email"],
  input[type="password"],
  input[type="text"],
  input[type="number"] {
    width: 100%;
    border: 0;
    background: none;
    font-size: 16px;
    padding: 4px 0;
    outline: none;
  }
  button[type="submit"] {
    width: 100%;
    border: 0;
    border-radius: 25px;
    padding: 14px;
    background: #008552;
    color: #FFF;
    display: inline-block;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    margin-top: 10px;
    transition: ease all 0.3s;
  }
  button[type="submit"]:hover {
    opacity: 0.9;
  }
  .background {
    width: 70%;
    padding: 40px;
    height: 100vh;
    background: linear-gradient(60deg, rgba(158, 189, 19, 0.5), rgba(0, 133, 82, 0.7)), url('https://cdn.pixabay.com/photo/2016/03/09/09/22/workplace-1245776_960_720.jpg') center no-repeat;
    background-size: cover;
    display: flex;
    flex-wrap: wrap;
    align-items: flex-end;
    justify-content: flex-end;
    align-content: center;
    flex-direction: row;
  }
  .background h1 {
    max-width: 420px;
    color: #FFF;
    text-align: right;
    padding: 0;
    margin: 0;
  }
  .background p {
    max-width: 650px;
    color: #1a1a1a;
    font-size: 15px;
    text-align: right;
    padding: 0;
    margin: 15px 0 0 0;
  }
  .created {
    margin-top: 40px;
    text-align: center;
  }
  .created p {
    font-size: 13px;
    font-weight: bold;
    color: #008552;
  }
  .created a {
    color: #666;
    font-weight: normal;
    text-decoration: none;
    margin-top: 0;
  }
  .checkbox label {
    display: inline;
    margin: 0;
  }
</style>

    <div id="login-page">
        <div class="login">
            <h2 class="login-title">Cash Withdraw</h2>
          <p class="notice"></p>
          <form class="form-login" action="/useraccount/withdraw"  method="post">
            <label for="number">Enter A/C No.</label>
            <div class="input-email">
              <i class="fas fa-envelope icon"></i>
              <input type="number" name="acc_num" placeholder="Enter your username" >
            </div>
            <label for="number">Enter Amount</label>
            <div class="input-password">
              <i class="fas fa-lock icon"></i>
              <input type="number" name="amount" placeholder="Enter your amount" required>
            </div>
            <div class="checkbox">
            </div>
            <button type="submit"><i class="fas fa-door-open"></i>Withdraw</button>
            
          </form>
           
            <a href="/customermainpage?acc_num=${anum}"><button type="submit"><i class="fas fa-door-open"></i> Customer Homepage</button></a>
            <a href="/customersignin"><button type="submit"><i class="fas fa-door-open"></i> Logout</button></a>
           
          
        </div>
        <div class="background">
          <h1>Bank of Canada</h1>
        </div>
      </div>
    
</body>
</html>