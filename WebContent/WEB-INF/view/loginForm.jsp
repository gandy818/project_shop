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
<title>로그인</title>
<style>
	.container-fluid {
		background-color:white;
		width:400px;
	}
	
	h1 {
		text-align:center;
	}
	
	h5 {
		text-align:center;
	}
</style>
</head>

<body class="bg-light">

<div class="container-fluid shadow p-3">
	<button type="button" class="btn btn-default" aria-label="Left Align" onclick="location='main.jsp'">
  		<i class="fas fa-chevron-left"></i>
	</button>
<!-- <my:alert /> -->
<h1>중앙문고</h1>
<h5>로그인</h5>
<form action="login.do" method="post">
	<div class="form-group">
		<label for="InputId">아이디</label>
	    <input type="text" name="id" class="form-control input-lg" id="InputId" placeholder="아이디" value="${param.id }">
        <small class="form-text text-muted">
        	<c:if test="${errors.id }">ID를 입력하세요</c:if>
			<c:if test="${errors.idOrPwNotMatch }">아이디 또는 암호가 일치하지 않습니다.</c:if>
		</small>
	</div>
	<div class="form-group">
	    <label for="InputPassword">비밀번호</label>
	    <input type="password" name="password" class="form-control input-lg" id="InputPassword" placeholder="비밀번호" value="${param.password }">
	    <small class="form-text text-muted">
	    	<c:if test="${errors.password }">비밀번호를 입력하세요.</c:if>
	    </small>
	</div>
<input type="submit" class="btn btn-dark" value="로그인" />
</form>
</div>
</body>


</html>