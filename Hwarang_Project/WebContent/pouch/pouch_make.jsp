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

<!-- <link rel="shortcut icon" href="images/ico/favicon.ico"> -->
<link href="../css/profile-upload.css" rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'>
<link href="../css/pouch.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">


<script src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	
</script>
<style type="text/css">
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
															<img id="profile_img" src="../images/shop/product12.jpg"
																style="width: 180px; height: 180px;">
														</div>
														<div class="col2 last">
															<div class="grid clearfix">
																<div class="col3 first">
																	<a href="#" style="color: gray;"> <span>회원ID</span>
																		<h1>닉네임</h1></a>
																</div>
																<div class="col3">
																	<span>피부타입</span>
																	<h1>건성</h1>

																</div>
																<div class="col3 last">
																	<span>좋아요<font style="color: pink;">♡</font></span>
																	<h1>0</h1>
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
									<div class="col-sm-4">
										<h2 class="subject_intro">
											제목 
											<textarea rows="1" cols="5" name="pouch_intro"></textarea>
										</h2>
									</div>
								</div>
								<div class="col-sm-12" >
										<h2 class="subject_intro" class="text-center">
											파우치 소개 
											<textarea rows="5" cols="10" name="pouch_intro"></textarea>
										</h2>
									</div>
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
												<div class='product--pink'>
													<div class='product_inner'>
														<img
															src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png'
															width='300'>
														<td>나이키</td>
														<br>
														<td>Size 11</td>
														<br>
														<td>Price £299.99</td>
														<br>
														<button class="text-center">MORE +</button>
													</div>
													<div class='product_overlay'>
														<h2>Added to basket</h2>
														<i class='fa fa-check'></i>
													</div>
												</div>
												<%-- 	</c:forEach> --%>
												<ul class="pagination" id="pag">
													<li class="active"><a href="">1</a></li>
													<li><a href="">2</a></li>
													<li><a href="">3</a></li>
													<li><a href="">&raquo;</a></li>
												</ul>
											</div>
										</div>
										<table class="table">
											<tr>
												<td><input type="submit" value="완료"
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