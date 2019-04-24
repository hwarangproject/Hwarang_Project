<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../Hwarang/css/bootstrap.min.css">
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">WebSiteName</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="main.do">Home</a></li>
			<li><a href="member.do">회원가입</a></li>
			<li><a href="board.do">커뮤니티</a></li>
			<li><a href="#">마이페이지</a></li>
		</ul>
	</div>
	</nav>
	<jsp:include page="${main_jsp}"></jsp:include>
</body>
</html>