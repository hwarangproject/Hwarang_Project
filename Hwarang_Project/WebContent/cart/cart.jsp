<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>HWARANG PROJECT</title>

<!-- 내가 설정한 스타일 -->
<style type="text/css">

/* 장바구니 스타일 */
/* Global settings */
/* Global "table" column settings */
.product-image {
  float: left;
  width: 18%;
}

.product-detail {
  float: left;
  width: 35%;
}

.product-price {
  float: left;
  width: 12%;
}

.product-quantity {
  float: left;
  width: 12%;
}

.product-removal {
  float: left;
  width: 10%;
}

.product-line-price {
  float: left;
  width: 13%;
  text-align: right;
}

/* This is used as the traditional .clearfix class */
.group:before, .shopping-cart:before, .column-labels:before, .product:before, .totals-item:before,
.group:after,
.shopping-cart:after,
.column-labels:after,
.product:after,
.totals-item:after {
  content: '';
  display: table;
}

.group:after, .shopping-cart:after, .column-labels:after, .product:after, .totals-item:after {
  clear: both;
}

.group, .shopping-cart, .column-labels, .product, .totals-item {
  zoom: 1;
}

/* Apply clearfix in a few places */
/* Apply dollar signs */
.product .product-price:after, .product .product-line-price:after, .totals-value:after {
  content: ' won';
}

h1 {
  font-weight: 100;
}

label {
  color: #aaa;
} 


.shopping-cart {
	margin-top: 30px;
  	margin-bottom: 30px;
}

/* Column headers */
.column-labels label {
  padding-bottom: 15px;
  margin-bottom: 15px;
  border-bottom: 1px solid #eee;
}

.column-labels .product-image, .column-labels .product-detail, .column-labels .product-removal {
  text-indent: 0px;
}

.column-labels #label_image_text {
	text-align: center;
}

/* Product entries */
.product {
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}
.product .product-image {
  text-align: center;
}
.product .product-image img {
  width: 150px;
  height: 100px;
}
.product .product-detail .product-title {
  margin-right: 20px;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
.product .product-detail .product-description {
  margin: 5px 20px 5px 0;
  line-height: 1.4em;
}
.product .product-quantity input {
  width: 40px;
}
.product .remove-product {
  border: 0;
  padding: 4px 8px;
  background-color: #c66;
  color: #fff;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
  font-size: 12px;
  border-radius: 3px;
}
.product .remove-product:hover {
  background-color: #a44;
}

/* Totals section */
.totals .totals-item {
  float: right;
  clear: both;
  width: 100%;
  margin-bottom: 10px;
}
.totals .totals-item label {
  float: left;
  clear: both;
  width: 79%;
  text-align: right;
}
.totals .totals-item .totals-value {
  float: right;
  width: 21%;
  text-align: right;
}
.totals .totals-item-total {
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}

.checkout {
  float: right;
  border: 0;
  margin-top: 20px;
  padding: 6px 25px;
  background-color: #6b6;
  color: #fff;
  font-size: 25px;
  border-radius: 3px;
}

.checkout:hover {
  background-color: #494;
}

</style>

</head>
<body>
<!-- 장바구니 시작 -->
<div class="container">
	<div class="row">
	<div class="shopping-cart">

		<div class="column-labels">
			<label class="product-image" id="label_image_text">image</label> 
			<label class="product-detail">Product</label> 
			<label class="product-price">Price</label>
			<label class="product-quantity">Quantity</label> 
			<label class="product-removal">Remove</label> 
			<label class="product-line-price">Total</label>
		</div>

		<div class="product">
			<div class="product-image">
				<img src="../images/cart/skin.png">
			</div>
			<div class="product-detail">
				<div class="product-title">하이드라비오 에센스 로션</div>
				<p class="product-description">피부 컨디션을 끌어올려 속부터 차오르는 빛과 수분</p>
			</div>
			<div class="product-price">20000</div>
			<div class="product-quantity">
				<input type="number" value="1" min="1">
				
			</div>
			<div class="product-removal">
				<button class="remove-product">Remove</button>
			</div>
			<div class="product-line-price">20000</div>
		</div>

		<div class="product">
			<div class="product-image">
				<img src="../images/cart/skin2.png">
			</div>
			
			<div class="product-detail">
				<div class="product-title">블루베리 리밸런싱 스킨</div>
				<p class="product-description">블루베리의 항산화력을 담아 건강한 피부 pH와 유수분밸런스를 맞춰 편안한 피부로 가꿔주는 촉촉한 스킨</p>
			</div>
			<div class="product-price">20000</div>
			<div class="product-quantity">
				<input type="number" value="1" min="1">
			</div>
			<div class="product-removal">
				<button class="remove-product">Remove</button>
			</div>
			<div class="product-line-price">20000</div>
		</div>

		<div class="totals">
			<div class="totals-item">
				<label>Total</label>
				<div class="totals-value" id="cart-subtotal">40000</div>
			</div>

		<button class="checkout">Checkout</button>

	</div>
	</div>
</div>	
</div>
	<!-- 장바구니 끝 -->
	
	<!-- 장바구니 스크립트-->
    <script src="../js/cart.js"></script>

</body>
</html>