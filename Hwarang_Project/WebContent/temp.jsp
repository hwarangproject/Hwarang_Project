



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

<!-- 기본  -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/prettyPhoto.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">
<!-- 기본  -->

<!-- 뉴스 -->
<link href="../css/news_style.css" rel="stylesheet">

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
							<li><a href="../main/main.hr">Hwarang</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="../profile/profile_myactivity.hr"><i class="fa fa-star"></i>
									Mypage</a></li>
							<li><a href="../cart/cart.hr"><i class="fa fa-shopping-cart"></i>
									Cart</a></li>
							<li>
								<a href="../member/member_make.hr">
									<i class="fa fa-crosshairs"></i> 
									Join
								</a>
							</li>
							
							
								<li><a href="../login/login.hr"><i class="fa fa-lock"></i>
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
						<a href="../main/main.hr"><img
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
							<li><a href="../main/main.hr" class="active">Home</a></li>
							<li class="dropdown"><a href="#">랭킹<i
									class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../ranking/rank_product.hr">상품별</a></li>
									<li><a href="../ranking/rank_age.hr">연령별</a></li>
									<li><a href="../ranking/rank_score.hr">평점순</a></li>
								</ul></li>
							<li><a href="../brand/brand.hr">브랜드</a> <!-- 서브 메뉴 (X) --> <!-- <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">미샤</a></li>
										<li><a href="blog-single.html">이니스프리</a></li>
                                    </ul> --></li>
							<li><a href="#">게시판</a></li>
							<li><a href="../pouch/pouch.hr">파우치</a></li>
							<li><a href="../community/community_QnA.hr">커뮤니티</a></li>
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

	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>브랜드</title>

<style type="text/css">


*, *:before, *:after{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing:border-box;
  box-sizing: border-box;
}


.content {
  position: relative;
  width: 90%;
  max-width: 400px;
  margin: auto;
  overflow: hidden;
}

.content .content-overlay {
  background-color: #FFB9B9;
  position: absolute;
  height: 99%;
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  opacity: 0;
  -webkit-transition: all 0.4s ease-in-out 0s;
  -moz-transition: all 0.4s ease-in-out 0s;
  transition: all 0.4s ease-in-out 0s;
}

.content:hover .content-overlay{
  opacity: 1;
}

.content-image{
  width: 100%;
}

.content-details {
  position: absolute;
  text-align: center;
  padding-left: 1em;
  padding-right: 1em;
  width: 100%;
  top: 50%;
  left: 50%;
  opacity: 0;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  -webkit-transition: all 0.3s ease-in-out 0s;
  -moz-transition: all 0.3s ease-in-out 0s;
  transition: all 0.3s ease-in-out 0s;
}

.content:hover .content-details{
  top: 50%;
  left: 50%;
  opacity: 1;
}

.content-details h3{
  color: #fff;
  font-weight: 500;
  letter-spacing: 0.15em;
  margin-bottom: 0.5em;
  text-transform: uppercase;
}


.fadeIn-bottom{
  top: 80%;
}

.fadeIn-top{
  top: 20%;
}

.fadeIn-left{
  left: 20%;
}

.fadeIn-right{
  left: 80%;
}

.main_section {
	margin : auto;
	width: 1200px;
	height: auto;
}

 
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

 
.brand_sorting[_ngcontent-c8]{
	margin : auto;
	display: inline-block;
	height: 35pt;
	margin-left: 3px;
}

.filter {
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
	font-size: 35pt;
	color: #ffeae8;
}

.brand_sorting[_ngcontent-c8] .filters[_ngcontent-c8]:active {
	color: #FFB9B9;
	font-weight: 600;
	font-size: 25pt;
}

 
img {
	border:0;
	height:100px;
}
.col-sm-2 {
	margin-top:20px;
	margin-bottom:20px;
}
.container {
	margin : 0px auto;
}

</style>
</head>
<body>

	<div class="has_banner ">
		<div class="container">
			<div _ngcontent-c8="" class="brand_search_area">
				<h1 style="color: #FFB9B9">BRAND</h1>
				<ruler-small-tab _ngcontent-c8="" _nghost-c10="">
				</ruler-small-tab>
			</div>
			<div _ngcontent-c8="" class="filters text-center" id="brand_id">
				<button _ngcontent-c8="" class="filter"  onclick="change_textcolor()" >전체
					&nbsp;&nbsp;&nbsp;&nbsp;</button>
 
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">가</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">나</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">다</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">라</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">마</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">바</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">사</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">아</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">자</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">차</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">카</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">타</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">파</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">하</button>

				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABC.</button>
			</div>
		</div>
		
		
		<section class="main_section" style="margin-top:10px">
		<div class="container">
		
			<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"><img src="https://d9vmi5fxk1gsw.cloudfront.net/home/glowmee/upload/20180724/1532397580966_720.png" class="content-image" width=100px height=80px></div>
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">비쉬</h3>
						</div>
					</a>
				</div>
			</div>
			
		</div>
		</section>
		
	</div>
	<div class="container text-center">
	<ul class="pagination">
						<li class="active">
						<a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">&raquo;</a></li>
					</ul>
					</div>

	<script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript">
	$(function() {
		$("#change_textcolor").click( function() {
			$(this).css("color","#f0adad");
		});
	});
	</script>
</body>
</html>
	
<footer id="footer"><!--Footer-->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="companyinfo">
						<h2>
							<span>H</span>warang
							<br>
							<font color="white">김기태, 박귀남, 이인혁, 윤다인, 정지수, 오유정, 최정혜</font>
						</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-widget">
		<div class="container">
			<div class="row">
				<div class="col-xs-3">
					<div class="single-widget">
						<h2>Service</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">QnA</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="single-widget">
						<h2>Shop</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">상품별</a></li>
							<li><a href="#">연령별</a></li>
							<li><a href="#">평점별</a></li>
							<li><a href="#">브랜드</a></li>
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
				<p class="pull-left">
					Hwarang
				</p>
				<p class="pull-right">
					Designed by -
					<span>
						Sist C Class - Hwarang Team
					</span>
				</p>
			</div>
		</div>
	</div>
</footer>
	<!--/Footer-->
	
	<script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.scrollUp.min.js"></script>
	<script src="../js/price-range.js"></script>
	<script src="../js/jquery.prettyPhoto.js"></script>
	<script src="../js/main.js"></script>
	
	
</body>
</html>