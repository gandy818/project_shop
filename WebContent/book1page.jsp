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


</body>
</html>