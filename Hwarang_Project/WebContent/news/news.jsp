<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table">
				<c:forEach var="vo" items="${news_list }">
					<tr>
						<td width=30% class="text-center" rowspan="2">
							<img src="${vo.url }" width=180 height=150>
						</td>
						<td class="text-center">${vo.title }(${vo.author })</td>
					</tr>
					<tr>
						<td>${vo.description }</td>
					</tr>
					<tr>
						<td class="text-right" colspan="2">
							<a href="${vo.link }">보러가기</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>






