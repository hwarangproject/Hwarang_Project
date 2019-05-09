<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.blog-card p:first-of-type:before {
  content: "";
  position: absolute;
  height: 5px;
  background: #5ad67d;
  width: 60px;
  top: -0.75rem;
  border-radius: 3px;
}
.blog-card .description h1 {
  line-height: 1;
  margin: 0;
  font-size: 1.5rem;
}
.blog-card p:first-of-type {
  margin-top: 1.25rem;
  font-size: 13px;
}
</style>
</head>
<body>
	<c:forEach var="nvo" items="${newsList }" varStatus="n">
		<c:if test="${n.index<2 }">
			<div class="blog-card">
				<div class="meta">
					<div class="photo" style="background-image: url(${nvo.url })"></div>
				</div>
				
				<div class="description">
					<h1>${nvo.title }</h1>
					<h2>${nvo.author }</h2>
					<p>${nvo.description }</p> 
					<p class="read-more">
						<a href="${nvo.link }">보러가기</a>
					</p>
				</div>
			</div>
		</c:if>
	</c:forEach>
</body>
</html>