<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>

<html>
<head>
<meta charset="UTF-8">

<title>상품별 목록</title>

<style type="text/css">
.scrollbar {
	float: left;
	height: 230px;
	width: 65px;
	overflow-y: scroll;
	margin-bottom: 1px;
}

.productinfo h5 {
	color: #FFB9B9;
	font-family: 'Roboto', sans-serif;
	font-size: 15px;
	font-weight: 700;
	margin: 15px;
	text-align: center;
	text-transform: uppercase;
	position: relative;
	z-index: 3;
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

#logo {
	width: 200px;
	height: 45px;
}

#features_items_custom {
	margin-top: -20px;
}

.star-rating {
	background: url('../images/ranking/grade_final_forlist.png') repeat-x;
	width: 104px;
	height: 20px;
	display: block;
	margin-top: 0px;
	margin-left: 75px;
	margin-bottom: 15px;
	position: relative;
	overflow: hidden;
}

.star-rating-percentage {
	background: url(../images/ranking/grade_final_forlist.png) repeat-x;
	background-position: 0 100%;
	position: relative;
	width: 104px;
	height: 20px;
	display: block;
}
</style>

</head>
<body>
	
		
			<div class="row" >
				<!-- #####################################   상품 출력 부분     ########################################################### -->
				<div class="features_items" id="features_items_custom">
					<!--features_items-->
					<h2 class="title text-center">Items</h2>
					<c:if test = "${count==0 }">
						<div class="row">
							<label class="text-center">  <h2>검색결과가 없습니다.</h2> </label>
						</div>
					</c:if>
					
					
					<c:if test="${count!=0 }">
					<c:forEach var="vo" items="${product_find_list }" varStatus="s">
						<c:if test="${s.index<12 }">
							<div class="col-sm-4" id="custom_col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a href="../product/product_detail.hr?pno=${vo.product_no }">
												<img src="${vo.product_img }" alt="" width=280.8px
												height=280.8px />
												<h5>${vo.brand }</h5>
												<h5>${vo.product_name.length()>13? vo.product_name.substring(1,13)+="...":vo.product_name }</h5>
											</a>
											<p>${vo.price }원</p>
											<div class="star-rating" style="text-align: center">
												<div style="width: 30%" class="star-rating-percentage"
													style="display:inline-block"></div>
											</div>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href=""><i class="fa fa-plus-square"></i>Add
													to mypage</a></li>
											<li><a href=""><i class="fa fa-plus-square"></i>Add
													to cart</a></li>
										</ul>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
					</c:if>
					<ul class="pagination">
						<li class="active"><a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">&raquo;</a></li>
					</ul>
				</div>
			</div>
	


	<!-- <script src="../js/jquery-1.11.3.min.js"></script> -->
	<script src="../js/star.js"></script>

</body>
</html>