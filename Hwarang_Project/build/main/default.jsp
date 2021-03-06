<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="slider"><!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div id="slider-carousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-xs-6" id="custom_slider">
								<h1>
									<span>H</span>warang
								</h1>
								<h2>인기상품</h2>
								<p>하이드라비오 에센스 로션</p>
								<p>피부 컨디션을 끌어올려 속부터 차오르는 빛과 수분</p>
								<button type="button" class="btn btn-default get">
									<a href="product_detail.jsp">Get it now</a>
								</button>
							</div>
							<div class="col-xs-6">
								<img src="../images/home/slider/skin.png"
									class="girl img-responsive" alt="" width="300" height="250" />
								<!-- <img src="images/home/pricing.png"  class="pricing" alt="" /> -->
							</div>
						</div>
						<div class="item">
							<div class="col-xs-6" id="custom_slider">
								<h1>
									<span>H</span>warang
								</h1>
								<h2>이니스프리</h2>
								<p>블루베리 리밸런싱 스킨</p>
								<p>블루베리의 항산화력을 담아 건강한 피부 pH와 유수분밸런스를 맞춰 편안한 피부로 가꿔주는 촉촉한 스킨</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-xs-6">
								<img src="../images/home/slider/skin2.png"
									class="girl img-responsive" alt="" width="300" height="250" />
							</div>
						</div>

						<div class="item">
							<div class="col-xs-6" id="custom_slider">
								<h1>
									<span>H</span>warang
								</h1>
								<h2>이니스프리</h2>
								<p>진저허니 앰플 스킨</p>
								<p>스킨처럼 빠르게 앰플처럼 진하게 한파에도 끄덕없는 #방패보습</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-xs-6">
								<img src="../images/home/slider/skin3.png"
									class="girl img-responsive" alt="" width="300" height="250" />
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
	</section>
	<!--/slider-->

	<!-- 상품 출력 부분 -->
	<!-- TOP RANKING -->
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">TOP RANKING</h2>

					<!-- 첫번째 상품 -->
				<c:forEach var="vo" items="${productListData }">
					<div class="col-xs-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<a href="../product/product_detail.hr?pno=${vo.product_no }"><img src=${vo.product_img } alt="" /></a>
									<h2>${vo.price }</h2>
									<p>${vo.product_name }</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href="#"><i class="fa fa-plus-square"></i>Add
											to wishlist</a></li>
									<li><a href="#"><i class="fa fa-plus-square"></i>Add
											to compare</a></li>
								</ul>
							</div>
						</div>
					</div>
				</c:forEach>

				</div>
			</div>
		</div>

		<!-- 상품 카테고리  -->
		<div class="container">
			<div class="row">
				<h2 class="title text-center">NEW PRODUCT</h2>
				<div class="col-xs-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="../images/home/product/emulsion.jpg" alt="" />
								<h2>25,000원</h2>
								<p>스네일 솔루션 에멀젼</p>
								<a href="#" class="btn btn-default add-to-cart"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
							</div>

							<img src="../images/home/new.png" class="new" alt="" />
						</div>
						<div class="choose">
							<ul class="nav nav-pills nav-justified">
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to
										wishlist</a></li>
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to
										compare</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-xs-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="../images/home/product/emulsion2.jpg" alt="" />
								<h2>16,000원</h2>
								<p>로열허니 에센셜 에멀전</p>
								<a href="#" class="btn btn-default add-to-cart"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
							</div>
							<div class="product-overlay">
								<div class="overlay-content">
									<h2>16,000원</h2>
									<p>로열허니 에센셜 에멀전</p>
									<a href="#" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							<img src="../images/home/sale.png" class="new" alt="" />
						</div>
						<div class="choose">
							<ul class="nav nav-pills nav-justified">
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to
										wishlist</a></li>
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to
										compare</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-xs-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="../images/home/product/emulsion3.jpg" alt="" />
								<h2>20,000원</h2>
								<p>한란 프루이드</p>
								<a href="#" class="btn btn-default add-to-cart"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
							</div>

							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href="#"><i class="fa fa-plus-square"></i>Add
											to wishlist</a></li>
									<li><a href="#"><i class="fa fa-plus-square"></i>Add
											to compare</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="../images/home/product/emulsion4.jpg" alt="" />
								<h2>16,000원</h2>
								<p>데일리 멀티 카밍 젤</p>
								<a href="#" class="btn btn-default add-to-cart"><i
									class="fa fa-shopping-cart"></i>Add to cart</a>
							</div>
						</div>
						<div class="choose">
							<ul class="nav nav-pills nav-justified">
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to
										wishlist</a></li>
								<li><a href="#"><i class="fa fa-plus-square"></i>Add to
										compare</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--features_items-->

		<div class="container">
			<div class="col-xs-6">
				<div class="blog-card">
					<div class="meta">
						<div class="photo"
							style="background-image: url(https://storage.googleapis.com/chydlx/codepen/blog-cards/image-1.jpg)"></div>
					</div>
					<div class="description">
						<h1>화장품 소식1</h1>
						<h2>오늘의 화장품 소식1</h2>
						<p>가가가가가가가가가가+가가가가가가가가가가+가가가가가가가가가가+가가가가가가가가가가
							가가가가가가가가가가+가가가가가가가가가가</p>
						<p class="read-more">
							<a href="http://www.beautynury.com/">보러가기</a>
						</p>
					</div>
				</div>
				<div class="blog-card alt">
					<div class="meta">
						<div class="photo"
							style="background-image: url(https://storage.googleapis.com/chydlx/codepen/blog-cards/image-2.jpg)"></div>
					</div>
					<div class="description">
						<h1>Mastering the Language</h1>
						<h2>Java is not the same as JavaScript</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ad eum dolorum architecto obcaecati enim dicta praesentium, quam</p>
						<p class="read-more">
							<a href="#">Read More</a>
						</p>
					</div>
				</div>
			</div>



			<div class="col-xs-6">
				<table class="table table-hover">
					<h3 class="text-center">파우치 목록</h3>
					<%
						for (int i = 1; i <= 5; i++) {
					%>
					<tr>
						<td><%=i%></td>
						<td><img src="../images/home/pouch/pouch1.jpg" width="30"
							height="30"></td>
						<td><%=i%>등파우치</td>
						<td>뷰티유투버</td>
					</tr>
					<%
						}
					%>
				</table>

				<table class="table">
					<tr>
						<td class="text-center">
							<ul class="pagination">
								<li><a href="list.jsp?page=1"><img
										src="../images/home/pouch/lleft.gif"></a></li>
								<li><a href="list.jsp?page="><img
										src="../images/home/pouch/tit_prev.gif"></a></li>
								<li class="text-center"><a href="#">1</a></li>
								<li class="text-center"><a href="main.jsp?no=2">2</a></li>
								<li class="text-center"><a href="#">3</a></li>
								<li class="text-center"><a href="#">4</a></li>
								<li class="text-center"><a href="#">5</a></li>
								<li><a href="list.jsp?page="><img
										src="../images/home/pouch/tit_next.gif"></a></li>
								<li><a href="list.jsp?page="><img
										src="../images/home/pouch/rright.gif"></a></li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
		</div>


		<div class="recommended_items">
			<!--recommended_items-->
			<h2 class="title text-center">recommended items</h2>

			<div id="recommended-item-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active">
						<div class="col-xs-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="../images/home/recommend1.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="../images/home/recommend2.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="../images/home/recommend3.jpg" alt="" />
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
						<div class="col-xs-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="../images/home/recommend1.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="../images/home/recommend2.jpg" alt="" />
										<h2>$56</h2>
										<p>Easy Polo Black Edition</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="../images/home/recommend3.jpg" alt="" />
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
	</div>
</section>

</body>
</html>