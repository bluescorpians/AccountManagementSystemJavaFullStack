<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<jsp:include page="./common/customerNavBar.jsp" />
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- Bootstrap core JavaScript-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Page level plugin JavaScript--><script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>

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
 
		

<form name=form1 method="get"  action="/useraccount/fetch/">
<table width=100% align=left>
<tr> <td width=''50%''>
<table width=80% border=1 cellspacing=5 cellpadding=5>
<tr>Enter your Account Number to view your Account details</tr>
<tr> <td > Ac No </td> <td> <input type="text" name="acc_num" id="acc_num"> </td> </tr>

<tr> <td > </td> <td> <input type=submit name=Submit  style="height: 45px; width: 150px"> </td> </tr>
</table>
  </td> <td width="50%" > <img src="/images/Banks-1.jpg" style="width:100%;"> </td> </tr>
</table>
</form>

<table width=100%>
<tr height=90> <td></td> </tr>
</table>

</body>
</html>