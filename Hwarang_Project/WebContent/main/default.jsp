<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico" />
<style type="text/css">
#recommend_img{
	width: 50%;
}
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
#star_rating_recommend{
	margin-left:130px;
}
#today_item {
	width: 300px;
	height: 300px;
	margin-left: 100px;
	margin-right: 10px;
	margin-bottom: 50px;
	margin-top: 20px;
}
#item_active_h1 {
	margin-top: 80px;
}
</style>

</head>
<body>
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
							<li data-target="#slider-carousel" data-slide-to="3"></li>
							<li data-target="#slider-carousel" data-slide-to="4"></li>
						</ol>
						
						<div class="carousel-inner">
						<c:forEach var="vo" items="${productList_RandomData }" varStatus="s">
							<c:if test="${s.index==0 }">
								<div class="item active">
									<div class="col-xs-6">
										<h1 id="item_active_h1">
											<span>H</span>warang
										</h1>
										<h2>오늘의 상품</h2>
										<p>${vo.product_name }</p>
										<p>${vo.description.length()>100? vo.description.substring(1,100)+="...":vo.description }</p>
										<a href="../product/product_detail.hr?pno=${vo.product_no }">
											<button type="button" class="btn btn-default get">보러가기</button>
										</a>
									</div>
									<div class="col-xs-6">
										<img src="${vo.product_img }" class="girl img-responsive" id="today_item"/>
									</div>
								</div>
							</c:if>
						</c:forEach>
							
							<c:forEach var="vo" items="${productList_RandomData }" varStatus="s">
	             				<c:if test="${s.index>0 }">
	                  				<div class="item">
										<div class="col-xs-6" id="custom_slider">
											<h1>
												<span>H</span>warang
											</h1>
											<h2>오늘의 상품</h2>
											<p>${vo.product_name }</p>
											<p>${vo.description.length()>100? vo.description.substring(1,100)+="...":vo.description }</p>
											<a href="../product/product_detail.hr?pno=${vo.product_no }">
												<button type="button" class="btn btn-default get">보러가기</button>
											</a>
										</div>
										<div class="col-xs-6">
											<img src="${vo.product_img }" class="girl img-responsive" id="today_item"/>
										</div>
									</div>
								</c:if>
							</c:forEach>			
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->

	<!-- 상품 출력 부분 -->
	<!-- TOP RANKING -->
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">TOP RANKING</h2>

				<c:forEach var="vo" items="${productList_RandomData }" varStatus="s">
					<c:if test="${s.index<4 }">
					<div class="col-xs-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<a href="../product/product_detail.hr?pno=${vo.product_no }">
										<img src=${vo.product_img } alt=""  width="250" height="250"/>
									</a>
									<h2>${vo.price }원</h2>
									<p>${vo.product_name.length()>13? vo.product_name.substring(1,13)+="...":vo.product_name }</p>
									<div class="star-rating" style="text-align: center">
											<div style="width:${vo.score*20 }%;" class="star-rating-percentage" style="display:inline-block"></div>
									</div>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href="../cart/main_cart_ok.hr?pno=${vo.product_no }"><i class="fa fa-plus-square"></i>Add
											to cart</a></li>
									<li><a href="#"><i class="fa fa-plus-square"></i>Add
											to pouch</a></li>
								</ul>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>

				</div>
			</div>
		</div>

		<!-- 상품 카테고리  -->
		<div class="container">
			<div class="row">
				<h2 class="title text-center">많이 찜한 화장품</h2>
				<c:forEach var="vo" items="${productList_RandomData }" varStatus="s">
				<c:if test="${s.index<4 }">
					<div class="col-xs-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<a href="../product/product_detail.hr?pno=${vo.product_no }">
										<img src=${vo.product_img } alt="" width="250" height="250"/>
									</a>
									<h2>${vo.price }원</h2>
									<p>${vo.product_name.length()>13? vo.product_name.substring(1,13)+="...":vo.product_name }</p>
									<div class="star-rating" style="text-align: center">
											<div style="width:${vo.score*20 }%;" class="star-rating-percentage" style="display:inline-block"></div>
									</div>
									<%-- <a href="../cart/cart_ok.hr?pno=${vo.product_no }" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a> --%>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href="../cart/main_cart_ok.hr?pno=${vo.product_no }"><i class="fa fa-plus-square"></i>Add
											to cart</a></li>
									<li><a href="#"><i class="fa fa-plus-square"></i>Add
											to pouch</a></li>
								</ul>
							</div>
						</div>
					</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
		<!--features_items-->
		
		<!-- 뉴스 , 파우치 목록 -->
		<div class="container">
			<!-- 뉴스 출력 -->
			<div class="col-xs-6">
				<jsp:include page="../news/news_main.jsp"></jsp:include>
			</div>

			<!-- 파우치 출력 -->
			<div class="col-xs-6">
				<jsp:include page="../pouch/pouch_main.jsp"></jsp:include>
			</div>
		</div>

		
		<!-- 화장품 추천(파우치에 많이 담긴 화장품 순) -->
		<div class="recommended_items">
			<!--recommended_items-->
			<h2 class="title text-center">파우치 많이 담긴 화장품</h2>

			<div id="recommended-item-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					
					<div class="item active">
						<c:forEach var="vo" items="${recommend_ProductData }" varStatus="i">
							<c:if test="${i.index<3 }">
								<div class="col-xs-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href="../product/product_detail.hr?pno=${vo.product_no }">
													<img src="${vo.product_img }" id="recommend_img" height="200" alt="" />
												</a>
												<h2>${vo.price }원</h2>
												<p>${vo.product_name.length()>13? vo.product_name.substring(1,13)+="...":vo.product_name }</p>						
												<div class="star-rating" style="text-align: center" id="star_rating_recommend">
													<div style="width:${vo.score*20 }%;" class="star-rating-percentage" style="display:inline-block"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					
					<div class="item">
						<c:forEach var="vo" items="${recommend_ProductData }" varStatus="i">
							<c:if test="${i.index>3 && i.index<7 }">
								<div class="col-xs-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<a href="../product/product_detail.hr?pno=${vo.product_no }">
													<img src="${vo.product_img }" id="recommend_img" height="200" alt="" />
												</a>
												<h2>${vo.price }원</h2>
												<p>${vo.product_name.length()>13? vo.product_name.substring(1,13)+="...":vo.product_name }</p>
												<div class="star-rating" style="text-align: center" id="star_rating_recommend">
													<div style="width:${vo.score*20 }%;" class="star-rating-percentage" style="display:inline-block"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
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