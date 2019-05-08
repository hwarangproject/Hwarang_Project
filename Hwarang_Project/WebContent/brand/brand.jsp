<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>브랜드</title>

<style type="text/css">


*, *:before, *:after{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing:border-box;
  box-sizing: border-box;
}

a:hover{
  color: #f97e7e; 
}
.content {
  position: relative;
  width:90%;
  max-width: 250px;
  margin: auto;
  overflow: visible;
}

.content .content-overlay {
  background-color: #FFB9B9;
  position: absolute;
  height: 99%;
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  opacity: 0;
  -webkit-transition: all 0.4s ease-in-out 0s;
  -moz-transition: all 0.4s ease-in-out 0s;
  transition: all 0.4s ease-in-out 0s;
}

.content:hover .content-overlay{
  opacity: 1;
}

.content-image{
  width: 100%;
}

.content-details {
  position: absolute;
  text-align: center;
  padding-left: 1em;
  padding-right: 1em;
  width: 100%;
  top: 50%;
  left: 50%;
  opacity: 0;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  -webkit-transition: all 0.3s ease-in-out 0s;
  -moz-transition: all 0.3s ease-in-out 0s;
  transition: all 0.3s ease-in-out 0s;
}

.content:hover .content-details{
  top: 50%;
  left: 50%;
  opacity: 1;
}

.content-details h3{
  color: #fff;
  font-weight: 500;
  letter-spacing: 0.15em;
  margin-bottom: 0.5em;
  text-transform: uppercase;
}


.fadeIn-bottom{
  top: 80%;
}

.fadeIn-top{
  top: 20%;
}

.fadeIn-left{
  left: 20%;
}

.fadeIn-right{
  left: 80%;
}

.main_section {
	margin : auto;
	width: 1200px;
	height: auto;
}

<%--일자 바 --%> 
.brand_search_area[_ngcontent-c8] {
	margin: 30px 0 27px;
	position: relative;
	min-height: 30px;
	padding: 0 0 18px;
	border-bottom: 4px solid #f0adad;
}

.brand_search_area[_ngcontent-c8] ruler-small-tab[_ngcontent-c8] {
	display: block;
	margin-left: -20px;
}

<%--브랜드 가나다 버튼 --%> 
.brand_sorting[_ngcontent-c8]{
	margin : auto;
	display: inline-block;
	height: 35pt;
	margin-left: 3px;
}

.filter {
	outline: none;
	border: 0;
	background: transparent;
	cursor: pointer;
	align-items: flex-start;
	text-align: center;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	font-size: 35pt;
	color: #ffeae8;
}

.brand_sorting[_ngcontent-c8] .filters[_ngcontent-c8]:active {
	color: #FFB9B9;
	font-weight: 600;
	font-size: 25pt;
}

<%--브랜드 로고 사진 --%> 
img {
	border:0;
	height:100px;
}
.col-sm-2 {
	margin-top:20px;
	margin-bottom:20px;
}
.container {
	margin : 0px auto;
}

ul, li {
	float: left;
}
</style>
</head>
<body>

<jsp:include page="${brand_jsp }"></jsp:include>

	<div class="has_banner ">
		<div class="container">
			<div _ngcontent-c8="" class="brand_search_area">
				<h1 style="color: #FFB9B9">brand</h1>
				<ruler-small-tab _ngcontent-c8="" _nghost-c10="">
				</ruler-small-tab>
			</div>
			
			<div _ngcontent-c8="" class="container text-center" id="brand_id">
				<ul>
				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr">전체
					&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=42000&end=45207	">가</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=45207&end=45795	">나</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=45795&end=46971	">다</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=46971&end=47559	">라</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=47559&end=48147	">마</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=48147&end=49323	">바</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=49323&end=50499	">사</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=50499&end=51087	">아</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=51087&end=52263	">자</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=52263&end=52851	">차</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=52851&end=53439	">카</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=53439&end=54027	">타</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=54027&end=54615	">파</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=54615&end=55203	">하</a></li>
				</ul>
				<ul>
 				<li><a _ngcontent-c8="" class="filter" href="../brand/brand.hr?start=0&end=42000&start1=55203&end1=70000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABC.</a></li>
				</ul>

			</div>
		</div>
		
		
		<section class="main_section" style="margin-top:10px">
		<div class="container">
			<c:forEach var="vo" items="${brandListSearch }">
				<div class="col-sm-3">
					<div class="content">
						<a href="../brand/brand_main.hr?brand=${vo.brand }" target="_blank">
							<div class="content-overlay"></div>
								<img src="${vo.brand_img }" class="content-image" width=100px
									height=80px>
							<div class="content-details fadeIn-bottom">
								<h3 class="content-title">${vo.brand }</h3>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
		</section>
		
	</div>
	<div class="container text-center">
	<ul class="pagination">
						<li class="active">
						<a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">&raquo;</a></li>
					</ul>
					</div>

	<script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript">
/* 	$(function() {
		$("#change_textcolor").click( function() {
			$(this).css("color","#f0adad");
		});
	}); */
/* 	$(function(){
		$('#Ga').click(function(){
				
		});
	}); */
	</script>
</body>
</html>