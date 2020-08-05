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
<title>Insert title here</title>
</head>
<body>
<div>
책<br />
<input type="submit" value = "장바구니 담기" onclick="location='cartForm.jsp'"/>
</div>
<form action="add.jsp"> <table align="center"> <tr> <td><select name="product"> <option value="사과">사과</option> <option value="오렌지">오렌지</option> <option value="바나나">바나나</option> <option value="파인애플">파인애플</option> <option value="수박">수박</option> </select></td> <td><input type="submit" value="추가" /></td> </tr> <tr> <td align="center"><a href="checkOut.jsp" />계산</td> </tr> </table> </form> <form action="login.jsp"> <table align="center"> <tr> <td><input type="submit" value="로그아웃"></td> </tr> </table> </form>

 
    <div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link " href="#">Active</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-light mb-3">
	<a class="navbar-brand" href="${ctxPath }">중앙 게시판</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<div class="navbar-nav mr-auto">
			<a class="nav-link nav-item ${current.home }" href="${ctxPath }">Home</a>
			<a class="nav-link nav-item ${current.list }"
				href="${ctxPath }/article/list.do">목록</a>
		</div>

		<div class="navbar-nav ">
			<c:if test="${not empty sessionScope.authUser }">
				<a class="nav-link nav-item ${current.write }"
					href="${ctxPath }/article/write.do">작성</a>
				<a class="nav-link nav-item ${current.logout }"
					href="${ctxPath }/logout.do">로그아웃</a>
				<a class="nav-link nav-item ${current.changePwd }"
					href="${ctxPath }/changePwd.do">암호변경</a>
			</c:if>

			<c:if test="${empty sessionScope.authUser }">
				<a class="nav-link nav-item ${current.join }"
					href="${ctxPath }/join.do">회원가입</a>
				<a class="nav-link nav-item ${current.login }"
					href="${ctxPath }/login.do">로그인</a>
			</c:if>

		</div>
	</div>
</nav>

</body>
</html>