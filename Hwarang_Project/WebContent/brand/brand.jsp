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


.content {
  position: relative;
  width: 90%;
  max-width: 400px;
  margin: auto;
  overflow: hidden;
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

</style>
</head>
<body>

	<div class="has_banner ">
		<div class="container">
			<div _ngcontent-c8="" class="brand_search_area">
				<h1 style="color: #FFB9B9">BRAND</h1>
				<ruler-small-tab _ngcontent-c8="" _nghost-c10="">
				</ruler-small-tab>
			</div>
			<div _ngcontent-c8="" class="filters text-center" id="brand_id">
				<button _ngcontent-c8="" class="filter"  onclick="change_textcolor()" >전체
					&nbsp;&nbsp;&nbsp;&nbsp;</button>
 
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">가</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">나</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">다</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">라</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">마</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">바</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">사</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">아</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">자</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">차</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">카</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">타</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">파</button>
				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">하</button>

				<button _ngcontent-c8="" class="filter" onclick="change_textcolor()">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABC.</button>
			</div>
		</div>
	<section class="main_section" style="margin-top:10px">
			<div class="container">
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
				<div class="col-sm-3">
				<div class="content">
					<a href="" target="_blank">
						<div class="content-overlay"></div> <img class="content-image"
						src="../images/shop/chanel.png">
						<div class="content-details fadeIn-bottom">
							<h3 class="content-title">샤넬</h3>
						</div>
					</a>
				</div>
			</div>
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
	$(function() {
		$("#change_textcolor").click( function() {
			$(this).css("color","#f0adad");
		});
	});
	</script>
</body>
</html>