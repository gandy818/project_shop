<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>회원가입 완료</title>
<style>
	.container-fluid {
		background-color:white;
		width:400px;
	}
	
	h4 {
		text-align:center;
	}
</style>
</head>
<body class="bg-light">

<div class="container-fluid shadow p-3">
   	<form>
	  	<div class="form-group">
		    <h4>회원가입 완료.</h2>
	  	</div>
	  	<br />
	  	<br />
	  	<br />
 		<button type="button" class="btn btn-dark btn-lg btn-block" onclick="location='main.jsp'">확인</button>
	</form>
</div>

</body>
</html>