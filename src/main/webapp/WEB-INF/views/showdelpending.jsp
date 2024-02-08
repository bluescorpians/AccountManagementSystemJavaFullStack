
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style>
body {
	font-size:20px;
	
}
table{
	font-size:20px;
	
}
</style>

<body bgcolor= #ffddaa>
<img src="/images/head4.png"> <br><br>

<c:set var="count" value="0" scope="page" />
        	<c:forEach var="user" items="${userdetails}">
        	<c:set var="count" value="${count+1}" scope="page" />
        	
        	
<table align=center border=1 width=80% cellpadding=5 cellspacing=5>
        	
<tr>
<td><h3> Account no: ${user.acc_num}</h3> </td>
<td><h3> Accountholder name : ${user.person_name} </h3></td>
<td><h3> Mail id : ${user.email} </h3></td>
<td> <h3> Delete account </h3> </td></tr>
<tr><td>${user.email}</td><td>${user.person_name}</td>  
<td> <button ><a href="/useraccount/accdelete?acc_num=${user.acc_num}">Delete</a></button></td></table></tr>
</table>
</c:forEach>



<a href=/adminlogin> Logout </a> 

<table width=200%>
	
<tr height=300> <td></td> </tr>
</table>


</body>
</html> --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Customer Deletion Request's </title>
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
        
         button[type="submit"]:hover {
    opacity: 0.9;
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
  <a href="/admin/home"><button type="submit"><i class="fas fa-door-open"></i>Admin Home</button></a>
            <a href="/adminlogin"><button type="submit"><i class="fas fa-door-open"></i> Logout</button></a>
<div class="container">
    <h1>Customer Deletion Request's</h1>
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <tr class="table-header">
                    <th class="cell">A/C No.</th>
                    <th class="cell">A/C Name</th>
                    <th class="cell">Email Id</th>
                    <th class="cell">Mobile No</th>
                    <th class="cell">Balance</th>
                    <th class="cell">Delete</th>
                
                </tr>
                
<c:set var="count" value="0" scope="page" />
<c:forEach var="user" items="${love}">
<c:set var="count" value="${count+1}" scope="page" />
                <tr  class="active">
                    <td>${user.acc_num}</td>
                    <td>${user.person_name}</td>
                    <td>${user.email}</td>
                    <td>${user.mobile_num}</td>
                    <td>${user.balance}</td>
                    <td> <button ><a href="/admin/finish?anum=${user.acc_num}">Delete</a></button></td>
                   
                </tr>
              </c:forEach>
               
            </table>
        </div>
    </div>
</div>
</body>
</html>