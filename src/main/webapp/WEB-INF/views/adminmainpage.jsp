<%-- 



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>

    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

body {
  background-color: #f3ce5d;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  text-align: center;

  
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
  border-radius: 30px;
  box-shadow: #22262e;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
  text-align: center;
  
}

th:first-child {
  border-top-left-radius:20px;
  color: white;
  background-color: #ffbf00;
  

}
 
th:last-child {
  border-top-right-radius:20px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
 
}
 
tr:hover td {
  /* background:#4E5066; */
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  /* background:#4E5066; */
}

tr:last-child td:first-child {
  border-bottom-left-radius:20px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:20px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

/* th.text-left {
  text-align: left;
} */

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}

button {
  --primary-color: #ffbf00;
  --secondary-color: #fff;
  --hover-color: #111;
  --arrow-width: 10px;
  --arrow-stroke: 2px;
  box-sizing: border-box;
  border: 0;
  border-radius: 20px;
  color: var(--secondary-color);
  padding: 1em 1.8em;
  background: var(--primary-color);
  display: flex;
  transition: 0.2s background;
  align-items: center;
  gap: 0.6em;
  font-weight: bold;
  margin: auto;
}

button .arrow-wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
}

button .arrow {
  margin-top: 1px;
  width: var(--arrow-width);
  background: var(--primary-color);
  height: var(--arrow-stroke);
  position: relative;
  transition: 0.2s;
}

button .arrow::before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  border: solid var(--secondary-color);
  border-width: 0 var(--arrow-stroke) var(--arrow-stroke) 0;
  display: inline-block;
  top: -3px;
  right: 3px;
  transition: 0.2s;
  padding: 3px;
  transform: rotate(-45deg);
}

button:hover {
  background-color: var(--hover-color);
  /* background-color: pink; */
}

button:hover .arrow {
  background: var(--secondary-color);
}

button:hover .arrow:before {
  right: 0;
}

a{
    text-decoration: none;
    color: white;
}

    </style>
</head>
<body>
    

        <div class="table-title">
        <h3>ADMIN PANEL</h3>
welcome ${uname}
        </div>
        <form method="post">
        <table class="table-fill">
        <thead>
        <tr>
        <th class="text-left">SERVICES</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <tr>
        <td class="text-left">
          <button>
            <a href="/admin/fetch"> 
            Customer Account Details
            </a>
            <div class="arrow-wrapper">
                <div class="arrow"></div>
        
            </div>
        </button>
          
          
          </td>
        </tr>
        <tr>
        <td class="text-left">
          
          <button>
            <a href="/admincreate"> 
            Create New customer Account
        </a>
            <div class="arrow-wrapper">
                <div class="arrow"></div>
        
            </div>
        </button>
          </td>

        </tr>

        <tr>
        <td class="text-left">
          
          <button>
            <a href="/admin/approve">
            Customer Approval Pending
        </a>
            <div class="arrow-wrapper">
                <div class="arrow"></div>
        
            </div>
        </button>
          
          
          
         </td>
        </tr>
        <tr>
        <td class="text-left">
          
          <button>
            <a href="/admin/dpending">
            Deletion Approval Pending
        </a>
            <div class="arrow-wrapper">
                <div class="arrow"></div>
        
            </div>
        </button>
          
          
          
         </td>
        </tr>
        </tbody>
        </table>
        </form>
       <form action="/homepage" name="logoutForm"><input type="submit" value="Logout"></form> 

          </body>
</html>





















<!-- <html>
<head>
<title> Banking Project </title>
</head>
<style>
table{
	font-size:30px;
}
</style>
<body bgcolor= #ffdaa>


<img src="/images/head4.png"> <br><br><br><br>

<table width=40% align=center border=5 bgcolor= pink>
<tr><td> <h2 align=center> Admin Main Page </h2> </td> </tr>
<tr><form method="post"><td><a href="/admin/fetch"> Account Details</a> </td></form> </tr>

<tr><td><a href="/admincreate"> Create New Account  </a></td> </tr>

<tr><td><a href="/admin/approve"> Approval Pending  </a></td> </tr>


</table>
<form action="/admin/logout" name="logoutForm"><input type="submit" value="Logout"></form>


<br><br><br><br><br><br><br>

</body>
</html> --> --%>



<!-- <html>
<head>
<title> Banking Project </title>
</head>
<style>
table{
	font-size:30px;
}
</style>
<body bgcolor= #ffdaa>


<img src="/images/head4.png"> <br><br><br><br>

<table width=40% align=center border=5 bgcolor= pink>
<tr><td> <h2 align=center> Admin Main Page </h2> </td> </tr>
<tr><form method="post"><td><a href="/admin/fetch"> Account Details</a> </td></form> </tr>

<tr><td><a href="/admincreate"> Create New Account  </a></td> </tr>

<tr><td><a href="/admin/approve"> Approval Pending  </a></td> </tr>


</table>
<a href=/adminlogin> Logout </a> 

<br><br><br><br><br><br><br>

</body>
</html>

 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin MainPage</title>

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
  input[type="text"] {
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

  .login{
    /* margin: 200px; */
    /* border: 2px solid red; */
    /* padding-top: 200px; */

  }
  .sublogin{
    /* border: 2px solid rgba(128, 128, 128, 0.952); */
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius: 20px;
    padding: 2px 2px;
    height: 520px;
    padding-top: 10px;
    padding-left: 10px;
    padding-right: 10px;

  }
</style>
    <div id="login-page">
        <div class="login">
        <h1>Admin Dashboard	</h1>
         <div class="sublogin">
            <a href="/admin/fetch"><button type="submit"><i class="fas fa-door-open"></i>Account Details</button></a>
            <a href="/admincreate"><button type="submit"><i class="fas fa-door-open"></i> Create Customer Account</button></a>
            <a href="/admin/approve"><button type="submit"><i class="fas fa-door-open"></i> Approval Pending</button></a>
            <a href="/admin/dpending"><button type="submit"><i class="fas fa-door-open"></i> Deletion Approval Pending</button></a>
            <a href="/admin/forgetpassword"><button type="submit"><i class="fas fa-door-open"></i> Forget Password Request Pending</button></a>
            <a href="/adminlogin"><button type="submit"><i class="fas fa-door-open"></i> Logout</button></a>
        </div>
          
        </div>
        <div class="background">
          <h1>Bank of Canada</h1>
        </div>
      </div>
    
</body>
</html>