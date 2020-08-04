<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${errors.id }">


	<div class="alert alert-danger alert-dismissible fade show" role="alert">
		아이디를 입력하세요
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>

</c:if>

<c:if test="${errors.idOrPwNotMatch }">

	<div class="alert alert-danger alert-dismissible fade show" role="alert">
		아이디와 암호가 일치하지 않습니다.
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>

	

</c:if>

<c:if test="${errors.password }">
	
	<div class="alert alert-danger alert-dismissible fade show" role="alert">
		암호를 입력하세요.
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>

</c:if>