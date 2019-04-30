<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="description" content="">
<meta name="author" content="">

<title>HWARANG PROJECT</title>

<!-- 내가 설정한 스타일 -->
<style type="text/css">

#custom_pouch {
	display: inline;
}

*
{
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-webkit-tap-highlight-color: transparent;
	box-sizing: border-box;
}

html, body 
{
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

input[type="checkbox"] + label {
	<%--position: absolute;--%>
	z-index: 100;
	overflow: hidden;
	<%--height: 4em;--%>
	width: 4em;
	<%-- left: calc(50% - 3em);
	top: calc(50% - 3em); --%>
	<%--display: block; --%>
	text-align: center;
	<%--line-height: 95px;--%>
	cursor: pointer;
	-webkit-transition: all 300ms ease;
	<%--transition: all 300ms ease;
	border-radius: 10%;
	background-color: #fff;--%>
}

input[type="checkbox"] + label:before {
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

input[type="checkbox"] + label:after {
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

input[type="checkbox"]:checked + label svg {
	-webkit-transition: all 300ms ease-in-out;
	transition: all 300ms ease-in-out;
	fill: rgb(220, 72, 127);
	transform: scale(1.3);
	-webkit-transform: scale(1.3);
}

input[type="checkbox"]:checked + label:after {
	-webkit-animation: like-a 0.3s 0.2s forwards;
	-moz-animation: like-a 0.3s 0.2s forwards;
	animation: like-a 0.3s 0.2s forwards;
}

input[type="checkbox"]:checked + label:before {
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

@-webkit-keyframes like-a {
100% {
	-webkit-transform:scale(1.03);
	transform:scale(1.03);
	-moz-transform:scale(1.03);
} }
@-moz-keyframes like-a {
100% {
	-webkit-transform:scale(1.03);
	transform:scale(1.03);
	-moz-transform:scale(1.03);
} }
@keyframes like-a {
100% {
	-webkit-transform:scale(1.03);
	transform:scale(1.03);
	-moz-transform:scale(1.03);
} }

img { display: block; margin: 0px auto; }

</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12padding-right">
				<div class="features_items">
					<h2 class="title text-center">POUCH</h2>
					<div class="col-sm-12">

						<div class="product-details">
							<!--product-details-->
							<div class="col-sm-5">
								<div class="view-product">
									<img src="../images/home/pouch/pouch1.jpg" alt="" />
								</div>
							</div>

							<div class="col-sm-15">
								<div class="product-information">
									<!--/product-information-->
									<img src="images/product-details/new.jpg" class="newarrival"
										alt="" />
									<h2>제목 : 우아아아아아</h2>
									<p>주인 : 아오아오</p>
									<div class="col-sm-4">
									<td>찜 : 5000
									<!-- 하트 -->
									<input type="checkbox" id="like" /> 
									<label for="like">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25 25">
											<path d="M12 21.35l-1.45-1.32c-5.15-4.67-8.55-7.75-8.55-11.53 0-3.08 2.42-5.5 5.5-5.5 1.74 0 3.41.81 4.5 2.09 1.09-1.28 2.76-2.09 4.5-2.09 3.08 0 5.5 2.42 5.5 5.5 0 3.78-3.4 6.86-8.55 11.54l-1.45 1.31z" />
										</svg>
									</label>
									</td> 
									</div>
									<!-- /하트 -->
									
									<div class="tab-pane fade active in" id="reviews">
										<div class="col-sm-10">
											<div class="a">
												<ul>
													<li><a href=""><i class="fa fa-user"></i>회원 ID</a></li>
													<li><a href="">성별:여자 / 피부타입:건성 / 연령대:20대 / 별점:3</a></li>
												</ul>
												<p>자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개
													자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개 자기소개</p>
											</div>
										</div>
									</div>
									<!--/product-information-->
								</div>
							</div>


							<!--/product-details-->
							<!-- 파우치 -->
							<div class="col-sm-12">
								<div class="detail-product">
									<img src="../images/home/pouch/pouch1.jpg" alt="">
								</div>

								<div class="detail-product">
									<img src="../images/home/pouch/pouch1.jpg" alt="" />
								</div>

								<div class="detail-product">
									<img src="../images/home/pouch/pouch1.jpg" alt="" />
								</div>

								<div class="detail-product">
									<img src="../images/home/pouch/pouch1.jpg" alt="" />
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<table class="table">
			<div class="category-tab shop-details-tab =">
				<!--category-tab-->
				<div class="col-sm-12">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#reviews" data-toggle="tab">Reviews
								(5)</a></li>
					</ul>
				</div>
				<div class="tab-pane fade active in" id="reviews">
					<div class="col-sm-12">
						<div class="a">
							<ul>
								<li><a href=""><i class="fa fa-user"></i>회원 ID</a></li>
								<li><a href="">성별:여자 / 피부타입:건성 / 연령대:20대 / 별점:3</a></li>
							</ul>
							<p>제품에 쓰여진 대로 솜에 잔뜩 묻혀서 부드럽게 닦아내주면 정말 개운한 느낌이 들어요 꽤 민감한 편인데
								필링토너라해서 자극적이거나 그러지 않았구요 외출 후 집에 돌아오자마자 얼굴에 쌓인 먼지닦아낼 때나 아침에 세수하기
								귀찮을 때 닦아내기 좋더라구요</p>
						</div>
					</div>

					<div class="col-sm-12">
						<div class="a">
							<ul>
								<li><a href=""><i class="fa fa-user"></i>회원 ID</a></li>
								<li><a href="">성별:남자 / 피부타입:지성 / 연령대:30대 / 별점:4</a></li>
							</ul>
							<p>케이스가 일단 예뻐요! 자석이라 편하기도하구요 베러립스톡,베러립스톡 둘다 써봤는데 둘다 색이넘이뻐여 특히
								땡큐땡모반이랑 무드업, 빈티지웨이 컬러가 예뻐서 매장에서 테스트하고 세개 사왔어요 :) 빈티지웨이는 집에있는 맥
								씨쉬어랑 거의 존똑이더라구요 살짝 톤다운된 피치컬러라 데일리로 바르기 좋은컬러에요</p>
						</div>
					</div>
				</div>
			</div>
		</table>
		<div class="tab-content">
			<div class="tab-pane fade" id="details">
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="images/home/gallery1.jpg" alt="" />
								<h2>$56</h2>
								<p>Easy Polo Black Edition</p>
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="companyprofile">
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="images/home/gallery1.jpg" alt="" />
								<h2>$56</h2>
								<p>Easy Polo Black Edition</p>
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="tag">
				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="images/home/gallery1.jpg" alt="" />
								<h2>$56</h2>
								<p>Easy Polo Black Edition</p>
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
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
								<button type="button" class="btn btn-default add-to-cart">
									<i class="fa fa-shopping-cart"></i>Add to cart
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-12">
				<p>
					<b>Write Your Review</b>
				</p>
				<form action="#">
					<span> <input type="text" placeholder="Your Name" /> <input
						type="email" placeholder="Email Address" />
					</span>
					<textarea name=""></textarea>
					<b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
					<button type="button" class="btn btn-default pull-right">
						Submit</button>
				</form>
			</div>
		</div>

	</div>
	<!--/category-tab-->


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

	</section>

</body>
</html>