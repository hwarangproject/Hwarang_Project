<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="description" content="">
<meta name="author" content="">

<title>GitHub made with TailwindCSS</title>


<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

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

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	
</script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

*, *:after, *:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-o-box-sizing: border-box;
	box-sizing: border-box;
}

.clearfix:before, .clearfix:after {
	display: table;
	content: '';
}

.clearfix:after {
	clear: both;
}

input:focus, textarea:focus, keygen:focus, select:focus {
	outline: none;
}

::-moz-placeholder {
	color: #666;
	font-weight: 300;
	opacity: 1;
}

::-webkit-input-placeholder {
	color: #666;
	font-weight: 300;
}

.grid .col2 {
	width: 50%;
	padding: 0 10px 0 0;
}

.grid .col2.first {
	float: left;
}

.grid .col2.last {
	float: right;
}

.grid .col3 {
	width: 32%;
	float: left;
	margin-right: 11px;
}

.grid .col3.first {
	margin-left: 0;
	float: left;
}

.grid .col3.last {
	margin-right: 0;
	float: right;
}

/* profile page */
.innerwrap {
	width: 1200px;
	margin: 0 auto;
}

.section1 {
	background: #fff;
	position: relative;
	border-radius: 2px;
}

.section1 div .row:first-child {
	padding: 25px;
}

.section1 .col2.first img {
	border-radius: 50%;
	margin: 0 20px;
	width: 120px;
	border: 2px solid #f1f1f1;
	padding: 2px;
	float: left;
}

.section1 .col2.first {
	line-height: 25px;
	position: relative;
	border-right: 1px solid #a2a2a2;
}

.section1 .col2.first h1 {
	font-weight: normal;
	margin-bottom: 10px;
	margin-top: 15px;
	text-transform: capitalize;
}

.section1 .col2.first p {
	font-size: 14px;
}

.section1 .col2.first span {
	position: absolute;
	right: 15px;
	top: 16px;
	background: #6AAFEA;
	padding: 5px 11px;
	font-size: 12px;
	line-height: 1;
	border-radius: 2px;
	color: #fff;
	cursor: pointer;
}

.section1 .col2.last {
	padding: 8px 0;
}

.section1 .col2.last .col3 span {
	color: #a2a2a2;
	font-size: 14px;
}

.section1 .col2.last .col3 h1 {
	color: #FB4C22;
}

.section1 .col2.last .col3 {
	text-align: center;
	line-height: 30px;
	border-right: 1px solid #ccc;
}

.section1 .col2.last .col3.last {
	border-right: 0;
}

.row2tab li {
	list-style: none;
	float: left;
	width: 25%;
	padding: 15px;
	font-size: 14px;
	text-align: center;
	cursor: pointer;
	background: #f1f1f1;
	color: #555;
	border-bottom: 2px solid #f1f1f1;
}

.row2tab li:first-child {
	border-bottom: 2px solid #6AAFEA;
	border-radius: 0 0 2px 2px;
}

.row2tab li:first-child {
	color: #6AAFEA;
}

.row2tab li i {
	margin-right: 3px;
	font-size: 14px;
}

.smalltri {
	border-right: 40px solid #6AAFEA;
	height: 0;
	width: 0;
	border-left: 20px solid transparent;
	border-top: 10px solid #6AAFEA;
	border-bottom: 20px solid transparent;
	padding: 0px;
	top: 0;
	right: 0;
	position: absolute;
}

.smalltri i {
	position: absolute;
	top: -5px;
	right: -33px;
	color: #fff;
	border: 0px;
	font-size: 12px;
}

section.section2 {
	margin: 5px 0;
}

.section2 .col3 {
	width: 30%;
	margin-right: 60px;
	background: #fff;
	border-radius: 2px;
}

.section2 .postcont img {
	width: 100%;
}

.section2 .profileinfo {
	text-align: center;
	padding: 0 10px 30px;
	color: #555;
	font-size: 14px;
	line-height: 25px;
}

.section2 .profileinfo img {
	border-radius: 50%;
	width: 80px;
	padding: 2px;
	border: 3px solid #6AAFEA;
	margin-top: -48px;
	margin-bottom: 18px;
}

.section2 .col3.center .profileinfo img {
	border: 3px solid #FB4C22;
}

.section2 .profileinfo p {
	text-align: justify;
}

.section2 .profileinfo span {
	margin-top: 15px;
	display: block;
	text-align: left;
	color: #6AAFEA;
	cursor: pointer;
}

.section2 .profileinfo span i {
	margin-left: 10px;
}

@media only screen and (max-width: 1300px) {
	.innerwrap {
		width: 90%;
	}
	.section2 .col3 {
		margin-right: 5%;
	}
	.section1 .grid .col3 {
		margin-right: 2%;
	}
	.section1 .col2.last .col3.last {
		margin-right: 0;
	}
}

@media only screen and (max-width: 1060px) {
	.section1 .col2 {
		width: 100%;
		border-right: 0 !important;
		padding: 0;
	}
}

@media only screen and (max-width: 660px) {
	.section2 .col3 {
		width: 100%;
		float: none !important;
		margin-bottom: 10px;
	}
	.row2tab li {
		width: 50%;
		text-align: left;
	}
	.section1 .col2.first {
		text-align: center;
	}
	.section1 .col2.first img {
		display: inline-block;
		float: none;
	}
	.section1 .col2.first span {
		position: relative;
		right: 0;
	}
	.section1 .col2.last {
		margin-top: 25px;
	}
}

@media only screen and (max-width: 450px) {
	/* .container {
    padding: 60px 5px 70px;
} */
	.row2tab li {
		width: 100%;
		text-align: left;
	}
	.section1 .col2.last .col3 span {
		font-size: 10px;
	}
	.section1 .col2.last .col3 h1 {
		font-size: 18px;
	}
}

/* 제목 */
/* h3,
label[for="new-task"] {
  color: #333;
  font-weight: 700;
  font-size: 15px;
  border-bottom: 2px solid #333;
  padding: 30px 0 10px;
  margin: 0;
  text-transform: uppercase;
} */

/* 내비게이션 메뉴바 */
.header-nav {
  position: relative;
  background-color: #F1F1F1;
}
.header-nav ul {
  list-style: none;
  overflow: hidden;
  font-size: 0;
  padding: 0;
  margin: 0;
  display: block;
  margin: 0 auto;
  width: 600px;
  position: relative;
  padding-bottom: 2px;
}
.header-nav ul li {
  display: inline-block;
  width: 20%;
  text-align: center;
}
.header-nav ul li:nth-child(1).active ~ .marker {
  left: 0%;
}
.header-nav ul li:nth-child(1):hover ~ .marker {
  left: 0% !important;
}
.header-nav ul li:nth-child(2).active ~ .marker {
  left: 20%;
}
.header-nav ul li:nth-child(2):hover ~ .marker {
  left: 20% !important;
}
.header-nav ul li:nth-child(3).active ~ .marker {
  left: 40%;
}
.header-nav ul li:nth-child(3):hover ~ .marker {
  left: 40% !important;
}
.header-nav ul li:nth-child(4).active ~ .marker {
  left: 60%;
}
.header-nav ul li:nth-child(4):hover ~ .marker {
  left: 60% !important;
}
.header-nav ul li:nth-child(5).active ~ .marker {
  left: 80%;
}
.header-nav ul li:nth-child(5):hover ~ .marker {
  left: 80% !important;
}
.header-nav ul li a {
  display: block;
  font-size: 16px;
  text-decoration: none;
  color: #808080;
  padding: 20px 15px 15px 15px;
  text-transform: uppercase;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
.header-nav .marker {
  position: absolute;
  left: 0%;
  bottom: 0;
  height: 2px;
  width: 20%;
  background-color: #ff9999;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}

/* 상품이미지 */
.card {
    display: inline-block;
    vertical-align: top;
    width: 270px;
    height: 370px;
    position: relative;
    overflow: hidden;
    margin: 10px;
    background: #FFF;
    box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
    color: #272727;
    border-radius: 2px;
  }
  
.card .title {
    line-height: 15px;
    font-size: 15px;
    font-weight: 300;
  }
  .card .content {
    padding: 20px;
    font-weight: 300;
    border-radius: 0 0 2px 2px;
  }
  .card p {
    margin: 0;
  }
  .card .action {
    border-top: 1px solid rgba(160, 160, 160, 0.2);
    padding: 13px;
  }
  .card a {
    color: $link-color;
    margin-right: 20px;
    transition: color 0.3s ease;
    text-transform: uppercase;
    text-decoration: none;
  }
  
  /* title */

  
</style>


</head>

<body>

	<header id="header">
		<!--header-->
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
								<li><a href="login.jsp"><i class="fa fa-lock"></i>
										Login</a></li>
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
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
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
		<!--/header-bottom-->
	</header>
	<!--/header-->
<body class="font-sans">
	<div>
		<div class="flex -mx-4">
			<div class="container mx-auto px-8">
				<div class="container">
					<div class="innerwrap">
						<section class="section1 clearfix">
							<div>
								<div class="row grid clearfix">
									<div class="col2 first">
										<img
											src="http://images.contactmusic.com/newsimages/david_beckham_1133321.jpg"
											alt="">
										<h1>사용자 이름</h1>
										<h4>사용자 닉네임</h4>
										<p>스킨 타입</p>
									</div>
									<div class="col2 last">
										<div class="grid clearfix">
											<div class="col3 first">
												<h1>14</h1>
												<span>Pouch</span>
											</div>
											<div class="col3">
												<h1>35</h1>
												<span>Product</span>
											</div>
											<div class="col3 last">
												<h1>5</h1>
												<span>Brand</span>
											</div>
										</div>
									</div>
								</div>
								<div>									
									<nav class='header-nav'>
									  <ul>
									    <li class='active'>
									      <a href='#'>
									        나의 활동
									      </a>
									    </li>
									    <li>
									      <a href='#'>
									        즐겨찾기
									      </a>
									    </li>
									    <li>
									      <a href='#'>
									        장바구니
									      </a>
									    </li>
									    <li>
									      <a href='#'>
									        내 정보
									      </a>
									    </li>
									    <div class='marker'></div>
									  </ul>
									</nav>
								</div>
							</div>
						</section>
		
							<!-- 회원정보 -->
						<section class="section2 clearfix">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a href="product_detail.jsp">
											<img src="../images/product-details/cos5.png" alt="" width=280.8px height=280.8px/>
											<h5>이니스프리 / 화산송이마스크</h5>
											</a>
											<p>$56</p>
											<div class="star-rating" style="text-align: center">
													<div style="width:65%" class="star-rating-percentage"  style="display:inline-block"></div>
											</div>
		
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href=""><i class="fa fa-plus-square"></i>Add to
													mypage</a></li>
											<li><a href=""><i class="fa fa-plus-square"></i>Add to
													cart</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a href="product_detail.jsp">
											<img src="../images/product-details/cos5.png" alt="" width=280.8px height=280.8px/>
											<h5>이니스프리 / 화산송이마스크</h5>
											</a>
											<p>$56</p>
											<div class="star-rating" style="text-align: center">
													<div style="width:65%" class="star-rating-percentage"  style="display:inline-block"></div>
											</div>
		
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href=""><i class="fa fa-plus-square"></i>Add to
													mypage</a></li>
											<li><a href=""><i class="fa fa-plus-square"></i>Add to
													cart</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a href="product_detail.jsp">
											<img src="../images/product-details/cos5.png" alt="" width=280.8px height=280.8px/>
											<h5>이니스프리 / 화산송이마스크</h5>
											</a>
											<p>$56</p>
											<div class="star-rating" style="text-align: center">
													<div style="width:65%" class="star-rating-percentage"  style="display:inline-block"></div>
											</div>
		
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href=""><i class="fa fa-plus-square"></i>Add to
													mypage</a></li>
											<li><a href=""><i class="fa fa-plus-square"></i>Add to
													cart</a></li>
										</ul>
									</div>
								</div>
							</div>
							
						</section>
					</div>
				</div>
					

			</div>
		</div>
	</div>
</body>


<footer id="footer">
	<!--Footer-->
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
</body>

</html>
