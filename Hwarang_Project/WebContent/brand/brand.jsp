<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- 주석1 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link rel="stylesheet" href="css/news_style.css">


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


<!-- 내가 설정한 스타일 -->
<style type="text/css">
.carousel-inner {
	margin: 10px auto;
	width: 1200px;
	height: 400px;
}

/* 슬라이더 높이 맟춤 */
#custom_slider {
	bottom: 50px;
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
									<li><a href="shop_age.jsp">연령별</a></li>
									<li><a href="shop_score.jsp">별점순</a></li>
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
	<!--/header-bottom--> 
	</header>
	<!--/header-->
	
	<div class="container">
		<div class="row">
		<center>
			<h3>브랜드 찾기</h3>
		</center>
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Category</h2>
					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#sportswear"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> 스킨케어
									</a>
								</h4>
							</div>
							<div id="sportswear" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="">스킨 </a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#mens">
										<span class="badge pull-right"><i class="fa fa-plus"></i></span>
										메이크업
									</a>
								</h4>
							</div>
							<div id="mens" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="">메이크업</a></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#womens"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> 기능성 화장품
									</a>
								</h4>
							</div>
							<div id="womens" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="">넥케어</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#body">
										<span class="badge pull-right"><i class="fa fa-plus"></i></span>
										바디케어
									</a>
								</h4>
							</div>
							<div id="body" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="">건강/다이어트식품</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#etc">
										<span class="badge pull-right"><i class="fa fa-plus"></i></span>
										기타
									</a>
								</h4>
							</div>
							<div id="etc" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="">아이소품</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#perfume"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> 향수
									</a>
								</h4>
							</div>
							<div id="perfume" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 150px;">
									<ul>
										<li><a href="">디퓨저</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#feminine"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> 여성용품
									</a>
								</h4>
							</div>
							<div id="feminine" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 150px;">
									<ul>
										<li><a href="">체내형</a></li>
										<li><a href="">청결제</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#baby">
										<span class="badge pull-right"><i class="fa fa-plus"></i></span>
										베이비&맘
									</a>
								</h4>
							</div>
							<div id="baby" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 150px;">
									<ul>
										<li><a href="">맘케어</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 브랜드 카테는 DB데이터 픽스되면 진행예정 -->
						<div class="panel panel-default"></div>
						<div class="panel panel-default"></div>
						<div class="panel panel-default"></div>
						<div class="panel panel-default"></div>
						<div class="panel panel-default"></div>
						<div class="panel panel-default"></div>
						<div class="panel panel-default"></div>
					</div>
					<!--/category-productsr-->

					<div class="brands_products">
						<!--brands_products-->
						<h2>Brands</h2>
						<div class="brands-name">
							<ul class="nav nav-pills nav-stacked">
								<li><a href=""> <span class="pull-right">(50)</span>Acne
								</a></li>
								<li><a href=""> <span class="pull-right">(56)</span>Grüne
										Erde
								</a></li>
								<li><a href=""> <span class="pull-right">(27)</span>Albiro
								</a></li>
								<li><a href=""> <span class="pull-right">(32)</span>Ronhill
								</a></li>
								<li><a href=""> <span class="pull-right">(5)</span>Oddmolly
								</a></li>
								<li><a href=""> <span class="pull-right">(9)</span>Boudestijn
								</a></li>
								<li><a href=""> <span class="pull-right">(4)</span>Rösch
										creative culture
								</a></li>
							</ul>
						</div>
					</div>
					
					<!--/brands_products-->
					</div>
				</div>
				
				
			<div class="col-xs-9">
				브랜드 영역
			</div>
			
			
		</div>
	</div>
	
	
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