<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
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
<title>시/에세이</title>
<script>
	$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').trigger('focus')
	})
</script>
<style>
		
	.btn {cursor:pointer;}
	
	 a:link { color: red; text-decoration: none;}
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: black; text-decoration: underline;}
	 
</style>
</head>
<body>

<my:navbar />

<h3>시</h3>
<div class="container">
 <img onclick="clickBtn();" class="btn" data-toggle="modal" data-target="#staticBackdrop" src="images/누구나 시 하나쯤 가슴에 품고 산다.jpg" height="200">
 	<p>
	   	<small style="text-align:center">
	    	<a href="" data-toggle="modal" data-target="#staticBackdrop"><strong>누구나 시 하나쯤 가슴에 품고 산다.</strong></a> <br />
	    	김서경 저 | 메이븐 | 2019.07.01 <br />
	    	가격 : 13,500원
	   	</small>
   	</p>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">누구나 시 하나쯤 가슴에 품고 산다.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	
       	<img src="images/누구나 시 하나쯤 가슴에 품고 산다.jpg" align="left" hspace="10" height="200">
      
       	<strong>책 소개</strong> <br />
       	<small>
       		<p>
       		지금 가슴에 품고 있는 시는 무엇인가요?

			시가 늘 곁에 있었기에, 하늘의 별을 바라볼 수 있었고 발밑의 꽃을 잊지 않을 수 있었다고 말하는 30년 경력의 
			출판 에디터, 《서른 살엔 미처 몰랐던 것들》의 저자 김선경이 자신의 삶을 뻔한 결말로부터 구해 준 고마운 
			시들에 대해 이야기하는 『누구나 시 하나쯤 가슴에 품고 산다』. ‘아 힘들다’ 소리가 나올 때마다 어떤 시의 한 
			구절을 떠올리며 힘을 내곤 했던 저자가 직접 고른 101편의 시를 담고 있다. 삶의 고단함이야 서로 뻔히 아는 
			것. 나는 이렇게 살아왔노라 대신 나는 이런 시를 읽어 왔다고 고백한다면 더 멋지지 않을까 하는 생각에서 출
			발한 책으로, 그동안 아껴 온 가슴속 시를 전달하며 독자들 역시 저마다 품은 가슴속 시를 함께 나누면서 서로
			의 어깨를 가만 두드려 주기를 기대하고 있다.
			</p>
       	</small> <br /><br />
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-success">장바구니 담기</button>
        <button type="button" class="btn btn-danger">결제</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>