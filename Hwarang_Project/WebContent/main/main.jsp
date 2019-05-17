<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 템플릿 링크 -->
<!-- 반응형 제거 -->
<!-- col-sm ==> col-xm 으로 변경 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<meta name="description" content="">
<meta name="author" content="">

<title>HWARANG PROJECT</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico" />
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	$('#aaa').show();
	$('#keyword').keyup(function(){
		var k=$('#keyword').val();
		if(k!="")
		{
		$.ajax({
			type:'POST',
			data:{"key":k},
			url:'../find/product_find.hr',
			success:function(response)
			{
				$('#print').show();
				$('#print').html(response);
				$('#main').hide();
			}
			
		});
		}
		else
		{
			$('#print').hide();
			$('#main').show();
		}
		
	});
});
</script>
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
							<!-- 로그인 안했을 때 -->
							<c:if test="${sessionScope.id==null }">
								<li><a href="#">Hwarang</a></li>
							</c:if>
							<!-- 로그인 했을 때 -->
							<c:if test="${sessionScope.id!=null }">
								<li><a href="#">${sessionScope.id}님이 로그인 중입니다</a></li>
							</c:if>
							<li><li>
						</ul>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<!-- 로그인 안했을 때 -->
							<c:if test="${sessionScope.id==null }">
							</c:if>
							<!-- 로그인 했을 때 -->
							<c:if test="${sessionScope.id!=null }">
							<li>
								<a href="../profile/profile_myactivity.hr">
									<i class="fa fa-star"></i>
									Mypage
								</a>
							</li>
							</c:if>
							
							<c:if test="${sessionScope.id==null }">
							</c:if>
							<c:if test="${sessionScope.id!=null }">
							<li>
								<li>
									<a href="../cart/cart.hr">
									<i class="fa fa-shopping-cart"></i>
										Cart
									</a>
								</li>
							</li>
							</c:if>
							
							<c:if test="${sessionScope.id==null }">
								<li>
									<a href="../member/member_make.hr">
										<i class="fa fa-crosshairs"></i> 
										Join
									</a>
								</li>
							</c:if>
							
							<c:if test="${sessionScope.id!=null }">
							</c:if>			
							
							
							<c:if test="${sessionScope.id==null }">
								<li><a href="../login/login.hr"><i class="fa fa-lock"></i>
										Login</a></li>
							</c:if>
							<c:if test="${sessionScope.id!=null }">
								<li><a href="../login/logout.hr"><i class="fa fa-lock"></i>
										Logout</a></li>
							</c:if>
						
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
							<li><a href="../news/news.hr">소식</a></li>
							<li><a href="../pouch/pouch.hr">파우치</a></li>
							<c:if test="${sessionScope.id==null }">
							</c:if>
							<c:if test="${sessionScope.id!=null }">
								<li><a href="../community/community_notice.hr?b_cate_no=1">커뮤니티</a></li>
							</c:if>							
						</ul>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Search" id="keyword"/>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-bottom--> 
</header>
	<div class="container" id="print">
		
	</div>
	
	<div id="main">
		<jsp:include page="${main_jsp }"></jsp:include>
	</div>
	
<footer id="footer"><!--Footer-->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="companyinfo">
						<h2>
							<span>H</span>warang TEAM Project
							<br>
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
	
<!-- 	<script src="../js/jquery.js"></script> -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.scrollUp.min.js"></script>
	<script src="../js/price-range.js"></script>
	<script src="../js/jquery.prettyPhoto.js"></script>
	<script src="../js/main.js"></script>
	
	
</body>
</html>