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


</style>
</head>
<body>
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
									<a data-toggle="collapse" data-parent="#accordian" href="#sportswear"> 
										<span class="badge pull-right">
											<i class="fa fa-plus"></i>
										</span> 스킨케어
									</a>
								</h4>
							</div>
							<div id="sportswear" class="panel-collapse collapse">
								<div class="panel-body scrollbar" id="style-6"
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=1&end=27	">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index<27 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<!-- #################################################################################### -->
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
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=27&end=56	">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=27 && n.index<56 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<!-- ##################################################################################### -->
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
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=56&end=68	">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=56 && n.index<68 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
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
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=68&end=94	">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=68 && n.index<94 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
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
									style="overflow: auto; width: 230px; height: 200px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=94&end=107">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=94 && n.index<107 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
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
									style="overflow: auto; width: 230px; height: 150px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=107&end=112">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=107 && n.index<112 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
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
									style="overflow: auto; width: 230px; height: 150px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=112&end=119">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=112 && n.index<119 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
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
									style="overflow: auto; width: 230px; height: 150px;">
									<ul>
										<li><a href="../ranking/rank_product.hr?start=119&end=125">전체 </a></li>
										<c:forEach var="vo" items="${detail_cate_list }" varStatus="n">
											<c:if test="${n.index>=119 && n.index<125 }">
												<li><a href="../ranking/rank_product.hr?dcno=${vo.detCategory_no }">${vo.detCategory_type } </a></li>
											</c:if>
										</c:forEach>
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


			<!-- #####################################   상품 출력 부분     ########################################################### -->

			<div class="col-sm-9 padding-right">
				<div class="features_items" id="features_items_custom">
					<!--features_items-->
					<h2 class="title text-center">Items</h2>
					
					<c:forEach var="vo" items="${product_cate_list }" varStatus="s">
					<c:if test="${s.index<12 }">
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
											<div style="width:30%" class="star-rating-percentage"  style="display:inline-block"></div>
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
					</c:if>
					</c:forEach>
					
					<ul class="pagination">
						<li class="active">
						<a href="">1</a></li>
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