<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="description" content="">
<meta name="author" content="">

<title>GitHub made with TailwindCSS</title>


<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">


new Vue({
   el: "#app",
   data: function() {
      var tabs = [];
      for (var i = 50; i > 20; --i) {
         tabs.push("https://picsum.photos/300/300?image=" + i);
      }

      return {
         tabs: tabs
      };
   },
   mounted: function() {
      ScrollOut({
         scrollingElement: ".flow",
         targets: ".item"
      });
   }
});

</script>
<style type="text/css">
#app { 
   max-width: 100vw;
   padding: 1rem;
   overflow: hidden;
}

.flow { 
   overflow-y: hidden;
   overflow-x: scroll;
   white-space: nowrap; 
   height: 100%; 
   width: 100%;

   -webkit-overflow-scrolling: touch;
   
   &::-webkit-scrollbar {
      width: 16px;                                                                                                                                                                                                      
      height: 16px;
   }

   &::-webkit-scrollbar-thumb {
      background: hsla(203, 61%, 69%, .5);
      border-radius: 20px; 
   }

   &::-webkit-scrollbar-track {
      background: hsla(0, 0%, 82%, 0.5);
   }
}

.item { 
   width: 100px;
   height: 100px;
   display: inline-block;
   background-color: lightgray;
   margin: 0.5rem 0.25rem;
   border-radius: 5px;
   transition: opacity 500ms, transform 500ms; 
   
   &[data-scroll="out"] {
      opacity: 0;
      transform: translateY(150px) scale(.4);
   }
   &[data-scroll="in"] { 
      opacity: 1;
      transform: translateY(0px) scale(1);
   }
}


/* 메뉴 */
.header-nav {
  position: relative;
  background-color: #FFB9B9;
}
.header-nav ul {
  list-style: none;
  overflow: hidden;
  font-size: 0;
  padding: 0;
  margin: 0;
  display: block;
  margin: 0 auto;
  width: 450px;
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
  font-size: 15px;
  font : Helvetica;
  text-decoration: none;
  color: #ffffff;
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
  height: 4px;
  width: 20%;
  background-color: #ffffff;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}


/* 파우치 버튼 */
#pouch-wrapper{
	width: 100%;
	margin-left: auto;
	margin-right: auto;
}
/* Floats button in the middle */
#pouch-section{
	margin: 50px 0;
	max-width: 500px;
	margin-left: auto;
	margin-right: auto;
}

/* The button */
#pouch-button{
	float:left;
	width: 100%;
	max-width:500px;
	border: white solid 4px;
	cursor: pointer;
	background-color: #FFB9B9;
	margin-top: -4px;
	color: white;
	text-transform: uppercase;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 20px;
	letter-spacing: .1em;
	padding-top: 22px;
	padding-bottom: 22px;
	font-weight: 500;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	-ms-transition: all 0.3s;
	transition: all 0.3s;
}

/* Change text color & background opacity on hover*/
#pouch-button:hover{
	background-color: rgba(0,0,0,0);
	color: #FFB9B9;
}

/* The white hover effect */
.pouch-ease {
	width: 0px;
	height: 70px;
	background-color: white;
	-webkit-transition: .3s ease;
	-moz-transition: .3s ease;
	-o-transition: .3s ease;
	-ms-transition: .3s ease;
	transition: .3s ease;
}

/* Make visable when hover */
.pouch-btn-container:hover .pouch-ease{
	width: 100%;
	max-width: 500px;
	background-color: white;
	border: 0;
}

/* 홈화면 스타일*/
.carousel-inner {
  	margin: 10px auto;
  	width: 1200px;
  	height: 400px;
}

#custom_slider {
	bottom: 70px;
}

#logo {
	width: 200px;
	height: 45px;
}

#custom_pouch{
	display: inline;
}

</style>


</head>

<body>

<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
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
								<li><a href="profile.jsp"><i class="fa fa-star"></i> Mypage</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="member_make.jsp"><i class="fa fa-crosshairs"></i> Join</a></li>
								<li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-xs-4">
						<div class="logo pull-left">
							<a href="main.jsp"><img src="images/home/logo/hwarang_logo.PNG" alt="" id="logo"/></a>
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
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-xs-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="main.jsp" class="active">Home</a></li>
								<li class="dropdown"><a href="#">랭킹<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="product_detail.jsp">상품별</a></li>
										<li><a href="product-details.html">연령별</a></li> 
										<li><a href="checkout.html">별점순</a></li> 
                                    </ul>
                                </li> 
								<li><a href="#">브랜드</a>
                                    <!-- 서브 메뉴 (X) -->
                                    <!-- <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">미샤</a></li>
										<li><a href="blog-single.html">이니스프리</a></li>
                                    </ul> -->
                                </li> 
								<li><a href="#">게시판</a></li>
								<li><a href="#">파우치</a></li>
								<li><a href="#">커뮤니티</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xs-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

<body class="font-sans">
	<div>
		<div class="flex -mx-4">
			<div class="container mx-auto px-8">
				<div class="flex px-10">
					<div class="w-1/4">
						<div class="mb-4 thumbnail">
						   <a href="/w3images/lights.jpg">
					        <img src="http://clipart-library.com/images/8TEbqnRdc.jpg" alt="Lights" style="width:100%">
					        <div class="caption">
					          <p>사용자 아이디</p>
					        </div>
					      </a>
							
						</div>
						<div class="mb-4">
							<div class="text-3xl font-medium text-grey-darkest">사용자 이름</div>
							<div class="text-xl text-grey-dark font-light">닉네임</div>
						</div>
						<div class="pb-6 border-b">
							<a href="#" class="no-underline text-sm "> 피부타입 </a>
						</div>
						<div class="flex items-center text-left py-4 mb-4 border-b">
							<div class="flex items-center mr-2">
								<svg class="fill-current text-grey-dark w-4 h-4" width="24"
									height="24" xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 24 24">
									<path
										d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 14H4V8l8 5 8-5v10zm-8-7L4 6h16l-8 5z" /></svg>
							</div>
							<div>
								<a href="#" class="btn btn-sm"> email@address.com
								</a>
							</div>
						</div>
						<div>
							<div id="pouch-wrapper">
							    <section id="pouch-section">
							        <div class="pouch-btn-container">
							            <input type="submit" value="my pouch" id="pouch-button"/>
							            <div class="pouch-ease"></div>
							        </div>
							    </section>
							
							</div>
						</div>
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
									<li><a href=""> <span class="pull-right">(56)</span>Grüne Erde</a></li>
									<li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
									<li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
									<li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
									<li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
									<li><a href=""> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
								</ul>
							</div>
						</div>
						
					</div>
					<div class="w-3/4 ml-6 mt-2">
									

						<div class="flex items-center">
							<div class="w-1/2 pt-6 pb-2 font-normal text-grey-darkest">
								최근 본 상품
							</div>
							<div
								class="w-1/2 pt-6 pb-2 justify-end text-right text-grey-dark text-sm font-light flex">
								<div>더 보기</div>
								<div class="">
									<svg class="fill-current text-grey-dark h-4 w-4"
										xmlns="http://www.w3.org/2000/svg" width="24" height="24"
										viewBox="0 0 24 24">
										<path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" /></svg>
								</div>
							</div>
						</div>
						<div>
							<div class="recent_pro" >
						      <div id="app">  
								   <div class="flow" ref="flow"> 
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								      <div v-for="tab of tabs" class="item" v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
								   </div>  
								</div> 
							  
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>


<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div class="companyinfo">
							<h2><span>e</span>-shopper</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
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
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Get the most recent updates from <br />our site and be updated your self...</p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
	</footer><!--/Footer-->
</body>

</html>
