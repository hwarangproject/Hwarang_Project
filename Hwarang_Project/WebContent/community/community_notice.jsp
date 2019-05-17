<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>community</title>
<link rel="stylesheet" href="css/bootstrap.css">
<title>HWARANG PROJECT</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>


<!-- 내가 설정한 스타일 -->
<style type="text/css">
#navBtn {
	position: relative; //
	display: block;
	height: 45px;
	width: 280px;
	margin: 10px 7px;
	padding: 5px 5px;
	font-weight: 700;
	font-size: 15px;
	letter-spacing: 2px;
	color: #383736;
	border: 1.5px #383736 solid;
	border-radius: 4px;
	text-transform: uppercase;
	outline: 0;
	overflow: hidden;
	background: none;
	z-index: 1;
	cursor: pointer;
	transition: 0.08s ease-in;
	-o-transition: 0.08s ease-in;
	-ms-transition: 0.08s ease-in;
	-moz-transition: 0.08s ease-in;
	-webkit-transition: 0.08s ease-in;
}

.fill:hover {
	color: whitesmoke;
}

.fill:before {
	content: "";
	position: absolute;
	background: #ffd1dc;
	bottom: 0;
	left: 0;
	right: 0;
	top: 100%;
	z-index: -1;
	-webkit-transition: top 0.09s ease-in;
}

.fill:hover:before {
	top: 0;
}

.fade:before {
	content: "→";
	position: absolute;
	color: #383736;
	left: 88%;
	opacity: 0;
	-webkit-transition: all 0.2s ease-in;
}

.fade:hover:before {
	left: 91%;
	opacity: 1;
}

.fade:hover {
	border: 0px #fff solid;
	-webkit-transform: scale(1.04, 1.04);
	-webkit-transition: border 0.3s ease-out;
	-webkit-transition: transform 250ms
		cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.arrow {
	text-align: left;
	padding-left: 17px;
}

.arrow:before {
	content: "→";
	position: absolute;
	color: #383736;
	left: 83%;
	opacity: 0;
	-webkit-transition: all 250ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.arrow:hover:before {
	left: 84%;
	opacity: 1;
}

.arrow:hover {
	width: 170px;
}

.slide:after {
	content: "View Story";
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	text-align: center;
	-webkit-transition: all 400ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.slide:before {
	content: "Read it →";
	height: 100%;
	width: 100%;
	position: absolute;
	color: #383736;
	left: -100%;
	opacity: 0;
	-webkit-transition: all 500ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.slide:hover {
	background: #383736;
}

.slide:hover:before {
	left: 0;
	opacity: 1;
	color: #fff;
}

.slide:hover:after {
	left: 100%;
	opacity: 0;
}

.slide.left:hover {
	background: none;
}

.slide.left:before {
	left: 100%;
	color: #383736;
	-webkit-transition: all 425ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.slide.left:hover:before {
	left: 0;
}

.svg {
	-webkit-transition: all 150ms cubic-bezier(0.445, 0.050, 0.550, 0.950);
}

.svg:before {
	position: absolute;
	content: "";
	background: url(https://f.cl.ly/items/3H3A0D1N281a2T280F3o/heist.svg)
		no-repeat center center;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: -1;
	opacity: 0;
	-webkit-transition: all 250ms cubic-bezier(0.230, 1.000, 0.320, 1.000);
}

.svg:after {
	content: "";
	position: absolute;
	background: #d19b26;
	bottom: 0;
	left: 0;
	right: 0;
	top: 100%;
	z-index: -2;
	-webkit-transition: all 250ms cubic-bezier(0.230, 1.000, 0.320, 1.000);
}

.svg:hover {
	color: white;
	border: 0px #d19b26 solid;
}

.svg:hover:before {
	opacity: .8;
}

.svg:hover:after {
	top: 0;
}

<!--
검색-->#fsearch {
	width: 50px;
}

#dsearch {
	width: 250px;
	align: center;
	margin-left: 470px;
}

/* @import url(https://fonts.googleapis.com/css?family=Open+Sans);

body {
	background: #f2f2f2;
	font-family: 'Open Sans', sans-serif;
}

.search {
	width: 100%;
	position: relative;
	display: flex;
}

.searchTerm {
	width: 40%;
	border: 3px solid #ddd;
	border-right: none;
	padding: 15px;
	height: 20px;
	border-radius: 5px 0 0 5px;
	outline: none;
	margin-bottom: 60px;
	margin-left: 160px;
	color: #ddd;
}

.searchTerm:focus {
	color: #ddd;
}

.searchButton {
	width: 40px;
	height: 36px;
	border: 1px solid #ddd;
	background: #ddd;
	text-align: center;
	color: #fff;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	font-size: 20px;
} */

/*Resize the wrap to see the search bar change!*/
.wrap {
	width: 30%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

<!--
기본-->.carousel-inner {
	margin: 10px auto;
	width: 1200px;
	height: 400px;
}

#custom_slider {
	bottom: 70px;
}

#logo {
	width: 200px;
	height: 45px;
}

#custom_pouch {
	display: inline;
}

#Search {
	height: 70px;
}

#SH {
	height: 70px;
}

#bbutton {
	margin-top: 10px;
}

#hrbu {
	width: 1150px;
}

#butag {
	text-decoration: none;
	color: #000000;
}


/*페이지 스타일 */

#listyle
{
list-style: none; display:inline-block; width:3%;
text-decoration: none;

}

#tdpage
{
align: center;

margin-left: -90px;
}

#tbutton
{
align: center;

margin-left: -90px;
}

#pagenum
{
color: #FFB9B9;
}

#subid
{
text-decoration: none;
color: #000000;
}
</style>


</head>

<body>
	<div class="container" id="bbutton">
		<div class="row">
			<table rules="none" style="width: 100%;">
				<tr style="width: 100%;">
					<td style="width: 25%;"><a
						href="community_notice.hr?b_cate_no=1" id="butag"><button
								class="fill" width=25% id="navBtn">공지사항</button></a></td>
					<td style="width: 25%;"><a
						href="community_notice.hr?b_cate_no=2" id="butag"><button
								class="fill" id="navBtn">FAQ</button></a></td>
					<td style="width: 25%;"><a
						href="community_notice.hr?b_cate_no=3" id="butag"><button
								class="fill" id="navBtn">뷰티테스터</button></a></td>
					<td style="width: 25%;"><a
						href="community_notice.hr?b_cate_no=4" id="butag"><button
								class="fill" id="navBtn">자유게시판</button></a></td>
				</tr>
			</table>
		</div>
	</div>


	<div class="container">
		<div class="row">
			<h3 class="text-center"></h3>
			<table class="table table-hover" rules="none">

				<thead>
					<tr>
						<th width=10% class="text-center">번호</th>
						<th width=45% class="text-center">제목</th>
						<th width=15% class="text-center">작성자</th>
						<th width=20% class="text-center">날짜</th>
						<th width=10% class="text-center">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td width=10% class="text-center">${vo.b_no }</td>
							<td width=45% class="text-center">
							<a href="../community/community_detail.hr?b_no=${vo.b_no}&b_cate_no=${b_cate_no}" id="subid">${vo.b_subject }</a></td>
							<td width=15% class="text-center">${vo.name }</td>
							<td width=15% class="text-center">
							<fmt:formatDate value="${vo.b_regdate }" pattern="yyyy-MM-dd" />
							</td>
							<td width=15% class="text-center">${vo.b_hit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>



			<hr></hr>
			<c:if test="${member_no!=0 && b_cate_no==4}">
				<tr>
					<td class="text-right">
					<a href="../community/community_insert.hr?b_cate_no=${b_cate_no }"
						class="btn btn-default pull-right">글쓰기</a></td>
				</tr>
			</c:if>
			<c:if test="${member_no==0 && b_cate_no<4}">
				<tr>
					<td class="text-right">
					<a href="../community/community_insert.hr?b_cate_no=${b_cate_no }"
						class="btn btn-default pull-right">글쓰기</a></td>
				</tr>
			</c:if>
			
			
			<form name="mysearchbar" action="../community/community_find.hr" method="post" id="fsearch">
				<div class="input-group" id="dsearch">
					<input name="q" type="text" class="form-control" placeholder="검색어 입력"/>
					<input type="hidden" value="${b_cate_no}" name="b_cate_no">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-search"
							onclick="document.mysearchbar.submit()"></span>
					</div>
				</div>
			</form>

			<br />

			<form method="get" action="../community/community_notice.hr">
				<input type="hidden" value="${member_no }" name="member_no">
			</form>


			<table class="table" rules="none" id="tbutton">
				<tr>
					<td class="text-center" id="tdpage">
						<ul class="pagination">
							<td class="text-center" align="center">
							<c:if test="${curpage>BLOCK }">
									<li id="listyle"><a href="../community/community_notice.hr?b_cate_no=${b_cate_no }&page=1">
										<font style="color: #FFB9B9;">◀◀</font></a>
									</li>
									<li id="listyle"><a href="../community/community_notice.hr?b_cate_no=${b_cate_no }&page=${startPage-1 }">
										<font style="color: #FFB9B9;">◀</font></a>
									</li>
							</c:if> <c:set var="type" value="" />
							
								<c:forEach var="i" begin="${startPage }" end="${endPage }">
									<c:if test="${curpage==i }">
										<c:set var="type" value="class=active" />
									</c:if>
									<c:if test="${curpage!=i }">
										<c:set var="type" value="" />
									</c:if>
									<li ${type } id="listyle"><a
										href="../community/community_notice.hr?b_cate_no=${b_cate_no }&page=${i }" id="pagenum">${i }</a></li>
								</c:forEach> <c:if test="${endPage<allPage }">
									<li id="listyle"><a
										href="../community/community_notice.hr?b_cate_no=${b_cate_no }&page=${endPage+1 }">
											<font style="color: #FFB9B9;">▶</font>
									</a></li>
									<li id="listyle"><a
										href="../community/community_notice.hr?b_cate_no=${b_cate_no }&page=${allPage }">
											<font style="color: #FFB9B9;">▶▶</font>
									</a></li>
								</c:if>
							</td>
						</ul>
					</td>
				<tr>
			</table>
			

		</div>
	</div>



</body>
</html>