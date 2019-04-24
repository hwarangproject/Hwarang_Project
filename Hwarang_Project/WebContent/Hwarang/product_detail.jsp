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

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
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

<!-- 내가 설정한 스타일 -->
<style type="text/css">
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


/* 평점 css*/
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('images/product-details/grade_final.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:250px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:left; vertical-align:middle;}


/* 상세평점 출력 */
@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,400);
@import url(https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

body {
  font-family: 'Roboto', Helvetica;
  color: #737373;
  font-weight: 300;
}

#rate-title{
margin-left: 1.2em;
}
.con1 {
  width: 800px;
  margin: 0 auto;
  margin-top: 1em;
  margin-bottom: 3em;
  background-color: #EFEFEF;
  padding: 2px;
}

.inner {
  padding: 1em;
  background-color: white;
  overflow: hidden;
  position: relative;
  -webkit-border-radius: 4px; 
  -moz-border-radius: 4px; 
  border-radius: 4px; 
}

.rating {
  float: left;
  width: 45%;
  margin-top: 2%;
  margin-right: 5%;
  text-align: center;
}

.rating-num {
  color: #333333;
  font-size: 40px;
  font-weight: 300;
  line-height: 1em; 
}

.rating-stars {
  font-size: 20px;
  color: #E3E3E3;
  margin-bottom: .5em;
}
.rating-stars .active {
  color: #737373;
}

.rating-users {
  font-size: 15px;
}

.histo {
  float: left;
  width: 50%;
  font-size: 13px;
}

.histo-star {
  float: left;
  padding: 3px;

}

.histo-rate {
  width: 100%;
  display: block;
  clear: both;
}

.bar-block {
  margin-left: 5px;
  color: black;
  display: block;
  float: left;
  width: 75%;
  position: relative;
}

.bar {
  padding: 4px;
  display: block;
}

#bar-five {
  width: 0;
  background-color: #9FC05A;
}

#bar-four {
  width: 0;
  background-color: #ADD633;
}

#bar-three {
  width: 0;
  background-color: #FFD834;
}

#bar-two {
  width: 0;
  background-color: #FFB234;
}

#bar-one {
  width: 0;
  background-color: #FF8B5A;
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
	
<div class="container">
         <div class="row">
            <div class="col-sm-3">
               <div class="left-sidebar">
               
                  <!--/category-products-->
                  <h2>Category</h2>
                  <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                 <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                 Sportswear
                              </a>
                           </h4>
                        </div>
                        <div id="sportswear" class="panel-collapse collapse">
                           <div class="panel-body">
                              <ul>
                                 <li><a href="">Nike </a></li>
                                 <li><a href="">Under Armour </a></li>
                                 <li><a href="">Adidas </a></li>
                                 <li><a href="">Puma</a></li>
                                 <li><a href="">ASICS </a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                 <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                 Mens
                              </a>
                           </h4>
                        </div>
                        <div id="mens" class="panel-collapse collapse">
                           <div class="panel-body">
                              <ul>
                                 <li><a href="">Fendi</a></li>
                                 <li><a href="">Guess</a></li>
                                 <li><a href="">Valentino</a></li>
                                 <li><a href="">Dior</a></li>
                                 <li><a href="">Versace</a></li>
                                 <li><a href="">Armani</a></li>
                                 <li><a href="">Prada</a></li>
                                 <li><a href="">Dolce and Gabbana</a></li>
                                 <li><a href="">Chanel</a></li>
                                 <li><a href="">Gucci</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                 <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                 Womens
                              </a>
                           </h4>
                        </div>
                        <div id="womens" class="panel-collapse collapse">
                           <div class="panel-body">
                              <ul>
                                 <li><a href="">Fendi</a></li>
                                 <li><a href="">Guess</a></li>
                                 <li><a href="">Valentino</a></li>
                                 <li><a href="">Dior</a></li>
                                 <li><a href="">Versace</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Kids</a></h4>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Fashion</a></h4>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Households</a></h4>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Interiors</a></h4>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Clothing</a></h4>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Bags</a></h4>
                        </div>
                     </div>
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title"><a href="#">Shoes</a></h4>
                        </div>
                     </div>
                  </div>
               
               <!--/brands_products 창-->
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
            </div>
            
            <!--/product-information-->
            <div class="col-sm-9 padding-right">
               <div class="product-details"><!--product-details-->
                  <div class="col-sm-5">
                     <div class="view-product">
                        <img src="images/product-details/cos.jpg" alt="" />
                     </div>
                     

                  </div>
                  <div class="col-sm-7">
                     <div class="product-information"><!--/product-information-->
                        <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                        <h2>상품명 : 리얼 아이 크림 포 페이스 30ml </h2>
                        <p>브랜드명 : Channel</p>
                        
                        <span>
                           <span>가격: 50,000 원</span>
                           <button type="button" class="btn btn-fefault cart">
                              <i class="fa fa-shopping-cart"></i>
                              Add to cart
                           </button>
                        </span>
                        <p><b>카테고리:</b> SKIN</p>
                        <p><b>유해성분:</b> Harmful</p>
                        <p><b>판매처:</b> E-SHOPPER</p>
                        <p><b>컬러/타입:</b> E-SHOPPER</p>
                        <p><b>설명:</b> E-SHOPPER</p>
                        <p><b>태그:</b> E-SHOPPER</p>
                      </div>
                     </div>
                 </div>
                    
<!-- 상세평점 출력 -->
<h3 id="rate-title">평점</h3>
<div class="con1">
  <div class="inner">
  
    <div class="rating">
     
      <span class="rating-num">4.0</span><br>
        <div class="rating-stars">
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="active icon-star"></i></span>
        <span><i class="icon-star"></i></span>
        &#9733;&#9733;&#9733;&#9733;&#9734;
      </div>
      <div class="rating-users">
      	&#128077; <i class="icon-user"></i> 1,014,004 total
      </div>
    </div>
    
    <div class="histo">
      <div class="five histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 5           </span>
        <span class="bar-block">
          <span id="bar-five" class="bar">
            <span>566,784</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="four histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 4           </span>
        <span class="bar-block">
          <span id="bar-four" class="bar">
            <span>171,298</span>&nbsp;
          </span> 
        </span>
      </div> 
      
      <div class="three histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 3           </span>
        <span class="bar-block">
          <span id="bar-three" class="bar">
            <span>94,940</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="two histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 2           </span>
        <span class="bar-block">
          <span id="bar-two" class="bar">
            <span>44,525</span>&nbsp;
          </span> 
        </span>
      </div>
      
      <div class="one histo-rate">
        <span class="histo-star">
          <i class="active icon-star"></i> 1           </span>
        <span class="bar-block">
          <span id="bar-one" class="bar">
            <span>136,457</span>&nbsp;
          </span> 
        </span>
      </div>
    </div>
  </div>
</div>
                  
            <!--/product-details-->
               
               <div class="category-tab shop-details-tab"><!--category-tab-->
                  <div class="col-sm-12">
                     <ul class="nav nav-tabs">
                        <li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
                     </ul>
                  </div>
                  <div class="tab-content">
                     <div class="tab-pane fade" id="details" >
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery1.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery2.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery3.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery4.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                     <div class="tab-pane fade" id="companyprofile" >
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery1.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery3.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery2.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery4.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                     <div class="tab-pane fade" id="tag" >
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery1.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery2.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery3.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-3">
                           <div class="product-image-wrapper">
                              <div class="single-products">
                                 <div class="productinfo text-center">
                                    <img src="images/home/gallery4.jpg" alt="" />
                                    <h2>$56</h2>
                                    <p>Easy Polo Black Edition</p>
                                    <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     
                     



                     
                     <div class="tab-pane fade active in" id="reviews" >
                        <div class="col-sm-12">
                          <div class="a">
                           <ul>
                              <li><a href=""><i class="fa fa-user"></i>회원 ID</a></li>
                              <li><a href=""></i>성별:여자 / 피부타입:건성 / 연령대:20대 / 별점:3</a></li>
                           </ul>
                           <p>제품에 쓰여진 대로 솜에 잔뜩 묻혀서 부드럽게 닦아내주면 정말 개운한 느낌이 들어요 꽤 민감한 편인데 필링토너라해서 자극적이거나 그러지 않았구요 외출 후 집에 돌아오자마자 얼굴에 쌓인 먼지닦아낼 때나 아침에 세수하기 귀찮을 때 닦아내기 좋더라구요</p>
                          </div>
                        </div>
                        
                        <div class="col-sm-12">
                          <div class="a">
                           <ul>
                              <li><a href=""><i class="fa fa-user"></i>회원 ID</a></li>
                              <li><a href=""></i>성별:남자 / 피부타입:지성 / 연령대:30대 / 별점:4</a></li>
                           </ul>
                           <p>케이스가 일단 예뻐요! 자석이라 편하기도하구요 베러립스톡,베러립스톡 둘다 써봤는데 둘다 색이넘이뻐여 특히 땡큐땡모반이랑 무드업, 빈티지웨이 컬러가 예뻐서 매장에서 테스트하고 세개 사왔어요 :) 빈티지웨이는 집에있는 맥 씨쉬어랑 거의 존똑이더라구요 살짝 톤다운된 피치컬러라 데일리로 바르기 좋은컬러에요</p>
                          </div>
                        </div>
                        
                           
                        <div class="col-sm-12">
                           <p><b>Write Your Review</b></p>
                           <form action="#">
                              <span>
                                 <input type="text" placeholder="Your Name"/>
                                 <input type="email" placeholder="Email Address"/>
                              </span>
                              <textarea name="" ></textarea>
                              <!-- 평점주기 -->
                            <span class="star-input">
                             
							  <span class="input">
    							<input type="radio" name="star-input" value="1" id="p1">
    							<label for="p1">1</label>
    							<input type="radio" name="star-input" value="2" id="p2">
    							<label for="p2">2</label>
    							<input type="radio" name="star-input" value="3" id="p3">
    							<label for="p3">3</label>
    							<input type="radio" name="star-input" value="4" id="p4">
    							<label for="p4">4</label>
    							<input type="radio" name="star-input" value="5" id="p5">
    							<label for="p5">5</label>
  							  </span>
  							  <!-- <output for="star-input"><b>0</b>점</output> -->
  							 
  							  
							</span>
							
                              <button type="button" class="btn btn-default pull-right">
                                 Submit
                              </button>
                           </form>
                        </div>
                     </div>
                     
                  </div>
               </div><!--/category-tab-->
               
               
               <div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
               
            </div>
         </div>
      </div>
   </section>
	
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