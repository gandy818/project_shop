<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="${ctxPath }/main.jsp">중앙문고</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/shop/poesieAndessay.jsp">시/에세이</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">소설</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">경제/경영</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">자기계발</a>
      </li>
    </ul>
    
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
    </form>
    
    <div class="navbar-nav ">
		<c:if test="${not empty sessionScope.authUser }">
		
			<a class="nav-link nav-item ${current.write }" href="">${authUser.name }님</a>
			
			<a class="nav-link nav-item ${current.logout }" href="${ctxPath }/logout.do">로그아웃</a>
			
			<a class="nav-link nav-item ${current.changePwd }" href="${ctxPath }/changePwd.do">회원정보 수정</a>
			
			<a class="nav-link nav-item ${current.list }" href="${ctxPath }/article/list.do">고객센터</a>
		</c:if>

		<c:if test="${empty sessionScope.authUser }">
			<a class="nav-link nav-item ${current.login }" href="${ctxPath }/login.do">로그인</a>
			
			<a class="nav-link nav-item ${current.join }" href="${ctxPath }/join.do">회원가입</a>
		</c:if>
	</div>
  </div>
</nav>