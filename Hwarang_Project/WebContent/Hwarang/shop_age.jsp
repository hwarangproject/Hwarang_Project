<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>연령별 목록</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<style type="text/css">
.carousel-inner {
	margin: 10px auto;
	width: 1200px;
	height: 400px;
}

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

#logo {
	width: 200px;
	height: 45px;
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

<%--랭킹 --%> 
#ranking-slide {
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
	position: relative;
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
</style>
</head>
<body>
	<header id="header"><!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="main.jsp">Hwarang</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="profile.jsp"><i class="fa fa-star"></i>
									Mypage</a></li>
							<li><a href="cart.html"><i class="fa fa-shopping-cart"></i>
									Cart</a></li>
							<li><a href="member_make.jsp"><i
									class="fa fa-crosshairs"></i> Join</a></li>
							<li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-xs-4">
					<div class="logo pull-left">
						<a href="main.jsp"><img
							src="images/home/logo/hwarang_logo.PNG" alt="" id="logo" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-xs-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="main.jsp" class="active">Home</a></li>
							<li class="dropdown"><a href="#">랭킹<i
									class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="shop.jsp">상품별</a></li>
									<li><a href="product-details.html">연령별</a></li>
									<li><a href="checkout.html">별점순</a></li>
								</ul></li>
							<li><a href="brand.jsp">브랜드</a> 
							<!-- 서브 메뉴 (X) --> <!-- <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">미샤</a></li>
										<li><a href="blog-single.html">이니스프리</a></li>
                                    </ul> --></li>
							<li><a href="#">게시판</a></li>
							<li><a href="pouch/pouch.jsp">파우치</a></li>
							<li><a href="#">커뮤니티</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Search" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-bottom--> </header>
	<!--/header-->


	<!-- 헤더 여기까지 다 기본 적으로 들어감     -->

	<section id="advertisement"> </section>

	<section>
	<div class="container">
		<div class="row">
			<h2 class="title text-center">10's choice</h2>
			<div id="ranking-slide">
				<ol>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ol>
				<a href="#" class="prev" onclick="prev()"></a> <a href="#" class="next"
					onclick="next()"></a>
			</div>
				<!--features_items-->
				
				<h2 class="title text-center">20's choice</h2>
			<div id="ranking-slide">
				<ol>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ol>
				<a href="#" class="prev" onclick="prev()"></a> <a href="#" class="next"
					onclick="next()"></a>
			</div>
			
			<h2 class="title text-center">30's choice</h2>
			<div id="ranking-slide">
				<ol>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ol>
				<a href="#" class="prev" onclick="prev()"></a> <a href="#" class="next"
					onclick="next()"></a>
			</div>
			</div>
		</div>
	</section>

	<footer id="footer"><!--Footer-->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="companyinfo">
						<h2>
							<span>e</span>-shopper
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing
							elit,sed do eiusmod tempor</p>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe1.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>Circle of Hands</p>
							<h2>24 DEC 2014</h2>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe2.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>Circle of Hands</p>
							<h2>24 DEC 2014</h2>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe3.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>Circle of Hands</p>
							<h2>24 DEC 2014</h2>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="images/home/iframe4.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>Circle of Hands</p>
							<h2>24 DEC 2014</h2>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="address">
						<img src="images/home/map.png" alt="" />
						<p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-widget">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Service</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="">Online Help</a></li>
							<li><a href="">Contact Us</a></li>
							<li><a href="">Order Status</a></li>
							<li><a href="">Change Location</a></li>
							<li><a href="">FAQ’s</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Quock Shop</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="">T-Shirt</a></li>
							<li><a href="">Mens</a></li>
							<li><a href="">Womens</a></li>
							<li><a href="">Gift Cards</a></li>
							<li><a href="">Shoes</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Policies</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="">Terms of Use</a></li>
							<li><a href="">Privecy Policy</a></li>
							<li><a href="">Refund Policy</a></li>
							<li><a href="">Billing System</a></li>
							<li><a href="">Ticket System</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>About Shopper</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="">Company Information</a></li>
							<li><a href="">Careers</a></li>
							<li><a href="">Store Location</a></li>
							<li><a href="">Affillate Program</a></li>
							<li><a href="">Copyright</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3 col-sm-offset-1">
					<div class="single-widget">
						<h2>About Shopper</h2>
						<form action="#" class="searchform">
							<input type="text" placeholder="Your email address" />
							<button type="submit" class="btn btn-default">
								<i class="fa fa-arrow-circle-o-right"></i>
							</button>
							<p>
								Get the most recent updates from <br />our site and be updated
								your self...
							</p>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<p class="pull-left">Copyright © 2013 E-Shopper. All rights
					reserved.</p>
				<p class="pull-right">
					Designed by <span><a target="_blank"
						href="http://www.themeum.com">Themeum</a></span>
				</p>
			</div>
		</div>
	</div>

	</footer>
	<!--/Footer-->
	
	<script src="js/jquery.js">
		var div = document.getElementById('ranking-slide');

		function prev(){
			div.className = 'trans02';
		}

		function next(){
			div.className = 'trans01';
		}
	</script>

	<script src="js/price-range.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
	

</body>
</html>