<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>community</title>

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
	border: 2px #383736 solid;
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
	background: #383736;
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

#fsearch
{
	width:50px;
}

.wrap {
	width: 30%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
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
</style>


</head>
<body>
	<div class="container">
		<div class="row">
			<table rules="none" style="width: 100%;">
				<tr style="width: 100%;">
					<td style="width: 25%;"><button class="fill" width=25% id="navBtn">문의사항</button></td>
					<td style="width: 25%;"><button class="fill" id="navBtn">화장법</button></td>
					<td style="width: 25%;"><button class="fill" id="navBtn">화장품 추천</button></td>
					<td style="width: 25%;"><button class="fill" id="navBtn">기타</button></td>
				</tr>
			</table>
		</div>
	</div>


	<!-- <div style="border: 1px solid gold; float: left; width: 25%;">
첫번째 영역
</div>
<div style="border: 1px solid red; float: left; width: 25%;">
두번째 영역
</div>
<div style="border: 1px solid blue; float: left; width: 25%;">
세번째 영역 
</div> 
<div style="border: 1px solid blue; float: left; width: 25%;">
세번째 영역 
</div>  -->



	<div class="container">
		<div class="row">
			<h3 class="text-center"></h3>
			<table class="table table-hover" rules="none">

				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>2</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>3</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>4</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>5</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>6</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>7</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>8</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>9</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>

					<tr>
						<td>10</td>
						<td>기초 세안법</td>
						<td>관리자</td>
						<td>2019.04.18</td>
						<td>0</td>
					</tr>



				</tbody>
			</table>
			
			<form name="mysearchbar" action="/search" method="get" id="fsearch">
				<div class="input-group">
					<input name="q" type="text" class="form-control" placeholder="검색어 입력"/>
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-search"
							onclick="document.mysearchbar.submit()"></span>
					</div>
				</div>
			</form>
			
			<br />

			<table class="table" rules="none">

				<!-- 	<tr>
					<td class="text-center">
						<div class="wrap">
						<div class="search">
							<input type="text" class="searchTerm"
								placeholder="What are you looking for?">
							<button type="submit" class="searchButton">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
					</td>
				</tr> -->

				<tr>
					<td class="text-right">
						<a href="#" class="btn btn-default pull-right">글쓰기</a>
					</td>
				</tr>
			</table>

			<table class="table" rules="none">
				<tr>
					<td class="text-center">
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</td>
				<tr>
			</table>

		</div>
	</div>
	
	<script src="js/jquery-3.1.1.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>