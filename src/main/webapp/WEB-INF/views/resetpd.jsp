<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Reset Your Password</h1>
<form action="/admin/resetpd">
A/C No: <input type="number" name="anum"/><br/><br/>
New Password : <input type="text" name="pd"/><br/><br/>
Confirm Password : <input type="password" name="pd1"/><br/><br/>
<button>Submit</button>
</form>
</body>
</html>