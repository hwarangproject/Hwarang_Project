<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>브랜드</title>

<style type="text/css">
#features_items_custom {
	margin-top: -20px;
}

.star-rating {
	background: url('images/product-details/grade_final_forlist.png')
		repeat-x;
	width: 104px;
	height: 20px;
	display: block;
	position: relative;
	overflow: hidden;
}

.star-rating-percentage {
	background: url(images/product-details/grade_final_forlist.png) repeat-x;
	background-position: 0 100%;
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	height: 20px;
}

<%--버튼 --%> 
.intro {
	width: 100%;
	height: 30px;
}

.intro h1 {
	font-family: 'Oswald', sans-serif;
	letter-spacing: 2px;
	font-weight: normal;
	font-size: 14px;
	color: #222;
	text-align: center;
	margin-top: 10px;
}

.intro a {
	color: #e74c3c;
	font-weight: bold;
	letter-spacing: 0;
}

.intro img {
	width: 20px;
	heght: 20px;
	margin-left: 5px;
	margin-right: 5px;
	position: relative;
	top: 5px;
}

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

#container {
	width: 715px;
	height: 230px;
	margin: 0px auto;
}

.button-2 {
	width: 140px;
	height: 50px;
	border: 2px solid #FFB9B9;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin-top: 15px;
	margin-bottom: 10px;
	margin-left: 980px;
}

.button-2 a {
	font-family: arial;
	font-size: 16px;
	color: #FFB9B9;
	text-decoration: none;
	line-height: 50px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-2 {
	width: 140px;
	height: 50px;
	top: -50px;
	background: #FFB9B9;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-2:hover .eff-2 {
	top: 0;
}

.button-2:hover a {
	color: #fff;
}

ul, ol {
	margin-top: 0;
	margin-bottom: 10px;
	padding-left: 0px;
}

<%--일자 바 --%> 
.brand_search_area[_ngcontent-c8] {
	margin: 30px 0 27px;
	position: relative;
	min-height: 30px;
	padding: 0 0 18px;
	border-bottom: 4px solid #f0adad;
}

.brand_search_area[_ngcontent-c8] ruler-small-tab[_ngcontent-c8] {
	display: block;
	margin-left: -20px;
}

<%--브랜드 가나다 버튼 --%> 
.brand_sorting[_ngcontent-c8] .filter[_ngcontent-c8] {
	display: inline-block;
	min-width: 30px;
	height: 45px;
	margin-left: 5px;
}

button {
	outline: none;
	border: 0;
	background: transparent;
	cursor: pointer;
	align-items: flex-start;
	text-align: center;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	font-size: 45px;
	color: #ffeae8;
}

.brand_sorting[_ngcontent-c8] .filters[_ngcontent-c8]:active {
	color: #FFB9B9;
	font-weight: 600;
	font-size: 45px;
}

<%--브랜드 로고 사진 --%> 
li{
	display: block;
	width: 20%;
	padding: 0 0 0px 0px;
	box-sizing: border-box;
	float: left;
}
</style>
</head>
<body>
<section>
	<div class="has_banner header_active">
		<div class="container">
			<div _ngcontent-c8="" class="brand_search_area">
				<h1 style="color: #FFB9B9">BRAND</h1>
				<ruler-small-tab _ngcontent-c8="" _nghost-c10="">
				</ruler-small-tab>
			</div>
			<div _ngcontent-c8="" class="filters">
				<button _ngcontent-c8="" class="filter" type="button">가나다.
					&nbsp;&nbsp;&nbsp;&nbsp;</button>

				<button _ngcontent-c8="" class="filter active" type="button">가</button>
				<button _ngcontent-c8="" class="filter" type="button">나</button>
				<button _ngcontent-c8="" class="filter" type="button">다</button>
				<button _ngcontent-c8="" class="filter" type="button">라</button>
				<button _ngcontent-c8="" class="filter" type="button">마</button>
				<button _ngcontent-c8="" class="filter" type="button">바</button>
				<button _ngcontent-c8="" class="filter" type="button">사</button>
				<button _ngcontent-c8="" class="filter" type="button">아</button>
				<button _ngcontent-c8="" class="filter" type="button">자</button>
				<button _ngcontent-c8="" class="filter" type="button">차</button>
				<button _ngcontent-c8="" class="filter" type="button">카</button>
				<button _ngcontent-c8="" class="filter" type="button">타</button>
				<button _ngcontent-c8="" class="filter" type="button">파</button>
				<button _ngcontent-c8="" class="filter" type="button">하</button>

				<button _ngcontent-c8="" class="filter" type="button"
					style="font-size: 50px">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABC.</button>
			</div>
		</div>
	</div>
	<div class="row" style="margin-left: 150px"></div>
	<div _ngcontent-c8="" class="brand_wrap ">
		<ul _ngcontent-c8="" class="brand_logolst">
			<li _ngcontent-c8="">
				<a _ngcontent-c8="" href=""> 
					<img _ngcontent-c8="" alt="MOIA" src="images/shop/chanel.png" width=180px height=120px>
				</a>
			</li>
			<li _ngcontent-c8="">
				<a _ngcontent-c8="" href=""> 
					<img _ngcontent-c8="" alt="MOIA" src="images/shop/chanel.png" width=180px height=120px>
				</a>
			</li>
			
			<li _ngcontent-c8="">
				<a _ngcontent-c8="" href=""> 
					<img _ngcontent-c8="" alt="MOIA" src="images/shop/chanel.png" width=180px height=120px>
				</a>
			</li>
			
			<li _ngcontent-c8="">
				<a _ngcontent-c8="" href=""> 
					<img _ngcontent-c8=""  alt="MOIA" src="images/shop/chanel.png" width=180px height=120px>
				</a>
			</li>
			
			<li _ngcontent-c8="">
				<a _ngcontent-c8="" href=""> 
					<img _ngcontent-c8=""  alt="MOIA" src="images/shop/chanel.png" width=180px height=120px>
				</a>
			</li>
			
		</ul>
	</div>
 
	</section>
	
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>


</body>
</html>