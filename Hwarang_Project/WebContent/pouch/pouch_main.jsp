<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#pouch_list {
	color: black;
}
#caption {
	margin-bottom: 15px;
	font-size: 20px;
	font-weight: bold;  
}
#pouch_table {
	margin-bottom: 0px;
}
</style>
</head>
<body>
	<table class="table table-hover" id="pouch_table">
	<caption id="caption">파우치 목록</caption>
	<tr>
		<th>파우치 이름</th>
		<th>파우치 이미지</th>
		<th>파우치 좋아요</th>
		<th>파우치 평점</th>
	</tr>
	<c:forEach var="mpvo" items="${main_pouch_list }" varStatus="i">
		<c:if test="${i.index<6 }">
		<tr>
			<td>${mpvo.pouch_name }</td>
			<td class="text-center">
				<img src="${mpvo.pouch_img }" width="50" height="40">
			</td>
			<td>${mpvo.pouch_like }</td>
			<td>${mpvo.pouch_score }</td>
		</tr>
		</c:if>
	</c:forEach>
	</table>
	<table class="table">
		<tr>
			<td class="text-right in">
				<a href="../pouch/pouch.hr" id="pouch_list">파우치 전체 목록 -></a>
			</td>
		</tr>
	</table>
</body>
</html>