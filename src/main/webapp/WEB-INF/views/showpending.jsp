
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
<html>

<head>

    <style>

        body {

            font-size:20px;

        }

        table {
            font-size:20px;

        }

    </style>

</head>

<body bgcolor="#fcffff">

    <img src="/images/head4.png"> <br><br>
 
    <table align="center" border="1" width="80%" cellpadding="5" cellspacing="5" style="background-color: aliceblue;">

        <c:set var="count" value="0" scope="page" />

        <c:forEach var="user" items="${love}">

            <c:set var="count" value="${count+1}" scope="page" />

            <tr>

                <td><h3> Account no: </h3> </td>

                <td><h3> Accountholder name </h3></td>

                <td><h3> Mobile number </h3></td>

                <td><h3> Mail id </h3></td>

                <td> <h3> Balance </h3> </td>

                <td> <h3> Delete account </h3> </td>

            </tr>

            <tr>

                <td>${user.acc_num}</td>

                <td>${user.person_name}</td>

                 <td>${user.mobile_num}</td>

                <td>${user.email}</td>

                <td>${user.balance}</td>

                <td><button ><a href="/admin/appr?acc_num=${user.acc_num}">Approve</a></button></td>
                <td><button ><a href="/admin/deny?acc_num=${user.acc_num}">Deny</a></button></td>

            </tr>

        </c:forEach>

    </table>
 
    <table width="200%">

        <tr height="300"> <td></td> </tr>

    </table>

</body>

</html>


 --%>

  <html>
  <head lang="en">
      <meta charset="UTF-8">
      <title>Table</title>
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

      </style>
  </head>
  <body>
    
  <div class="container">
      <h1>Account Details</h1>
      <div class="row">
          <div class="col-md-12">
              <table class="table">
                  <tr class="table-header">
                      <th class="cell">A/C No.</th>
                      <th class="cell">A/C Name</th>
                      <th class="cell">Email Id</th>
                      <th class="cell">Mobile No</th>
                      <th class="cell">Balance</th>
                      <th class="cell">Approve</th>
                      <th class="cell">Deny</th>
                  </tr>
                  
  <c:set var="count" value="0" scope="page" />
  <c:forEach var="user" items="${love}">
  <c:set var="count" value="${count+1}" scope="page" />
                  <tr  class="active">
                      <td>${user.acc_num}</td>
                      <td>${user.person_name}</td>
                      <td>${user.email}</td>
                      <td>${mobile_num}</td>
                      <td>${balance}</td>
                      <td> <button ><a href="/admin/appr?acc_num=${user.acc_num}">Approve</a></button></td>
                      <td> <button ><a href="/admin/deny?acc_num=${user.acc_num}">Deny</a></button></td>
                  </tr>
                </c:forEach>
                
              </table>
          </div>
      </div>
  </div>
  </body>
  </html>

