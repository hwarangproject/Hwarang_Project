<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="description" content="">
<meta name="author" content="">

<title>GitHub made with TailwindCSS</title>


<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'>
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

/* $(function() {
	  $(".expand").on( "click", function() {
	    $(this).next().slideToggle(100);
	    $(".expand") = $(this).find(">:first-child");
	    
	    if($(".expand").text() == "+") {
	    	$(".expand").text("-");
	    } else {
	    	$(".expand").text("+");
	    }
	  });
	}); */

/* $(function() {
	  $(".expand").on( "click", function() {
	    $(this).next().slideToggle(100);
	    $expand = $(this).find(">:first-child");
	    
	    if($expand.text() == "+") {
	      $expand.text("-");
	    } else {
	      $expand.text("+");
	    }
	  });
	}); */
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


section.section2 {
	margin: 0px 0;
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

/* 네비게이션 메뉴바 */
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

/* 내 활동 댓글 시작 */
#item-list ul {
	padding: 0;
	margin: 20px 0;
	font-family: Arial, sans serif;
	color: #555;
}

#item-list ul>li {
	list-style: none;
	border-top: 1px solid #ddd;
	display: block;
	padding: 15px;
	overflow: hidden;
}

#item-list ul:last-child {
	border-bottom: 1px solid #ddd;
}

#item-list ul>li:hover {
	background: #efefef;
}

.expand {
	display: block;
	text-decoration: none;
	color: #555;
	cursor: pointer;
}

h2 {
	padding: 0;
	margin: 0 0 5px 0;
	font-size: 18px;
}

span {
	font-size: 14px;
}

.detail {
	margin: 20px 0 0 0;
	display: none;
	line-height: 22px;
}

.right-arrow {
	width: 10px;
	height: 10px;
	float: left;
	font-weight: bold;
	font-size: 20px;
	margin: 15px 15px 0 0;
}

.icon {
	height: 50px;
	width: 50px;
	float: left;
	margin: 0 15px 0 0;
}

/* 내 활동 끝 */

/* 최근본 상품 */
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
	-webkit-overflow-scrolling: touch; &:: -webkit-scrollbar { width : 16px;
	height: 16px;
}

&
::-webkit-scrollbar-thumb {
	background: hsla(203, 61%, 69%, .5);
	border-radius: 20px;
}

&
::-webkit-scrollbar-track {
	background: hsla(0, 0%, 82%, 0.5);
}

}
.item2 {
	width: 100px;
	height: 100px;
	display: inline-block;
	background-color: lightgray;
	margin: 0.5rem 0.25rem;
	border-radius: 5px;
	transition: opacity 500ms, transform 500ms; &[ data-scroll ="out"] {
	opacity : 0;
	transform: translateY(150px) scale(.4);
}

&
[data-scroll="in"] {
	opacity: 1;
	transform: translateY(0px) scale(1);
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

.pagination li a, .pagination li span {
    background-color: #fed7d791;
    border: 0;
    float: left;
    line-height: 1.42857;
    margin-left: -1px;
    padding: 6px 12px;
    position: relative;
    text-decoration: none;
    margin-right: 5px;
    color: #4a5568e0;
}
#Bold{
	font-size: 13px;
}

</style>
</head>
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
										<h1><b style="font-size: 26px">${vo.name }</b>님</h1>
										<h4>${vo.nickname }</h4>
										<p id="skt">${vo.skin_type }</p>
									</div>
									<div class="col2 last">
										<div class="grid clearfix">
											<div class="col3 first">
												<h1 id="number" style="font-size: 30px"><b>${likeMeCnt }</b></h1>
												<span id="Bold"><b>나를 즐겨찾기한 사용자</b></span>
											</div>
											<div class="col3">
												<h1 id="number" style="font-size: 30px"><b>${MelikeCnt }</b></h1>
												<span id="Bold"><b>내가 즐겨찾기한 사용자</b></span>
											</div>
											<div class="col3 last">
												<h1 id="number" style="font-size: 30px"><b>${productCnt }</b></h1>
												<span id="Bold"><b>내가 즐겨찾기한 상품</b></span>
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
                                          <a href='../pouch/pouch_detail.hr?pouch_no=${vo.pouch_no }'>
                                        MY POUCH
                                          </a>
									    </li>									    
									    <div class='marker'></div>
									  </ul>
									</nav>
								</div>
							</div>
						</section>
						<!-- ******메뉴 끝****** -->
						
						<section class="section2 clearfix">
							<div class="container" style="margin-top: 30px">
								<div class="row">
									<div>
										<!-- class="col-sm-12" -->
										<h3>내가 쓴 리뷰</h3>
										
										<div id="item-list">
											<c:forEach var="pvo" items="${pprList }" >
											<ul>
											  	<li>
													<a class="expand">
														<div class="right-arrow">+</div>
														<div class="icon london"><img src="${pvo.product_img }"></div>
														<a href="../product/product_detail.hr?pno=${pvo.product_no }"><h2>${pvo.product_name }</h2></a> 
														<span>${pvo.reply_content }</span>
													</a>

													 <div class="detail">
														<div>
															<span>${pvo.reply_content }</span>
														</div>
														
													</div> 
											  </li>	
																			
											</ul>
											</c:forEach>
										</div>
										<section>						 
										  <div class="pagination p1">
										      <ul class="pagination">
										        <c:if test="${curpage > BLOCK }">
								                    <li>
								                      <a href="../profile/profile_myactivity.hr?page=${startPage-1 }"><</a>
								                    </li>   
								                </c:if> 
								                <c:forEach var="i" begin="${startPage }" end="${endPage }">
								                    <li>
								                      <a href="../profile/profile_myactivity.hr?page=${i }">${i }</a>
								                    </li>
								                </c:forEach>
										        <c:if test="${endPage < allPage }">
							                      <li>
								                      <a href="../profile/profile_myactivity.hr?page=${endPage + 1 }">></a>
								                  </li>  
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
									</div>
									<div>
										<h3></h3>
									</div>

									<!-- <div class="col-sm-6">
			    	
			    </div> -->
									<div class="flex items-center">
										<div class="w-1/2 pt-6 pb-2 font-normal">
											<h3>최근 본 상품</h3>
										</div>
										<div
											class="w-1/2 pt-6 pb-2 justify-end text-right text-grey-dark text-sm font-light flex">
											<div>더 보기</div>
											<div class="">
												<svg class="fill-current text-grey-dark h-4 w-4"
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24">
										          <path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" />
										        </svg>
											</div>
										</div>
									</div>
									<div>
										<div class="recent_pro">
											<div id="app">
												<div class="flow" ref="flow">
												<%-- <c:forEach var="vo" items="${list }"> --%>
												<c:forEach var="cookies" items="${cookieList }">
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"> 
														 <a href="../product/product_detail.hr?pno=${cookies.product_no }"><img src="${cookies.product_img }" style="height:100px; width:100px;">
													</a></div>
												</c:forEach>
													<!-- <div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div>
													<div v-for="tab of tabs" class="item2"
														v-bind:style="{ backgroundImage: 'url(' + tab + ')' }"></div> -->
												</div>
											</div>

										</div>
									</div>
									<br><br><br>
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

</html>
