<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>HWARANG PROJECT</title>

<style type="text/css">
/* Lazy Load Styles */
.card-image {
	display: block;
	min-height: 20rem; /* layout hack */
	background: #fff center center no-repeat;
	background-size: cover;
	filter: blur(3px); /* blur the lowres image */
}

.card-image>img {
	display: block;
	width: 100%;
	opacity: 0; /* visually hide the img element */
}

.card-image.is-loaded {
	filter: none; /* remove the blur on fullres image */
	transition: filter 1s;
}

/* Layout Styles */
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	font-size: 16px;
	font-family: sans-serif;
}

.card-list {
	display: block;
	margin: 1rem auto;
	padding: 0;
	font-size: 0;
	text-align: center;
	list-style: none;
}

.card {
	display: inline-block;
	width: 90%;
	max-width: 20rem;
	margin: 1rem;
	font-size: 1rem;
	text-decoration: none;
	overflow: hidden;
	box-shadow: 0 0 3rem -1rem rgba(0, 0, 0, 0.1);
	transition: transform 0.1s ease-in-out, box-shadow 0.1s;
}

.card:hover {
	transform: translateY(-0.5rem) scale(1.0125);
	box-shadow: 0 0.5em 3rem -1rem rgba(0, 0, 0, 0.5);
}

.card-description {
	display: block;
	padding: 1em 0.5em;
	color: #515151;
	text-decoration: none;
}

.card-description>h2 {
	margin: 0 0 0.5em;
}

.card-description>p {
	margin: 0;
}

/* html {
	background-color: #9fd4e2;
} */
a {
	text-decoration: none;
}

.arrows-div {
	width: 1000px;
	margin: 0 auto;
	padding-top: 70px;
}

.button {
	position: relative;
	margin: 0;
	padding-left: 14px;
	padding-right: 14px;
	padding-top: 5px;
	padding-bottom: 5px;
	background: #FFB9B9;
	color: #ffffff;
	font-size: 20px;
	border-radius: 5px;
}

.button::after {
	content: '';
	position: absolute;
	top: 2.5px;
	width: 0;
	height: 0;
}

.button:hover {
	color: #FFB9B9;
}
/* Arrow Buttons */
/* ------------- */
.next::after, .prev::after {
	border-style: solid;
}
/* Next Button */
/* ----------- */
.next {
	margin-right: 50px;
}

.next::after {
	right: -22px;
	height: 5px;
	top: 2px;
	border-color: transparent transparent transparent #FFB9B9;
	border-width: 12px;
}

.next:hover::after {
	color: #9fd4e2;
}
/* Prev Button */
/* ----------- */
.prev {
	margin-left: 80px;
}

.prev::after {
	left: -22px;
	height: 5px;
	top: 2px;
	border-color: transparent #FFB9B9 transparent transparent;
	border-width: 12px;
}

.prev:hover::after {
	color: #FFB9B9;
}

.page-numbers {
	color: #75797d;
	background-color: #FFB9B9;
	text-decoration: none;
	padding: 10px;
	width: 20px;
	height: 20px;
	font-family: "tahoma";
	font-size: 16px;
	padding-right: 15px;
	padding-left: 15px;
	padding-top: 5px;
	padding-bottom: 5px;
	border-radius: 5px;
}

.page-numbers:hover {
	color: #262f3d;
	background-color: #fff;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
	border-radius: 50px;
}

.current {
	background-color: #999;
	color: #ffb9b9;
	font-family: "tahoma";
	text-decoration: none;
	font-size: 20px;
}

.back-td {
	width: 250px;
	text-align: left;
}

.prev-td {
	width: 250px;
	text-align: right;
}

.paging-td {
	width: 500px;
	text-align: center;
}

.input-sm {
	width: 10em;
}
/* #FFB9B9 핑크 */
.btn-danger {
    color: #000;
    background-color: #f0f0e9;
    border-color: #f0f0e9;
}
.btn-danger:hover, .btn-danger:focus, .btn-danger:active, .btn-danger.active,
	.open .dropdown-toggle.btn-danger {
	color: #fff;
	background-color: #FFB9B9;
	border-color: #FFB9B9
}

.btn-danger:active, .btn-danger.active, .open .dropdown-toggle.btn-danger
	{
	background-image: none
}

.btn-danger.disabled, .btn-danger[disabled], fieldset[disabled] .btn-danger,
	.btn-danger.disabled:hover, .btn-danger[disabled]:hover, fieldset[disabled] .btn-danger:hover,
	.btn-danger.disabled:focus, .btn-danger[disabled]:focus, fieldset[disabled] .btn-danger:focus,
	.btn-danger.disabled:active, .btn-danger[disabled]:active, fieldset[disabled] .btn-danger:active,
	.btn-danger.disabled.active, .btn-danger[disabled].active, fieldset[disabled] .btn-danger.active
	{
	background-color: #d9534f;
	border-color: #d43f3a
}

.btn-danger .badge {
	color: #f0f0e9;
	background-color: #fff
}
</style>

</head>
<body>
	<!--  카드  -->
	<div class="container">
		<div class="row">
			<h2 class="title text-center">POUCH</h2>
			<c:forEach var="vo" items="${list }" varStatus="s">
				<div class="col-sm-4">
					<ul class="card-list">
						<li class="card"><a class=""href="../pouch/pouch_detail.hr?pouch_no=${vo.pouch_no }"
							style="background-image: url(${vo.pouch_img });"> <img
								src="${vo.pouch_img }" alt="${vo.pouch_content }" width="300"
								height="350" />
						</a> <a class="card-description"
							href="../pouch/pouch_detail.hr?pouch_no=${vo.pouch_no }"
							target="_blank">
								<h2>${vo.pouch_name }</h2>
								<p>${mlist[s.index].nickname }</p>
						</a></li>
					</ul>
				</div>
			</c:forEach>
		</div>
		<table class="table">
			<tr>
				<td class="text-center in"  align="center">
					<ul class="pagination pagination-sm" style="padding: 0px">
						<c:if test="${curpage>BLOCK }">
							<li><a href="../pouch/pouch.hr?page=1"> <font
									style="color: #FFB9B9;">◀◀</font>
							</a></li>
							<li><a href="../pouch/pouch.hr?page=${startPage-1 }"> <font
									style="color: #FFB9B9;">◀</font>
							</a></li>
						</c:if>
						<c:set var="type" value="" />
						<c:forEach var="i" begin="${startPage }" end="${endPage }">
							<c:if test="${curpage==i }">
								<c:set var="type" value="class=active" />
							</c:if>
							<c:if test="${curpage!=i }">
								<c:set var="type" value="" />
							</c:if>
							<li ${type }><a href="../pouch/pouch.hr?page=${i }">${i }</a></li>
						</c:forEach>

						<c:if test="${endPage<allPage }">
							<li><a href="../pouch/pouch.hr?page=${endPage+1 }"> <font
									style="color: #FFB9B9;">▶</font></a></li>
							<li><a href="../pouch/pouch.hr?page=${allPage }"> <font
									style="color: #FFB9B9;">▶▶</font>
							</a></li>
						</c:if>
					</ul>
				</td>
				<td class="text-rigth in"  align="right">
					<form method="post" action="../pouch/pouch_find.hr">
						<select name="fs" class="input-sm">
							<option value="nickname">이름</option>
							<option value="pouch_name">제목</option>
							<option value="pouch_content">내용</option>
						</select> 
							<input type=text name=ss size=12 class="input-sm"> 
							<input type=submit value="찾기" class="btn btn-sm btn-danger">
					</form>
				</td>
			</tr>
		</table>
	</div>

	<!--  페이지 -->


</body>
</html>
