<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<meta name="description" content="">
<meta name="author" content="">

<title>HWARANG PROJECT</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('input[name="star-input"]').click(function() {
        var value = $(this).val();
     	$('#product_rate').attr('value',value);
    });
	
	$('.rupdateBtn').click(function(){
	      
	      var rno=$(this).attr("id");
	      $('#b'+rno).hide();
	      $('#a'+rno).show();

	   });
});
</script>

<!-- 내가 설정한 스타일 -->
<style type="text/css">
.a {
	border-bottom: 0.1px solid #B6B6B4;
	margin-top: 3px;
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
	padding: 25px;
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

.star-input>.input>label:hover ~label{
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
	url(https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

body {
	font-family: 'Roboto', Helvetica;
	color: #737373;
	font-weight: 300;
}

#rate-title {
	margin-left: 6em;
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

#cart_button {
	background: gray;
}

#like_button {
	background: gray;
}

</style>

</head>
<body>

	<div class="container">
		<div class="row">
			<!--/product-information-->
			<div class="col-sm-12 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img src=${vo.product_img } alt="" />
						</div>


					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<img src="images/product-details/new.jpg" class="newarrival"
								alt="" />
							<h1>${vo.product_name}</h1>
							<p>
								<img src="${vo.brand_img}" width=60 height=30> ${vo.brand }
							</p>

							<span> <span>${vo.cap_col } / ${vo.price }원</span>

							</span>
							<p>
								<b>카테고리:</b> ${dvo.detCategory_type }
							</p>
							<p>
								<b>판매처:</b> ${vo.sell_link }
							</p>
							<p>
								<b>컬러/타입:</b> ${vo.cap_col}
							</p>
							<p>
								<b>설명:</b> ${vo.description }
							</p>
							<p>
								<b>태그:</b> ${vo.tag }
							</p>
							<table class="table">
								<tr>
									<td class="text-center">
										<!-- 좋아요 --> 
										<c:if
											test="${sessionScope.id !=null && like_count !=1}">
											<a
												href="../profile/profile_like_insert.hr?pno=${vo.product_no }">
												<button type="button" class="btn btn-fefault cart">
													♥ 찜 하기</button>
											</a>
										</c:if> 
										<!-- 파우치에 담기 -->
										<c:if
											test="${sessionScope.id !=null  }">
											<a href="../profile/profile_pouch_product_insert_ok.hr?pno=${vo.product_no }">
												<button type="button" class="btn btn-fefault cart">
													★ Add to pouch
												</button>
											</a>
										</c:if>
										
										<c:if test="${sessionScope.id !=null && count!=0 }">
											<button type="button" class="btn btn-fefault cart" id="cart_button">
												★ Add to pouch
											</button>
										</c:if>
										
										<!--  cart 담기  --> 
										<c:if
											test="${sessionScope.id !=null && count==0 }">
											<a href="../cart/cart_ok.hr?pno=${vo.product_no }">
												<button type="button" class="btn btn-fefault cart">
													<i class="fa fa-shopping-cart"></i> Add to cart
												</button>
											</a>
										</c:if> 
										
										<c:if test="${sessionScope.id !=null && count!=0 }">
											<button type="button" class="btn btn-fefault cart"
												id="cart_button">
												<i class="fa fa-shopping-cart"></i> Add to cart
											</button>
										</c:if>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>

				<!-- 상세평점 출력 -->
				<h3 id="rate-title">평점</h3>
				<div class="con1">
					<div class="inner">

						<div class="rating">

							<span class="rating-num">${vo.score }</span><br>
							<div class="rating-stars">
								<c:if test="${vo.score<=5 && vo.score>4 }">
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
									 	<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="icon-star"></i>
									</span>
									&#9733;&#9733;&#9733;&#9733;&#9733;
								</c:if>
								
								<c:if test="${vo.score<=4 && vo.score>3 }">
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
									 	<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="icon-star"></i>
									</span>
									&#9733;&#9733;&#9733;&#9733;&#9734;
								</c:if>
								
								<c:if test="${vo.score<=3 && vo.score>2 }">
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
									 	<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="icon-star"></i>
									</span>
									&#9733;&#9733;&#9733;&#9734;&#9734;
								</c:if>
								
								<c:if test="${vo.score<=2 && vo.score>1 }">
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
									 	<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="icon-star"></i>
									</span>
									&#9733;&#9733;&#9734;&#9734;&#9734;
								</c:if>
								
								<c:if test="${vo.score<=1 && vo.score>0 }">
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
									 	<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="icon-star"></i>
									</span>
									&#9733;&#9734;&#9734;&#9734;&#9734;
								</c:if>
								
								<c:if test="${vo.score<=0 }">
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
									 	<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="active icon-star"></i>
									</span> 
									<span>
										<i class="icon-star"></i>
									</span>
									&#9734;&#9734;&#9734;&#9734;&#9734;
								</c:if>
							</div>
							<div class="rating-users">
								&#128077; <i class="icon-user"></i>${sum } total
							</div>
						</div>

						<div class="histo">
							<div class="five histo-rate">
								<span class="histo-star"> <i class="active icon-star"></i>
									10대
								</span> <span class="bar-block"> 
									<span class="bar text-center" style="width: 30%; background-color: #9FC05A;">
										<span>${vo.like_10 } ♥</span>&nbsp;
									</span>
								</span>
							</div>

							<div class="four histo-rate">
								<span class="histo-star"> <i class="active icon-star"></i>
									20대
								</span> <span class="bar-block"> 
									<span class="bar text-center" style="width: 30%; background-color: #ADD633;">
										<span>${vo.like_20 } ♥</span>&nbsp;
									</span>
								</span>
							</div>

							<div class="three histo-rate">
								<span class="histo-star"> <i class="active icon-star"></i>
									30대
								</span> 
								<span class="bar-block"> 
									<span class="bar text-center" style="width: 30%; background-color: #FFD834;"> 
											<span>${vo.like_30 } ♥</span>&nbsp;
									</span>
								</span>
							</div>

							<div class="two histo-rate">
								<span class="histo-star"> <i class="active icon-star"></i>
									40대
								</span> <span class="bar-block"> 
									<span class="bar text-center" style="width: 30%; background-color: #FFB234;">
										<span>${vo.like_40 } ♥</span>&nbsp;
									</span>
								</span>
							</div>

							<div class="one histo-rate">
								<span class="histo-star"> <i class="active icon-star"></i>
									50대
								</span> <span class="bar-block"> 
									<span class="bar text-center" style="width: 30%; background-color: #FF8B5A;">
										<span>${vo.like_50 } ♥</span>&nbsp;
									</span>
								</span>
							</div>
						</div>
					</div>
				</div>


				<div class="tab-pane fade active in" id="reviews">
					<c:forEach var="prvo" items="${prList }">
						<c:if test="${sessionScope.id == prvo.id }">
							<!-- 아이디 같을때 수정, 삭제 -->
							<div class="col-sm-12">
								<div class="a before" id="b${prvo.reply_no }">
									<ul>
										<li>
											<a href=""><img src="${prvo.profile_img }" width=30 height=30 class="img-circle">
												&nbsp;&nbsp;${prvo.id }
											</a>
										</li>
										<li>
											<a href="">
												성별:${prvo.sex} / 피부타입:${prvo.skin_type} / 연령대:${prvo.age_group}대 / 별점:${prvo.product_rate }
											</a>
										</li>
										<li class="text-right">
										<a href="#" class="btn btn-xs btn-success rupdateBtn" id="${prvo.reply_no}">수정</a> 
										<a href="../product/product_reply_delete.hr?rno=${prvo.reply_no }&pno=${vo.product_no }" class="btn btn-xs btn-danger">삭제</a>
										</li>
									</ul>
									<p>${prvo.reply_content}</p>
									<input type="hidden" name="rno" value="${prvo.reply_no }">
								</div>
								<div class="a after" id="a${prvo.reply_no }" class="rupdate"
									style="display: none">
									<form method="post" action="../product/product_reply_update.hr">
										<ul>
											<li><a href=""><img src="${prvo.profile_img }"
													width=30 height=30 class="img-circle"></img>&nbsp;&nbsp;${prvo.id }</a></li>
											<li><a href=""></i>성별:${prvo.sex} /
													피부타입:${prvo.skin_type} / 연령대:${prvo.age_group}대 /
													별점:${prvo.product_rate }</a></li>
											<li class="text-right"><input type="submit" value="수정">
												<a href="#" class="btn btn-xs btn-success">취소</a> <input
												type="hidden" name="rno" value="${prvo.reply_no }">
												<input type="hidden" name="pno" value="${vo.product_no }">
											</li>
										</ul>
										<textarea name="reply_content">${prvo.reply_content}</textarea>
									</form>
								</div>
							</div>
						</c:if>
						<c:if test="${sessionScope.id != prvo.id }">
							<div class="col-sm-12">
								<div class="a">
									<ul>
										<li><a href=""><img src="${prvo.profile_img }"
												width=30 height=30 class="img-circle"></img>&nbsp;&nbsp;${prvo.id }</a></li>
										<li><a href="">성별:${prvo.sex} /
												피부타입:${prvo.skin_type} / 연령대:${prvo.age_group}대 /
												별점:${prvo.product_rate }</a></li>
									</ul>
									<p>${prvo.reply_content}</p>
									<input type="hidden" name="rno" value="${prvo.reply_no }">
								</div>
							</div>
						</c:if>
					</c:forEach>
					<div class="col-sm-12">
						<p>
							<b>Write Your Review</b>
						</p>
						<c:if test="${sessionScope.id != null }">
							<form method="post" action="../product/product_reply_insert.hr">
								<textarea name="reply_content"></textarea>
								<input type="hidden" name="pno" value="${vo.product_no}">

								<!-- 평점주기 -->
								<span class="star-input"> <span class="input"> <input
										type="radio" name="star-input" value="1" id="p1"> <label
										for="p1">1</label> <input type="radio" name="star-input"
										value="2" id="p2"> <label for="p2">2</label> <input
										type="radio" name="star-input" value="3" id="p3"> <label
										for="p3">3</label> <input type="radio" name="star-input"
										value="4" id="p4"> <label for="p4">4</label> <input
										type="radio" name="star-input" value="5" id="p5"> <label
										for="p5">5</label>
								</span> <input type="hidden" id="product_rate" name="product_rate"
									value="5"> <!-- <output for="star-input"><b>0</b>점</output> -->
								</span>

								<button type="submit" class="btn btn-default pull-right">
									Submit</button>
							</form>
						</c:if>
						
						<c:if test="${sessionScope.id == null }">

							<textarea name="reply_content2">
                                                             로그인이 필요합니다
                            </textarea>

						</c:if>
					</div>
				</div>

			</div>
		</div>



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
										<img src="../images/home/recommand1.jpg" alt="" />
										<p>1등 상품</p>
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
										<img src="../images/home/recommand2.jpg" alt="" />
										<p>2등 상품</p>
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
										<img src="../images/home/recommand3.jpg" alt="" />
										<p>3등 상품</p>
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
										<img src="../images/home/recommand4.jpg" alt="" />
										<p>4등 상품</p>
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
										<img src="../images/home/recommand5.jpg" alt="" />
										<p>5등 상품</p>
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
										<img src="../images/home/recommand6.jpg" alt="" />
										<p>6등 상품</p>
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

	</div>
	</section>
</body>
</html>