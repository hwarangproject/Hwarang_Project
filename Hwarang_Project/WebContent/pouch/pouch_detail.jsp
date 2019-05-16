<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">
<link href="../css/pouch.css" rel="stylesheet">


<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="../images/ico/favicon.ico">
<link href="../css/profile-upload.css" rel="stylesheet">

<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.scrollUp.min.js"></script>
<script src="../js/price-range.js"></script>
<script src="../js/main.js"></script>
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/star.js"></script>

<style type="text/css">
#pag {
	padding-left: 450px;
}

.scrollbar {
	float: left;
	height: 250px;
	width: 65px;
	overflow-y: scroll;
	margin-bottom: 1px;
}

#style-6::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #FFB9B9;
}

#style-6::-webkit-scrollbar {
	width: 5px;
	background-color: #FFB9B9;
}

#style-6::-webkit-scrollbar-thumb {
	background-color: #FFB9B9;
	background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .2)
		25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .2) 50%,
		rgba(255, 255, 255, .2) 75%, transparent 75%, transparent)
}

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

#custom_pouch {
	display: inline;
}

#introduce {
	padding-left: 0px auto;
}

* {
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-webkit-tap-highlight-color: transparent;
	box-sizing: border-box;
}

html, body {
	height: 100%;
	zoom: reset;
	background: white;
	font-family: Montserrat;
}

input[type=checkbox] {
	clear: both;
	display: none;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]+label {
	z-index: 100;
	overflow: hidden;
	width: 4em;
	text-align: center;
	cursor: pointer;
	-webkit-transition: all 300ms ease;
	width: 4em;
}

input[type="checkbox"]+label:before {
	content: '';
	z-index: -1;
	position: absolute;
	background: rgb(220, 72, 127);
	width: 100%;
	height: 100%;
	border-radius: 50%;
	top: 0;
	left: 0;
	transform: scale(0);
	-webkit-ransform: scale(0);
}

input[type="checkbox"]+label:after {
	content: '';
	z-index: -1;
	position: absolute;
	background: white;
	width: 100%;
	height: 100%;
	border-radius: 50%;
	top: 0;
	left: 0;
	transform: scale(0);
	-webkit-transform: scale(0);
}

input[type="checkbox"]:checked+label svg {
	-webkit-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
	fill: rgb(220, 72, 127);
	transform: scale(1.3);
	-webkit-transform: scale(1.3);
}

input[type="checkbox"]:checked+label:after {
	-webkit-animation: like-a 0.3s 0.2s forwards;
	-moz-animation: like-a 0.3s 0.2s forwards;
	animation: like-a 0.3s 0.2s forwards;
}

input[type="checkbox"]:checked+label:before {
	-webkit-animation: like-a 0.5s 0s forwards;
	-moz-animation: like-a 0.5s 0s forwards;
	animation: like-a 0.5s 0s forwards;
}

label svg {
	display: inline-flex;
	vertical-align: middle;
	width: 20px;
	fill: rgb(167, 167, 167);
}

a {
	text-decoration: none;
	color: rgb(220, 72, 127);
}

a:hover {
	transition: none;
	border-bottom: 1px solid rgb(220, 72, 127);
}

@
-webkit-keyframes like-a { 100% {
	-webkit-transform: scale(1.03);
	transform: scale(1.03);
	-moz-transform: scale(1.03);
}

}
@
-moz-keyframes like-a { 100% {
	-webkit-transform: scale(1.03);
	transform: scale(1.03);
	-moz-transform: scale(1.03);
}

}
@
keyframes like-a { 100% {
	-webkit-transform: scale(1.03);
	transform: scale(1.03);
	-moz-transform: scale(1.03);
}

}
img {
	display: block;
	margin: 0px auto;
}

.star-rating {
	background: url('images/product-details/grade_final_forlist.png')
		repeat-x;
	width: 104px;
	height: 20px;
	display: block;
	position: relative;
	overflow: hidden;
}

.star-rating-percentage {
	background: url(images/product-details/grade_final_forlist.png) repeat-x;
	background-position: 0 100%;
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	height: 20px;
}

#star {
	float: left;
}

/* 평점 css*/
.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('../images/product-details/grade_final_forlist.png')
		no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 0px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 250px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	font-size: 18px;
	text-align: left;
	vertical-align: middle;
}

/* 상세평점 출력 */
@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,400);

@import
	url(https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css)
	;

body {
	font-family: 'Roboto', Helvetica;
	color: #737373;
	font-weight: 300;
}

#rate-title {
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

.a {
	border-bottom: 0.1px solid #B6B6B4;
	margin-top: 3px;
}

#r_content {
	background: #F0F0E9;
	border: medium none;
	color: #A6A6A1;
	height: 195px;
	margin-bottom: 0px;
	margin-top: 15px;
	outline: medium none;
	padding-left: 10px;
	padding-top: 15px;
	resize: none;
	width: 99.5%;
}

#intro-top {
	border: 1px solid #F7F7F0;
}

h2 {
	color: #FB4C22;
}
</style>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12padding-right">
				<div class="features_items">
					<h2 class="title text-center">POUCH</h2>
					<div class="col-sm-12">
						<!-- 개인 정보 -->
						<form action="pouch_detail.hr" method="post">

							<div class="product-details">
								<div class="row text-center" id="intro-top">
									<div id="introduce">
										<div class="tab-pane fade active in">
											<div class="col-sm-8">
												<section class="section1 clearfix">
												<div>
													<div class="row grid clearfix">
														<div class="col2 first">
															<img id="profile_img" src="${vo.profile_img }"
																style="width: 180px; height: 180px;">
														</div>

														<div class="col2 last">
															<div class="grid clearfix">
																<div class="col3 first">
																	<a href="#" style="color: gray;"> <span>회원ID</span>
																		<h2>${vo.nickname }</h2></a>
																</div>
																<div class="col3">
																	<span>피부타입</span>
																	<h1>${vo.skin_type }</h1>

																</div>
																<div class="col3 last">
																	<span>좋아요<font style="color: pink;">♡</font></span>
																	<h1>${vo.pouch_like }</h1>
																	<td><input type="checkbox" id="like" /> <label
																		for="like"> <svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 25 25"> <path
																				d="M12 21.35l-1.45-1.32c-5.15-4.67-8.55-7.75-8.55-11.53 0-3.08 2.42-5.5 5.5-5.5 1.74 0 3.41.81 4.5 2.09 1.09-1.28 2.76-2.09 4.5-2.09 3.08 0 5.5 2.42 5.5 5.5 0 3.78-3.4 6.86-8.55 11.54l-1.45 1.31z" />
																			</svg>
																	</label></td> <br> <br> <br> <br>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
										</div>
										</section>
									</div>

									<td>
										<div class="col-sm-4">
											<h2 class="subject_intro">
												제목
												<h4>${vo.pouch_name }</h4>
											</h2>
										</div>
									</td>

								</div>

								<td>
									<div class="col-sm-12">
										<h2 class="subject_intro" class="text-center">
											파우치 소개
											<h4>${vo.pouch_content }</h4>
										</h2>
									</div>
								</td>

							</div>





							<!--product-details-->
							<div class="row">
								<div class="col-sm-12">
									<div class="product-information">
										<!--/product-information-->
										<div class="left-sidebar">
											<h2>화장품 목록</h2>
											<div class="panel-group category-products" id="accordian">
												<%-- <c:forEach var="pouch" items=""> --%>
												<div class='product--pink '>
													<div class='product_inner'>
														<img
															src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png'
															width='300'>
														<td>나이키</td> <br>
														<td>Size 11</td> <br>
														<td>Price £299.99</td> <br>
														<button class="text-center">MORE +</button>
													</div>
													<div class='product_overlay'>
														<h2>Added to basket</h2>
														<i class='fa fa-check'></i>
													</div>
												</div>
												<%-- 	</c:forEach> --%>
											</div>
											<tr>
												<td class="text-center in" valign="top">
													<ul class="pagination pagination-sm" style="padding: 0px">
														<c:if test="${curpage>BLOCK }">
															<li><a href="../pouch/pouch_detail.hr?page=1"> <font
																	style="color: #FFB9B9;">◀◀</font>
															</a></li>
															<li><a
																href="../pouch/pouch_detail.hr?page=${startPage-1 }">
																	<font style="color: #FFB9B9;">◀</font>
															</a></li>
														</c:if>

														<c:set var="type" value="" />
														<c:forEach var="i" begin="${startPage }" end="${endPage }">
															<c:if test="${curpage==i }">
																<c:set var="type" value="class=active" />
															</c:if>
															<c:if test="${curpage!=i }">
																<c:set var="type" value="" />
															</c:if>
															<li ${type }><a
																href="../pouch/pouch_detail.hr?page=${i }">${i+1 }</a></li>
														</c:forEach>

														<c:if test="${endPage<allPage }">
															<li><a
																href="../pouch/pouch_detail.hr?page=${endPage+1 }">
																	<font style="color: #FFB9B9;">▶</font>
															</a></li>
															<li><a
																href="../pouch/pouch_detail.hr?page=${allPage }"> <font
																	style="color: #FFB9B9;">▶▶</font>
															</a></li>
														</c:if>
													</ul>
												</td>
											</tr>
										</div>
										<table class="table text-right">
											<tr>
												<td><input type="submit" value="수정"
													class="btn btn-sm btn-primary" /> <input type="button"
													value="취소" onclick="javascript:history.back()"
													class="btn btn-sm btn-primary" /></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 상세평점 출력 -->
	<div class="container">
		<div class="con1">
			<div class="inner">
				<c:forEach var="score" items="${pList}">
					<div class="rating">
						<span class="rating-num">${score.pouch_score }</span><br>
						<div class="rating-stars">
							<span><i class="active icon-star"></i></span> <span><i
								class="active icon-star"></i></span> <span><i
								class="active icon-star"></i></span> <span><i
								class="active icon-star"></i></span> <span><i class="icon-star"></i></span>
							&#9733;&#9733;&#9733;&#9733;&#9734;
						</div>
						<div class="rating-users">
							&#128077; <i class="icon-user"></i> 1,014,004 total
						</div>
					</div>

					<div class="histo">
						<div class="five histo-rate">
							<span class="histo-star"> <i class="active icon-star"></i>
								5
							</span> <span class="bar-block"> <span id="bar-five" class="bar">
									<span>566,784</span>&nbsp;
							</span>
							</span>
						</div>

						<div class="four histo-rate">
							<span class="histo-star"> <i class="active icon-star"></i>
								4
							</span> <span class="bar-block"> <span id="bar-four" class="bar">
									<span>171,298</span>&nbsp;
							</span>
							</span>
						</div>

						<div class="three histo-rate">
							<span class="histo-star"> <i class="active icon-star"></i>
								3
							</span> <span class="bar-block"> <span id="bar-three" class="bar">
									<span>94,940</span>&nbsp;
							</span>
							</span>
						</div>

						<div class="two histo-rate">
							<span class="histo-star"> <i class="active icon-star"></i>
								2
							</span> <span class="bar-block"> <span id="bar-two" class="bar">
									<span>44,525</span>&nbsp;
							</span>
							</span>
						</div>

						<div class="one histo-rate">
							<span class="histo-star"> <i class="active icon-star"></i>
								1
							</span> <span class="bar-block"> <span id="bar-one" class="bar">
									<span>136,457</span>&nbsp;
							</span>
							</span>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!--/product-details-->
	<div class="container">
		<div class="category-tab shop-details-tab">

			<!--category-tab-->
			<div class="col-sm-12">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#reviews" data-toggle="tab">Reviews(2)</a></li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane fade active in" id="reviews">
					<table>
						<c:forEach var="revo" items="${reList }">
                        	<c:if test="${sessionScope.id == revo.id }"> <!-- 아이디 같을때 수정, 삭제 -->
	                          <div class="col-sm-12">
		                          <div class="a before" id="b ${revo.pouch_reply_no }">
		                           <ul>
		                              <li><a href=""><img src="${revo.profile_img }" width=30 height=30 class="img-circle"></img>&nbsp;&nbsp;${revo.id }</a></li>
		                              <li><a href=""></i>성별:${revo.sex} / 피부타입:${revo.skin_type} / 연령대:${revo.age_group}대 / 별점:${revo.pouch_rate }</a></li>
		                              <li class="text-right">				              
						                <a href="#" class="btn btn-xs btn-success rupdateBtn" id="${revo.pouch_reply_no}">수정</a>
						                <a href="../pouch/pouch_reply_delete.hr?pouch_reply_no=${revo.pouch_reply_no }&pouch_no=${vo.pouch_no }" class="btn btn-xs btn-danger" >삭제</a>
                     	              </li>
		                           </ul>
		                           <p>${revo.content}</p>
		                           <input type="hidden" name="rno" value="${revo.pouch_reply_no }">
		                          </div>
		                          <div class="a after" id="a${revo.pouch_reply_no }" class="rupdate" style="display:none">
		                           <form method="post" action="../pouch/pouch_reply_update.hr">
		                           <ul>
		                              <li><a href=""><img src="${revo.profile_img }" width=30 height=30 class="img-circle"></img>&nbsp;&nbsp;${revo.id }</a></li>
		                              <li><a href=""></i>성별:${revo.sex} / 피부타입:${revo.skin_type} / 연령대:${revo.age_group}대 / 별점:${revo.pouch_rate }</a></li>
		                              <li class="text-right">	
		                               
		                                <input type="submit" value="수정">			              
						                <a href="#" class="btn btn-xs btn-success">취소</a>
						                <input type="hidden" name="pouch_reply_no" value="${revo.pouch_reply_no }">
						                <input type="hidden" name="pouch_no" value="${vo.pouch_no }">
                     	              </li>                    	              
		                           </ul>
		                           <textarea name="content">${revo.content}</textarea>
		                           </form>
		                          </div>
		                         
	                          </div>
	                        </c:if>
	                        <c:if test="${sessionScope.id != revo.id }"> 
	                          <div class="col-sm-12">
		                          <div class="a">
		                           <ul>
		                              <li><a href=""><img src="${revo.profile_img }" width=30 height=30 class="img-circle"></img>&nbsp;&nbsp;${revo.id }</a></li>
		                              <li><a href=""></i>성별:${revo.sex} / 피부타입:${revo.skin_type} / 연령대:${revo.age_group}대 / 별점:${revo.pouch_rate }</a></li>
		                           </ul>
		                           <p>${revo.content}</p>
		                           <input type="hidden" name="rno" value="${revo.pouch_reply_no }">
		                          </div>
	                          </div>            
	                        </c:if> 
                        </c:forEach>
                      <div class="col-sm-12">
                           <p><b>Write Your Review</b></p>
                          <c:if test="${sessionScope.id != null }">
                           <form method="post" action="../pouch/pouch_reply_insert.hr">
                              <textarea name="content" ></textarea>
                              <input type="hidden" name="pno" value="${vo.pouch_no}">
                           
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
  							  <input type="hidden" id="pouch_rate" name="pouch_rate" value="5">
  							  <!-- <output for="star-input"><b>0</b>점</output> -->
							</span>
							
                              <button type="submit" class="btn btn-default pull-right">
                                 Submit
                              </button>
                            </form> 
                          </c:if>
                          <c:if test="${sessionScope.id == null }">
                           
                              <textarea name="content2" >
                                                             로그인이 필요합니다
                              </textarea>
                              
                          </c:if>
                        </div>
                     </div>
                     
                  </div>
               </div><!--/category-tab-->


	<div class="recommended_items">
		<!--recommended_items-->
		<h2 class="title text-center">recommended items</h2>

		<div id="recommended-item-carousel" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="item active">
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="images/home/recommend1.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
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
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
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
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
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
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
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
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
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
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<a class="left recommended-item-control"
				href="#recommended-item-carousel" data-slide="prev"> <i
				class="fa fa-angle-left"></i>
			</a> <a class="right recommended-item-control"
				href="#recommended-item-carousel" data-slide="next"> <i
				class="fa fa-angle-right"></i>
			</a>
		</div>
	</div>
	<!--/recommended_items-->
	</section>
</body>
</html>