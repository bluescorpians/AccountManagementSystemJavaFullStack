<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Passwords</title>
</head>
<body>
<h2>Apply for </h2>
<h1>Forget Password</h1>
<form action="/useraccount/forgetpsd" method=post>
AC/No : <input type="text" name="anum"/>
<br/>
<br/>
Registered Email : <input type="email" name="pd"/>
<br/>
<button>Submit</button>
</form>
<br/>
<br/>
<hr>
<h1>Check Status if Already Applied</h1>
<br/>
<form action="/useraccount/checkstatus" >
AC/No : <input type="text" name="anum"/>
<button>check Status</button>
</form>
</body>
</html>