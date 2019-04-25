<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 템플릿 링크 -->
<!-- 반응형 제거 -->
<!-- col-sm ==> col-xm 으로 변경 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<meta name="description" content="">
<meta name="author" content="">

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

<style type="text/css">
h5 {
    margin-left: 1em;
    font-size: 25px;
    font-family: 'Roboto', sans-serif;
    color:#b9b9b9;
}
.container2 {
    max-width: 70em;
    padding: 3em 7em 3em 7em;
    margin: 1.5em auto;
    background-color: #fff;
    border-radius: 4.2px;
    box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
}
.checklist {
	list-style: none;
	box-shadow: 0 1px 2px rgba(black, 0.2);
	margin: 1.5rem 0;
	background: white;
}
label {
	position: relative;
	display: block;
	line-height: 2;
	padding-left: 50px;
	cursor: pointer;
	margin: 0;
	padding-top: 1.5rem;
	padding-bottom: 1.5rem;
	padding-right: .5rem;
}
label:hover {
	background: #f6f6f6;
}
label:active {
	background: #f4f4f4;
}
input { visibility: hidden; display: none; }

span {
	position: relative;
	color: #333;
	transition: all .15s ease;
}
span:before {
	content: '';
	position: absolute;
	width: 26px;
	height: 26px;
	top: -3px;
	left: -38px;
	text-align: center;
	line-height: 26px;
	text-indent: 0px;
	color: white;
	font-family: 'FontAwesome';
	font-size: 1.4rem;
	border-radius: 50%;
	background: #fff;
	box-shadow: inset 0 0 0 2px rgba(0,0,0,.1);
	transition: all .15s ease;
}
input:checked ~ span:before {
	content: '\f00c';
	background: #d321ab63;
	box-shadow: none;
}
input:checked ~ span {
	color: #ccc;
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

					<!-- 버튼 토글  -->
					<!-- <div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									USA
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">Canada</a></li>
									<li><a href="#">UK</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									DOLLAR
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">Canadian Dollar</a></li>
									<li><a href="#">Pound</a></li>
								</ul>
							</div>
						</div> -->
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
									<li><a href="product_detail.jsp">상품별</a></li>
									<li><a href="product-details.html">연령별</a></li>
									<li><a href="checkout.html">별점순</a></li>
								</ul></li>
							<li><a href="#">브랜드</a> <!-- 서브 메뉴 (X) --> <!-- <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">미샤</a></li>
										<li><a href="blog-single.html">이니스프리</a></li>
                                    </ul> --></li>
							<li><a href="#">게시판</a></li>
							<li><a href="#">파우치</a></li>
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
	<!--/header-->

	<!-- 회원가입  -->
	<div class="container2">
		<h5>SKIN TEST</h5>
		<div class="checklist">
			<label><input class="item" type="checkbox" checked /><span>- 세안 후 얼굴이 빠르게 당기고 각질이 일어난다.</span></label>
			<label><input class="item" type="checkbox" /><span>- 화장이 잘 받지 않고 뜨는 편이다.</span></label>
			<label><input class="item" type="checkbox" /><span>- 눈가,입가에 쉽게 주름이 생긴다.</span></label>
			<label><input class="item" type="checkbox" /><span>- 피부가 윤기없고 푸석푸석하며 탄력이 없다.</span></label>
			<label><input class="item" type="checkbox" /><span>- 입술이 잘 트며, 피부표면이 거칠고 매끄럽지 않다.</span></label>
			<label><input class="item" type="checkbox" /><span>- 겨울에 피부 각질이 쉽게 일어난다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 세안 후 얼굴의 당김 현상이 적다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 화장이 잘 받고 오후가 되어도 쉽게 지워지지 않는다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 피부가 매끄러우며 적당히 윤기가 난다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 트러블이 잘 생기지 않는다. </span></label>
			<label><input class="item" type="checkbox" /><span>- T존 부위의 번들거림이 적다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 계절에 따른 피부변화가 별로 없다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 화장이 잘 받지 않고 시간이 지날수록 쉽게 지워진다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 피지 과다 분비로 모공이 넓고 유분기가 많다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 특정부위 상관없이 여드름이나 트러블이 자주 생기는 편이다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 햇빛을 받으면 쉽게 탄다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 눈가 입가 및 피부에 주름이 없는 편이다. </span></label>
			<label><input class="item" type="checkbox" /><span>- T존 부위에 유분기가 유독 많고 다른 부위는 당김이 심하다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 입가나 눈가에 잔주름이 많다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 피지분비는 많지만 수분이 적어 화장이 잘 받지 않는다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 코 부분의 모공이 넓고 피부가 거칠며 윤기가 없다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 광대뼈와 볼 부위에 색소침착이 나타나는 경우가 있다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 피지의 분비량이 균형적이지 못해 관리가 힘들다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 약한 자극에도 피부가 쉽게 붉어지는 편이다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 화장품에 쉽게 자극이 일어나며 교체 시마다 피부트러블을 겪는다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 세안 할 때나 화장할 때 피부가 간혹 따금거린다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 피지가 별로 없어도 여드름이 자주 생긴다. </span></label>
			<label><input class="item" type="checkbox" /><span>- 피부가 가려우며, 자외선에 약하다.   </span></label>
		</div>
		
	</div>


	<footer id="footer"><!--Footer-->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-2">
					<div class="companyinfo">
						<h2>
							<span>e</span>-shopper
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
	<script src="js/profile_upload.js"></script>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



</body>
</html>