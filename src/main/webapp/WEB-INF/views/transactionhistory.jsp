
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style>
        body {
            font-size:20px;
        }
        table {
            font-size:20px;
        }
        h1{
        text-align:center;
        }
</style>
</head>
<body bgcolor="#fcffff">
<!-- <img src="/images/head4.png"> <br><br> -->

<h1>Transaction History</h1>
 
    <table align="center" border="1" width="80%" cellpadding="5" cellspacing="5" style="background-color: aliceblue;">
    <tr>
<td><h3>Date Time</h3> </td>
<td><h3> Description </h3></td>
<td><h3> Amount </h3></td>
<td><h3>Type</h3></td>

<!-- <td><h3> Remaining Balance </h3></td> -->
</tr>
<c:set var="count" value="0" scope="page" />
<c:forEach var="user" items="${love}">
<c:set var="count" value="${count+1}" scope="page" />
<tr>
<td>${user.ldt}</td>
<td>${user.desc}</td>
<td>${user.amt}</td>
<td>${user.type}</td>
</tr>
</c:forEach>
</table>
 
    <table width="200%">
<tr height="300"> <td></td> </tr>
</table>
</body>
</html>
