<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
/* $(function(){
	$('a #marginForHover').hover(function() {
		  $(this).css("background-color", "#ffb9b996");
		});
	

}); */

$(function(){
	var no=0;
	$('.phover').hover(function(){  // tr태그에 갔다댔을 때
		no=$(this).attr("id");
		// 50개 mc중 갔다댄게 this.
		no=no.substring(1);
		$('#h'+no).css("background-color", "#ffb9b996");
	},function(){ // else
		$('#h'+no).css("background-color", "#fff");
	})
})

</script>
<style type="text/css">

body {
/* 	padding: 1em; */
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 15px;
	color: #808080;
	/*background-color: #e3e3e3;*/
}

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
	height: 120px;
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
  left: 20%;
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
  .choose ul li a {
    color: #B3AFA8;
    font-family: 'Roboto', sans-serif;
    font-size: 13px;
    padding-left: 75px;
    padding-right: 0;
}
  
  /* title */

/* 별점 */
.star-rating {
	background:url('../images/ranking/grade_final_forlist.png') repeat-x;
	width:104px; 
	height:20px; 
	display:block; 
	margin-top:0px;
	margin-left:75px;
	margin-bottom:15px;
	position:relative;
	overflow:hidden;
}
.star-rating-percentage {
	background:url(../images/ranking/grade_final_forlist.png)  repeat-x;
	background-position: 0 100%;
	position: relative;
	width:104px; 
	height:20px; 
	display:block;

}

/*  파우치 즐겨찾기  */
.app-container,
.profile,
.app-tabs,
.app-tabs__item {
  display: flex;
}

.app-container {
  border-radius: 5px;
  background: #fff;
  border-color: #f7f7f5;
}

.app-content {
  padding: 40px 100px;
  max-width: 1500px;
  width: 1200px;
}
.app-content__title {
  position: relative;
  font-size: 12px;
  color: #F14C36;
  text-transform: uppercase;
  margin: 25px 0;
}
.app-content__title::after {
  position: absolute;
  content: " ";
  width: 900px;
  height: 1px;
  background: #f5f5f5;
  right: 0;
  top: 6px;
}

.friends-container {
  /* overflow-y: auto; */
  overflow-x: hidden;
  height: 320px;
}
.friends-container::-webkit-scrollbar {
  width: 4px;
}
.friends-container::-webkit-scrollbar-thumb {
  border-radius: 10px;
  background-color: #ffb9b9;
}
.friends-container::-webkit-scrollbar-track {
  border-radius: 10px;
  background-color: #EBEBEB;
}

.profile {
  position: relative;
  align-items: center;
  margin-right: 20px;
}
.profile--padding {
  padding: 10px;
}
.profile__img {
  position: relative;
  margin-right: 20px;
}
.profile__img__online, .profile__img__offline {
  position: absolute;
  height: 17px;
  width: 17px;
  background: #D4F618;
  border-radius: 5%;
  bottom: 15px;
  right: 0;
}
.profile__img__offline {
  background: #F14C36;
}
.profile__img img {
  border-radius: 100%;
  width: 90px;
  heigth: 90px;
}
.profile__options {
  position: absolute;
  right: 0;
  top: 20px;
}
.profile__info {
  padding-bottom: 5px;
  margin-right: 70px;
}
.profile__info--bordered {
  border-bottom: 1px solid #f9f9f9;
}
.profile__info__name {
  color: #484848;
  font-size: 16px;
  margin: 0;
}
.profile__info__contact {
  color: #A4A4A4;
  font-size: 14px;
  margin-top: 7px;
}
  
/*  pagination  */
.pagination{
  padding: 20px 400px;
}

.pagination ul{
  margin: 0;
  padding: 0;
  list-style-type: none;
}

.pagination a{
  display: inline-block;
  padding: 10px 18px;
  color: #222;
}
.p1 a{
  width: 40px;
  height: 40px;
  line-height: 40px;
  padding: 0;
  text-align: center;
}

.p1 a:hover{
  background-color: #ffb9b99e;
  border-radius: 100%;
  color: #fff;
}

.p1 a.is-active{
  background-color: #ffb9b9;
  border-radius: 100%;
  color: #fff;
}

<%--브랜드 로고 사진 --%> 
img.content-image{
	border:0;
	height:100px;
}

/* ul, li {
	float: left;
} */

.content1 {
  position: relative;
  width:90%;
  max-width: 250px;
  margin: auto;
  overflow: visible;
}

.content1 .content-overlay {
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

.content1:hover .content-overlay{
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

.content1:hover .content-details{
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

#prod_container{
  width: 168px;
  height: 257px;
}

#prod_name{
  width: 200px;
  height: 330px;
}

/* #marginForHover {
  padding: 15px;
  background-color: #4a556866;
  color: #fff;
}  */


</style>


</head>

<body>
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
											src="${vo.profile_img }"
											alt="" width=120px height=120px>
										<h1>${vo.name }</h1>
										<h4>${vo.nickname }</h4>
										<p>${vo.skin_type }</p>
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
									      <a href='profile_myactivity.hr'>
									        나의 활동
									      </a>
									    </li>
									    <li>
									      <a href='profile_like.hr'>
									        즐겨찾기
									      </a>
									    </li>
									    <li>
									      <a href='profile_info_pwdCheck.hr'>
									        내 정보
									      </a>
									    </li>
									    <li>
									     <c:choose>
											  <c:when test = '${vo.pouch_no == 0}'>
											    <a href='profile_pouch.hr'>MY POUCH</a>
											  </c:when>
											  <c:otherwise>
											    <a href='../pouch/pouch_detail.hr?pouch_no=${vo.pouch_no }'>MY POUCH</a>
											  </c:otherwise>
									      </c:choose>	
									    </li>									    
									    <div class='marker'></div>
									  </ul>
									</nav>
								</div>
							</div>
						</section>
		
						<!-- 회원정보 -->
						<section class="section2 clearfix"><br><br>
						<h3>PRODUCT</h3><br><br>
						 
						  <c:forEach var="pvo" items="${lpList }">
							<div class="col-sm-2" id="prod_name">
								<div class="product-image-wrapper">	
									<div class="single-products">
										<div class="productinfo text-center" id="prod_container">
										
											<a href="../product/product_detail.hr?pno=${pvo.product_no }">
											<img src="${pvo.product_img }" alt="" style="width: 168px; height:168px;" />
											<h5>${pvo.brand }</h5><br/>
											<h5><b>${pvo.product_name.length()>30? pvo.product_name.substring(1,30)+="...":pvo.product_name }</b></h5>
											</a>
											<p>${pvo.price }원</p>		
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href='likeProduct_delete.hr?mno=${pvo.member_no }&pno=${pvo.product_no}'><img src="https://image.flaticon.com/icons/svg/812/812853.svg" height="20" width="20"></a></li>												
										</ul>
									</div>
								</div>
							</div>
					     </c:forEach>
					     
						</section>
						<section>						 
						  <div class="pagination p1">						    
						    <ul class="pagination">
					        <c:if test="${curpage > BLOCK }">
					           <a href="../profile/profile_like.hr?page=${startPage-1 }"><li><</li></a>
			                </c:if> 
			                <c:forEach var="i" begin="${startPage }" end="${endPage }">
					           <a class="is-active" href="../profile/profile_like.hr?page=${i }"><li>${i }</li></a> 
					        </c:forEach> 
					        <c:if test="${endPage < allPage }">
					           <a href="../profile/profile_like.hr?page=${endPage + 1}"><li>></li></a>
		                    </c:if>
					       <!--  <a class="is-active" href="#"><li>1</li></a>
					        <a href="#"><li>2</li></a>
					        <a href="#"><li>3</li></a>
					        <a href="#"><li>4</li></a>
					        <a href="#"><li>5</li></a>
					        <a href="#"><li>6</li></a>
					        <a href="#"><li>></li></a> -->
					      </ul>	
					     </div>				    
						</section>
						
						<section>
						  <h3>POUCH</h3>
						  <div class="app-container">
							  <div class="app-content">
							    <div class="friends-container">
							     <c:forEach var="povo" items="${povoList}" varStatus="s">
							      <a href="../pouch/pouch_detail.hr?pouch_no=${povo.pouch_no }"  >
							      <article class="profile profile--padding phover" id="h${povo.pouch_no }">
							        <div class="profile__img"><img src="${povo.pouch_img }" style="width:90px; height:90px"/>
							        </div>
							        <div class="profile__info profile__info--bordered">
							          <h3 class="profile__info__name">${mList[s.index].nickname }</h3><h6><b>${pouch_score }</b></h6>
							          <p class="profile__info__contact">${mList[s.index].email }</p>
							        </div>
							      </article>
							      </a>
							     </c:forEach>
							    </div>
							  </div>
							</div>
						</section>
						
						<br><br>
						<%-- <section>
						  <h3>BRAND</h3>
						    <div class="col-sm-3">
								<div class="content1">
									<a href="../brand/brand_main.hr?brand=${vo.brand_like }" target="_blank">
										<div class="content-overlay"></div>
											<img src="${brandImg }" class="content-image" width=100px
												height=80px>
										<div class="content-details fadeIn-bottom">
											<h3 class="content-title">${vo.brand_like }</h3>
										</div>
									</a>
								</div>
							</div>
						</section> --%>
						
					</div>
				</div>
					

			</div>
		</div>
	</div>

</body>


</body>

</html>
