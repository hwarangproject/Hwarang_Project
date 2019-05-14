<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연령별 목록</title>

<style type="text/css">
.scrollbar {
	float: left;
	height: 250px;
	width: 65px;
	overflow-y: scroll;
	margin-bottom: 1px;
}

#style-6::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #FFB9B9;
}

#style-6::-webkit-scrollbar {
	width: 5px;
	background-color: #FFB9B9;
}

#style-6::-webkit-scrollbar-thumb {
	background-color: #FFB9B9;
	background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .2)
		25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .2) 50%,
		rgba(255, 255, 255, .2) 75%, transparent 75%, transparent)
}

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

* {
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
	margin-bottom:10px;
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

<%--랭킹 --%> 
#ranking-slide {
	position: relative;
	width: 1052px;
	height: 338px;
	margin: 10px auto;
  position: relative;
  width: 1052px;
  height: 338px;
  margin: 10px auto;
}

#ranking-slide>:not(a) {
	overflow: hidden;
	white-space: nowrap;
}

#ranking-slide>a {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: 45px;
	height: 60px;
	margin-top: -30px;
	border-radius: 5px;
	opacity: 0;
	-moz-transition: all 0.2s 0s ease;
	-webkit-transition: all 0.2s 0s ease;
	transition: all 0.2s 0s ease;
}

#ranking-slide:hover>a, #ranking-slide>a:hover {
	opacity: 1;
}

#ranking-slide>a:hover {
	background: #fff;
}

#ranking-slide>.prev {
	left: -45px;
	border-radius: 5px 0 0 5px;
}

#ranking-slide>.next {
	right: -45px;
	border-radius: 0 5px 5px 0;
}

[class*="trans0"] li {
	transition: all 0.8s 0s ease-in-out;
}

.trans01 li {
	transform: translateX(-1063px);
}

.trans02 li {
	transform: translateX(0);
}

#ranking-slide>a:before, #ranking-slide>a:after {
	content: "";
	position: absolute;
	left: 50%;
	display: block;
	width: 4px;
	height: 20px;
	background: #ef335f;
}

#ranking-slide>.prev:after, #ranking-slide>.next:before {
	-moz-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
}

#ranking-slide>.prev:before, #ranking-slide>.next:after {
	-moz-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

#ranking-slide>.prev:before, #ranking-slide>.next:before {
	top: 50%;
	margin: -4px 0 0 -4px;
	border-radius: 0 0 32% 32%;
}

#ranking-slide>.prev:after, #ranking-slide>.next:after {
	bottom: 50%;
	margin: 0 0 -4px -4px;
	border-radius: 32% 32% 0 0;
}

#ranking-slide li {
	display: inline-block;
	margin: 0 16px 0 0;
	letter-spacing: 0;
}

#ranking-slide li, #ranking-slide li>a {
	float: none;
	width: 159px;
	height: 159px;
}

#ranking-slide li>a {
	cursor: pointer;
	position: absolute;
	display: block;
	background: #efefef;
	border-radius: 5px;
	transition: all 0.2s 0s ease;
}

#ranking-slide li>a:hover {
	background: #f69;
}

#ranking-slide {
	height: 338px;
	padding: 0;
}

#ranking-slide li:nth-child(n+2):nth-child(-n+5) {
	top: -172px;
}

#ranking-slide li:nth-child(6) {
	margin: 175px 16px 0 -712px;
}

#ranking-slide li:nth-child(n+10):nth-child(-n+15) {
	top: -172px;
	left: 0;
}

#ranking-slide li:nth-child(n+7):nth-child(-n+9), #ranking-slide li:nth-child(12n+17),
	#ranking-slide li:nth-child(12n+18), #ranking-slide li:nth-child(12n+19),
	#ranking-slide li:nth-child(12n+20), #ranking-slide li:nth-child(12n+21)
	{
	margin: 175px 16px 0 0;
}

#ranking-slide li:nth-child(12n+22), #ranking-slide li:nth-child(12n+23),
	#ranking-slide li:nth-child(12n+24), #ranking-slide li:nth-child(12n+25),
	#ranking-slide li:nth-child(12n+26), #ranking-slide li:nth-child(12n+27)
	{
	top: -175px;
}

#ranking-slide li:nth-child(12n+16) {
	margin: 175px 16px 0 -1068px;
}

#ranking-slide li:nth-of-type(12n+4), #ranking-slide li:nth-of-type(12n+8)
	{
	clear: none;
}

#ranking-slide li:first-child, #ranking-slide li:first-child>a {
	width: 336px;
	height: 335px;
	margin: 0 16px 0 0;
}

#ranking-slide {
	counter-reset: number;
}

#ranking-slide li {
	position: relative;
}

#ranking-slide li:before {
	content: counter(number);
	counter-increment: number;
	position: absolute;
	top: 7px;
	left: 7px;
	display: inline-block;
	width: 22px;
	height: 22px;
	line-height: 22px;
	color: #fff;
	background: #f69;
	font-size: 1.2rem;
	text-align: center;
	z-index: 1;
}

#ranking-slide  li:first-child:before {
	width: 25px;
	height: 25px;
	line-height: 25px;
	font-size: 1.5rem;
}

ul, ol {
	margin-top: 0;
	margin-bottom: 10px;
	padding-left: 0px;
}

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus {
    color: #F6F6F6;
    background-color: #ffb9b9;
}

a {
    color: #000000;
    text-decoration: none;
}
</style>
</head>
<body>
<section>
	<div class="container">
		<div class="row">
			<ul class="nav nav-pills">
			  <li class="active">
			  	<a href="#tab-1" data-toggle="tab">10대</a>
			  </li>
			  <li><a href="#tab-2" data-toggle="tab">20대</a></li>
			  <li><a href="#tab-3" data-toggle="tab">30대</a></li>
			  <li><a href="#tab-4" data-toggle="tab">40대</a></li>
			  <li><a href="#tab-5" data-toggle="tab">50대</a></li>
			</ul>
		
			<div class="tab-content well">
			  <div class="tab-pane active" id="tab-1">
					<h2 class="title text-center">10's choice</h2>
					<div id="ranking-slide">
						<ol>
						<c:forEach var="vo" items="${product_10_age }" varStatus="s">
						<c:if test="${s.index%9==0 }">
							<li>
								<a href="../product/product_detail.hr?pno=${vo.product_no }">
									<img src="${vo.product_img }" width="336" height="335">
								</a>
							</li>
						</c:if>
						<c:if test="${s.index%9!=0 }">
							<li>
								<a href="../product/product_detail.hr?pno=${vo.product_no }">
									<img src="${vo.product_img }" width="159" height="159">
								</a>
							</li>
						</c:if>
						</c:forEach>
						</ol>
						<a href="../#" class="prev" onclick="prev()"></a> <a href="../#"
							class="next" onclick="next()"></a>
					</div>
					
					<div class="row">
						<a href="../shop.jsp"> 
							<div class="button-2">
							<div class="eff-2"></div>
								<a href="../shop.jsp"> 더보기 
							</div>
						</a>
					</div>
			  </div>
			  
			  <div class="tab-pane" id="tab-2">
			  	<h2 class="title text-center">20's choice</h2>
					<div id="ranking-slide">
						<ol>
						<c:forEach var="vo" items="${product_20_age }" varStatus="s">
							<c:if test="${s.index<20 }">
								<li>
									<a href="../product/product_detail.hr?pno=${vo.product_no }">
										<img src="${vo.product_img }" width="120" height="120">
									</a>
								</li>
							</c:if>
						</c:forEach>
						</ol>
						<a href="../#" class="prev" onclick="prev()"></a> <a href="../#"
							class="next" onclick="next()"></a>
					</div>
					
					<div class="row">
						<a href="../shop.jsp"> 
							<div class="button-2">
							<div class="eff-2"></div>
								<a href="../shop.jsp"> 더보기 
							</div>
						</a>
					</div>
			  </div>
			  <div class="tab-pane" id="tab-3">
			  	<h2 class="title text-center">30's choice</h2>
					<div id="ranking-slide">
						<ol>
						<li>
							<a href="#">
							</a>
						</li>
						<li>
							<a href="#">
							</a>
						</li>
						<li>
							<a href="#">
							</a>
						</li>
						<li>
							<a href="#">
							</a>
						</li>
						<li>
							<a href="#">
							</a>
						</li>
						<li>
							<a href="#">
							</a>
						</li>
						
						<%-- <c:forEach var="vo" items="${product_30_age }" varStatus="s">
							<c:if test="${s.index<20 }">
								<li>
									<a href="../product/product_detail.hr?pno=${vo.product_no }">
										<img src="${vo.product_img }" width="120" height="120">
									</a>
								</li>
							</c:if>
						</c:forEach> --%>
						</ol>
						<a href="../#" class="prev" onclick="prev()"></a> <a href="../#"
							class="next" onclick="next()"></a>
					</div>
					
					<div class="row">
						<a href="../shop.jsp"> 
							<div class="button-2">
							<div class="eff-2"></div>
								<a href="../shop.jsp"> 더보기 
							</div>
						</a>
					</div>
			  </div>
			  <div class="tab-pane" id="tab-4">
			  	<h2 class="title text-center">40's choice</h2>
					<div id="ranking-slide">
						<ol>
						<c:forEach var="vo" items="${product_40_age }" varStatus="s">
							<c:if test="${s.index<20 }">
								<li>
									<a href="../product/product_detail.hr?pno=${vo.product_no }">
										<img src="${vo.product_img }" width="120" height="120">
									</a>
								</li>
							</c:if>
						</c:forEach>
						</ol>
						<a href="../#" class="prev" onclick="prev()"></a> <a href="../#"
							class="next" onclick="next()"></a>
					</div>
					
					<div class="row">
						<a href="../shop.jsp"> 
							<div class="button-2">
							<div class="eff-2"></div>
								<a href="../shop.jsp"> 더보기 
							</div>
						</a>
					</div>
			  </div>
			  <div class="tab-pane" id="tab-5">
			  	<h2 class="title text-center">50's choice</h2>
					<div id="ranking-slide">
						<ol>
						<c:forEach var="vo" items="${product_50_age }" varStatus="s">
							<c:if test="${s.index<20 }">
								<li>
									<a href="../product/product_detail.hr?pno=${vo.product_no }">
										<img src="${vo.product_img }" width="120" height="120">
									</a>
								</li>
							</c:if>
						</c:forEach>
						</ol>
						<a href="../#" class="prev" onclick="prev()"></a> <a href="../#"
							class="next" onclick="next()"></a>
					</div>
					
					<div class="row">
						<a href="../shop.jsp"> 
							<div class="button-2">
							<div class="eff-2"></div>
								<a href="../shop.jsp"> 더보기 
							</div>
						</a>
					</div>
			  </div>
			</div>
		</div>
	</div>
</section>
	
	<script src="../js/jquery.js"></script>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/star.js"></script>
	<script type="text/javascript">
	var div = document.getElementById('ranking-slide');

	function prev(){
		div.className = 'trans02';
	}

	function next(){
		div.className = 'trans01';
	}
	</script>
	

</body>
</html>