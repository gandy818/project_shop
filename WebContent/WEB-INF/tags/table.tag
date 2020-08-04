<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>


<table class="table">
	<tr>
		<td colspan="4"><a href="write.do">글쓰기</a></td>
	</tr>
 <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
	<c:if test="${articlePage.hasNoArticles() }">
	<tr>
		<td colspan="4">게시글이 없습니다.</td>
	</tr>
	</c:if>
	
	<c:forEach var="article" items="${ articlePage.content}">
	<tr>
		<td>${article.number }</td>
		<td>
			<a href="read.do?no=${article.number}&pageNo=${articlePage.currentPage}">
				<c:out value="${article.title}"></c:out>
			</a>
		</td>
		<td>${article.writer.name}</td>
		<td>${article.readCount}</td>
	</tr>
	</c:forEach>
	</tbody>