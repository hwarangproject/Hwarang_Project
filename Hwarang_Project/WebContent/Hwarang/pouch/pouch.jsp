<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%
	String strPage=request.getParameter("page");
	if(strPage==null) strPage="1";
	int curpage=Integer.parseInt(strPage);
	int rowSize=10;
	int start=(curpage*rowSize)-(rowSize-1);
	int end=(curpage*rowSize);
   
    List<BoardVO> list=BoardDAO.boardListData(map);
    int totalpage=BoardDAO.boardTotalPage();
  
    final int BLOCK=5;
    int allPage=totalpage;
    int startPage=((curpage-1)/BLOCK*BLOCK)+1;
    /*
    	curpage	:1~5	 	==> BLOCK 1
    					 6~10	==> BLOCK 2
    */
    int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
    if(endPage>allPage) endPage=allPage;
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 템플릿 링크 -->
<!-- 반응형 제거 -->

<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<meta name="description" content="">
<meta name="author" content="">

<title>HWARANG PROJECT</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/prettyPhoto.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="../images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
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
	box-shadow: 0 0 3rem -1rem rgba(0, 0, 0, 0.5);
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

/* 로고 크기 */
#logo {
	width: 200px;
	height: 45px;
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
							src="../images/home/logo/hwarang_logo.PNG" alt="" id="logo" /></a>
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
							<li><a href="#">브랜드</a> <!-- 서브 메뉴 (X) --> <!-- <ul role="menu" class="sub-menu">
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
</header>

	<!--/header-bottom--> 
	
	<!--  카드  -->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<ul class="card-list">

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Psychopomp" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Psychopomp</h2>
							<p>Japanese Breakfast</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="let's go" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>let's go</h2>
							<p>In Love With A Ghost</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url(images/blog/blog-three.jpg);"
						data-image-full="images/blog/blog-three.jpg"> <img
							src="images/blog/blog-three.jpg" alt="The Beautiful Game" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>The Beautiful Game</h2>
							<p>Vulfpeck</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Jane Doe" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Jane Doe</h2>
							<p>Converge</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Jane Doe" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Jane Doe</h2>
							<p>Converge</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Jane Doe" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Jane Doe</h2>
							<p>Converge</p>
					</a></li>

				</ul>
			</div>
		</div>
	</div>
	</header>
	<!--/header-->

	<!--  페이지 -->
	<table class="arrows-div">
		<tr>
			<td class="back-td"><a href="#" class="button prev">Back</a></td>
			<td class="paging-td"><a class="page-numbers current">1</a> <a
				class="page-numbers" href="#">2</a> <a class="page-numbers" href="#">3</a>
				<a class="page-numbers" href="#">4</a></td>
			<td class="prev-td"><a href="#" class="button next">Next</a></td>
		</tr>
	</table>
	<br>
	<br>
	<!-- Footer -->
	<footer id="footer"><!--Footer-->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-2">
					<div class="companyinfo">
						<h2>
							<span>H</span>warang
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing
							elit,sed do eiusmod tempor</p>
					</div>
				</div>
				<div class="col-xs-7">
					<div class="col-xs-3">
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

					<div class="col-xs-3">
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

					<div class="col-xs-3">
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

					<div class="col-xs-3">
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
				<div class="col-xs-3">
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
				<div class="col-xs-2">
					<div class="single-widget">
						<h2>Service</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Online Help</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Order Status</a></li>
							<li><a href="#">Change Location</a></li>
							<li><a href="#">FAQ’s</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-2">
					<div class="single-widget">
						<h2>Quock Shop</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">T-Shirt</a></li>
							<li><a href="#">Mens</a></li>
							<li><a href="#">Womens</a></li>
							<li><a href="#">Gift Cards</a></li>
							<li><a href="#">Shoes</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-2">
					<div class="single-widget">
						<h2>Policies</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">Privecy Policy</a></li>
							<li><a href="#">Refund Policy</a></li>
							<li><a href="#">Billing System</a></li>
							<li><a href="#">Ticket System</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-2">
					<div class="single-widget">
						<h2>About Shopper</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Company Information</a></li>
							<li><a href="#">Careers</a></li>
							<li><a href="#">Store Location</a></li>
							<li><a href="#">Affillate Program</a></li>
							<li><a href="#">Copyright</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-3 col-xs-offset-1">
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
				<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights
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
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
	
</body>
</html>
	