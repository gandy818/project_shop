<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>Insert title here</title>
<style>
#r {
	text-align: left;
}

.thead-light {
	text-align: center;
}

#ex1 {
	width: 150px;
	text-align: center;
	box-sizing: border-box
}

#ex2 {
	width: 800px;
	text-align: left;
	box-sizing: border-box
}

#ex3 {
	width: 500px;
	text-align: center;
	box-sizing: border-box
}

#ex4 {
	width: 400px;
	text-align: center;
	box-sizing: border-box
}

#ex5 {
	width: 100px;
	text-align: center;
	box-sizing: border-box
}

#ex6 {
	text-align: right;
	border-bottom: solid white
}
</style>
</head>

<body>
	<my:navbar />

	<h1>
		<br />QnA게시판
	</h1>
	<table class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">번호</th>
				<th scope="col" id="r">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일자</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>

		<tbody>
			<c:if test="${articlePage.hasNoArticles() }">
				<tr>
					<td colspan="4">게시글이 없습니다.</td>
				</tr>
			</c:if>

			<c:forEach var="article" items="${articlePage.content}">
				<tr>
					<th id="ex1">${article.number }</th>
					<td id="ex2" class="t"><a
						href="read.do?no=${article.number}&pageNo=${articlePage.currentPage}">
							<c:out value="${article.title}"></c:out>
					</a></td>
					<td id="ex3">${article.writer.name}</td>
					<td id="ex4">${article.regDateCustom}</td>
					<td id="ex5">${article.readCount}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" id="ex6"><a class="btn btn-secondary"
					href="write.do" role="button">글작성</a></td>
			</tr>

			<%--pagination --%>
			<tr>
				<td colspan="4">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">

							<li class="page-item"><c:if
									test="${(articlePage.startPage - 5) < 0}">
									<a class="page-link"
										href="list.do?pageNo=${articlePage.startPage}">Previous</a>
								</c:if> <c:if test="${(articlePage.startPage - 5) > 0}">
									<a class="page-link"
										href="list.do?pageNo=${articlePage.startPage - 5}">Previous</a>
								</c:if></li>


							<c:forEach var="pNo" begin="${articlePage.startPage}"
								end="${articlePage.endPage }">
								<li class="page-item"><a class="page-link"
									href="list.do?pageNo=${pNo}">${pNo}</a></li>
							</c:forEach>

							<li class="page-item"><c:if
									test="${(articlePage.startPage + 5) <= (articlePage.totalPages)}">
									<a class="page-link"
										href="list.do?pageNo=${articlePage.startPage + 5}">Next</a>
								</c:if> <c:if
									test="${(articlePage.startPage + 5) > (articlePage.totalPages)}">
									<a class="page-link"
										href="list.do?pageNo=${articlePage.totalPages}">Next</a>
								</c:if></li>

						</ul>
					</nav>
				</td>
			</tr>
		</tbody>

	</table>
</body>
</html>
