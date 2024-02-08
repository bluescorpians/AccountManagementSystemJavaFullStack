<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
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


<body bgcolor= #ffdaa>

<img src="/images/head4.png"> <br><br>




<table align=center border=1 width=80% cellpadding=5 cellspacing=5>

<tr><td>Account Number</td><td>${userdetails.acc_num}</td></tr><tr><td>Name</td><td>${userdetails.person_name}<tr><td>Balance</td><td>${userdetails.balance}</td></tr>
</table>


<a href=custmainpage.html> Back </a> 

<table width=100%>

<tr height=200> <td></td> </tr>

</table>

<a href=/customersignin> Logout </a> 

</body>

</html> --%>







<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Account Details</title>
    <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
      body{

       background-color: rgb(16, 189, 146);
      }
      h1{
            font-size:30px;
        }
        /*Table Style One*/
        .table .table-header{
          background-color: rgb(7, 241, 183);
                      color:#333;
        }
        .table .table-header .cell{
            padding:20px;
        }
        @media screen and (max-width: 640px){
            table {
                overflow-x: auto;
                display: block;
            }
            .table .table-header .cell{
                padding:20px 5px;
            }
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
    </style>
</head>
<body>
  <a href="/customersignin"><button type="submit"><i class="fas fa-door-open"></i> Logout</button></a>
<div class="container">
    <h1>Account Details</h1>
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <tr class="table-header">
                    <th class="cell">Balance</th>
                </tr>
                <tr  class="active">
                    <td>Rs.${user.balance}</td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>