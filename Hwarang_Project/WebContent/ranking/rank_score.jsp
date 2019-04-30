<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>별점별 목록</title>

<style type="text/css">
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

#features_items_custom {
	margin-top: -20px;
}

.star-rating {
	background:url('images/product-details/grade_final_forlist.png') repeat-x;
	width:104px; 
	height:20px; 
	display:block; 
	position:relative; 
	overflow:hidden;
}
.star-rating-percentage {
	background:url(images/product-details/grade_final_forlist.png)  repeat-x;
	background-position: 0 100%;
	position: absolute;
	top:0;
	left:0;
	display:block;
	height:20px;
}

</style>
</head>
<body>
	<section id="advertisement"> </section>

	<section>
	<div class="container">
		<div class="row">
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
									style="overflow: auto; width: 220px; height: 200px;">
									<ul>

										<li><a href="">스킨 </a></li>
										<li><a href="">로션 </a></li>
										<li><a href="">에센스 </a></li>
										<li><a href="">크림</a></li>
										<li><a href="">미스트 </a></li>
										<li><a href="">메이크업픽서 </a></li>
										<li><a href="">페이스오일 </a></li>
										<li><a href="">클렌징폼 </a></li>
										<li><a href="">클렌징오일 </a></li>
										<li><a href="">클렌징밀크 </a></li>
										<li><a href="">클렌징크림 </a></li>
										<li><a href="">클렌징워터 </a></li>
										<li><a href="">클렌징젤 </a></li>
										<li><a href="">스크럽/필링 </a></li>
										<li><a href="">포인트리무버 </a></li>
										<li><a href="">클렌징티슈 </a></li>
										<li><a href="">클렌징비누 </a></li>
										<li><a href="">클렌징 </a></li>
										<li><a href="">마스크시트 </a></li>
										<li><a href="">수면팩 </a></li>
										<li><a href="">워시오프 </a></li>
										<li><a href="">필오프 </a></li>
										<li><a href="">수딩젤/팩 </a></li>
										<li><a href="">코팩 </a></li>
										<li><a href="">쉐이빙 </a></li>
										<li><a href="">애프터쉐이브 </a></li>
										<li><a href="">마스크/팩 </a></li>
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
									style="overflow: auto; width: 220px; height: 200px;">
									<ul>
										<li><a href="">메이크업베이스</a></li>
										<li><a href="">톤업크림</a></li>
										<li><a href="">베이스프라이머</a></li>
										<li><a href="">포인트프라이머</a></li>
										<li><a href="">파운데이션</a></li>
										<li><a href="">비비크림</a></li>
										<li><a href="">씨씨크림</a></li>
										<li><a href="">쿠션타입</a></li>
										<li><a href="">컨실러</a></li>
										<li><a href="">팩트</a></li>
										<li><a href="">파우더</a></li>
										<li><a href="">트윈케익</a></li>
										<li><a href="">립스틱</a></li>
										<li><a href="">립글로스/락커</a></li>
										<li><a href="">립틴트</a></li>
										<li><a href="">립밤</a></li>
										<li><a href="">립라이너</a></li>
										<li><a href="">아이라이너-펜슬&젤</a></li>
										<li><a href="">아이라이너-리퀴드</a></li>
										<li><a href="">마스카라</a></li>
										<li><a href="">픽서/영양제</a></li>
										<li><a href="">아이섀도우</a></li>
										<li><a href="">아이브로우-펜슬</a></li>
										<li><a href="">아이브로우-파우더</a></li>
										<li><a href="">아이브로우-마스카라&리퀴드</a></li>
										<li><a href="">하이라이터</a></li>
										<li><a href="">쉐딩</a></li>
										<li><a href="">블러셔</a></li>
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
									style="overflow: auto; width: 220px; height: 200px;">
									<ul>
										<li><a href="">선블록</a></li>
										<li><a href="">선스프레이</a></li>
										<li><a href="">선스틱</a></li>
										<li><a href="">선쿠션</a></li>
										<li><a href="">태닝</a></li>
										<li><a href="">선케어</a></li>
										<li><a href="">링클케어</a></li>
										<li><a href="">트러블케어</a></li>
										<li><a href="">화이트닝케어</a></li>
										<li><a href="">모공케어</a></li>
										<li><a href="">아이케어</a></li>
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
									style="overflow: auto; width: 220px; height: 200px;">
									<ul>
										<li><a href="">바디워시</a></li>
										<li><a href="">바디스크럽</a></li>
										<li><a href="">바디로션</a></li>
										<li><a href="">바디크림</a></li>
										<li><a href="">바디오일</a></li>
										<li><a href="">바디미스트</a></li>
										<li><a href="">바디에센스</a></li>
										<li><a href="">바디밤/파우더</a></li>
										<li><a href="">핸드케어</a></li>
										<li><a href="">풋케어</a></li>
										<li><a href="">데오도란트</a></li>
										<li><a href="">목욕비누</a></li>
										<li><a href="">입욕제</a></li>
										<li><a href="">아로마테라피</a></li>
										<li><a href="">헤어/바디</a></li>
										<li><a href="">샴푸</a></li>
										<li><a href="">린스/컨디셔너</a></li>
										<li><a href="">트리트먼트/팩</a></li>
										<li><a href="">헤어소품</a></li>
										<li><a href="">헤어에센스</a></li>
										<li><a href="">헤어스타일링</a></li>
										<li><a href="">염색제/퍼머제</a></li>
										<li><a href="">헤어기기</a></li>
										<li><a href="">바디슬리밍</a></li>
										<li><a href="">제모제/용품</a></li>
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
									style="overflow: auto; width: 220px; height: 200px;">
									<ul>
										<li><a href="">네일컬러</a></li>
										<li><a href="">베이스/탑코트/퀵드라이</a></li>
										<li><a href="">네일아트/소품</a></li>
										<li><a href="">네일영양</a></li>
										<li><a href="">네일리무버</a></li>
										<li><a href="">컬러렌즈</a></li>
										<li><a href="">렌즈관리용품</a></li>
										<li><a href="">투명렌즈</a></li>
										<li><a href="">브러쉬</a></li>
										<li><a href="">스펀지/퍼프</a></li>
										<li><a href="">뷰러</a></li>
										<li><a href="">페이스소품</a></li>
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
									style="overflow: auto; width: 218px; height: 150px;">
									<ul>
										<li><a href="">여성향수</a></li>
										<li><a href="">남성향수</a></li>
										<li><a href="">방향제</a></li>
										<li><a href="">향초</a></li>
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
									style="overflow: auto; width: 218px; height: 150px;">
									<ul>
										<li><a href="">소형</a></li>
										<li><a href="">중형</a></li>
										<li><a href="">대형</a></li>
										<li><a href="">오버나이트</a></li>
										<li><a href="">팬티라이너</a></li>
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
									style="overflow: auto; width: 218px; height: 150px;">
									<ul>
										<li><a href="">베이비스킨케어</a></li>
										<li><a href="">베이비바디</a></li>
										<li><a href="">베이비클렌저/샴푸</a></li>
										<li><a href="">베이비선케어</a></li>
										<li><a href="">키즈제품</a></li>
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

					<%-- 
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b>$ 0</b> <b class="pull-right">$ 600</b>
							</div>
						</div><!--/price-range-->
						--%>
					<div class="shipping text-center">
						<!--shipping-->
						<img src="../images/home/SkinCondition.JPG" alt="" width=225px
							height=350px />
					</div>
					<!--/shipping-->

				</div>
			</div>

			<div class="col-sm-9 padding-right">
				<div class="features_items" id="features_items_custom">
					<!--features_items-->
					<h2 class="title text-center">Items</h2>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/shop/product12.jpg" alt="" />
									<h2>$56</h2>
									<p>이니스프리 / 화산송이마스크</p>
									<div class="star-rating" style="text-align: center">
											<div style="width:30%" class="star-rating-percentage"  style="display:inline-block"></div>
									</div>

								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											mypage</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/shop/product11.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/shop/product10.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/shop/product9.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/shop/product8.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>

							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/shop/product7.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/home/product6.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/home/product5.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/home/product4.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/home/product3.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>


					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/home/product2.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="../images/home/product1.jpg" alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											wishlist</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to
											compare</a></li>
								</ul>
							</div>
						</div>
					</div>

					<ul class="pagination">
						<li class="active"><a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">&raquo;</a></li>
					</ul>
				</div>
				<!--features_items-->
			</div>
		</div>
	</div>
	</section>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/star.js"></script>

</body>
</html>