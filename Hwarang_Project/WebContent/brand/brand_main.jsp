<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

.productinfo h5{
  color: #FFB9B9; 
  font-family: 'Roboto', sans-serif;
  font-size: 15px;
  font-weight: 700;
  margin: 15px;
  text-align: center;
  text-transform: uppercase;
  position: relative;
  z-index:3;
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

.brand_box {
padding-top:10px;
}

.brand_box:hover {
background-color: #ffeae8;
}

a {
	color: #363432;
	text-decoration: none
}

a:hover, a:focus {
	color: #f98585;
	text-decoration: underline
}

</style>
</head>
<body>
	<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<div class="brands_products">
						<!--brands_products-->
						<h2>Brand</h2>
						<div class="brands-name">
						<c:forEach var="vo" items="${brandPageDivision }" varStatus="s">
						<c:if test="${s.index<1 }">
							<ul class="brand_box nav nav-pills nav-stacked text-center">
							<li><img src="${vo.brand_img }" width=230 height=100></li>
								<li class="text-center" style="font-weight:bold; font-size:x-large;">${vo.brand }</li>
								
							</ul>
						</c:if>
						</c:forEach>
						</div>
					</div>
					<div class="brands_products">
						<!--brands_products-->
						<h2>SEARCH</h2>
						<div class="brands-name">
						<c:forEach var="vo" items="${brandPageDivision }" varStatus="s">
						<c:if test="${s.index<1 }">
							<ul class="nav nav-pills nav-stacked">
							<li><img src="${vo.brand_img }" width=260 height=150></li>
								<li class="text-center" style="font-weight:bold; font-size:x-large;">${vo.brand }</li>
								
							</ul>
						</c:if>
						</c:forEach>
						</div>
					</div>

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


			<!-- #####################################   상품 출력 부분     ########################################################### -->

			<div class="col-sm-9 padding-right">
				<div class="features_items" id="features_items_custom">
					<!--features_items-->
					<h2 class="title text-center">Items</h2>
					
					<c:forEach var="vo" items="${brandPageDivision }">
					<%-- <c:if test="${s.index<12 }"> --%>
						<div class="col-sm-4" id="custom_col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
								<a href="../product/product_detail.hr?pno=${vo.product_no }">
									<img src="${vo.product_img }" alt="" width=280.8px height=280.8px/>
									<h5>${vo.brand }</h5>
									<h5>${vo.product_name.length()>13? vo.product_name.substring(1,13)+="...":vo.product_name }</h5>
								</a>
									<p>${vo.price }원</p>
									<div class="star-rating" style="text-align: center">
											<div style="width:${vo.score*20}%" class="star-rating-percentage"  style="display:inline-block"></div>
									</div>
								</div>
							</div>
							<div class="choose">
								<ul class="nav nav-pills nav-justified">
									<li><a href=""><i class="fa fa-plus-square"></i>Add to mypage</a></li>
									<li><a href=""><i class="fa fa-plus-square"></i>Add to cart</a></li>
								</ul>
							</div>
						</div>
						</div>
			<%-- 		</c:if> --%>
					</c:forEach>				
				</div>
				<!--features_items-->

					<div class="row text-center">
						<ul class="pagination">
							<c:if test="${curpage>BLOCK }">
								<li><a href="../brand/brand_main.hr?brand=${brand }&page=1">&laquo;</a></li>
								<li><a
									href="../brand/brand_main.hr?brand=${brand }&page=${startPage-1 }">&lsaquo;</a></li>
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
									href="../brand/brand_main.hr?brand=${brand }&page=${i }">${i }</a></li>
							</c:forEach>
							<c:if test="${curpage<allPage}">
								<li><a
									href="../brand/brand_main.hr?brand=${brand }&page=${endPage+1 }">&rsaquo;</a></li>
								<li><a
									href="../brand/brand_main.hr?brand=${brand }&page=${allPage }">&raquo;</a></li>
							</c:if>
						</ul>
						<div class="text-center">
						${curpage } page / ${totalpage } pages
						</div>
					</div>
					
			</div>
		</div>
	</div>
	</section>

	<script src="../js/jquery-1.11.3.min.js"></script>
	<script src="../js/star.js"></script>

</body>
</html>