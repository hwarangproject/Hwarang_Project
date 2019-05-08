<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<meta name="description" content="">
<meta name="author" content="">

<title>user_info</title>


<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'>

<link rel="stylesheet" href="css/style.css">
<link href="css/member_make.css" rel="stylesheet">

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
document.getElementById('getval').addEventListener('change', readURL, true);
function readURL(){
    var file = document.getElementById("getval").files[0];
    var reader = new FileReader();
    reader.onloadend = function(){
        document.getElementById('profile-upload').style.backgroundImage = "url(" + reader.result + ")";        
    }
    if(file){
        reader.readAsDataURL(file);
    }else{
    }
}
</script>
<style type="text/css">

* {
	margin: 0px;
	padding: 0px;
}

*, *:after, *:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-o-box-sizing: border-box;
	box-sizing: border-box;
}

.clearfix:before, .clearfix:after {
	display: table;
	content: '';
}

.clearfix:after {
	clear: both;
}

input:focus, textarea:focus, keygen:focus, select:focus {
	outline: none;
}

::-moz-placeholder {
	color: #666;
	font-weight: 300;
	opacity: 1;
}

::-webkit-input-placeholder {
	color: #666;
	font-weight: 300;
}

.grid .col2 {
	width: 50%;
	padding: 0 10px 0 0;
}

.grid .col2.first {
	float: left;
}

.grid .col2.last {
	float: right;
}

.grid .col3 {
	width: 32%;
	float: left;
	margin-right: 11px;
}

.grid .col3.first {
	margin-left: 0;
	float: left;
}

.grid .col3.last {
	margin-right: 0;
	float: right;
}

/* profile page */
.innerwrap {
	width: 1200px;
	margin: 0 auto;
}

.section1 {
	background: #fff;
	position: relative;
	border-radius: 2px;
}

.section1 div .row:first-child {
	padding: 25px;
}

.section1 .col2.first img {
	border-radius: 50%;
	margin: 0 20px;
	width: 120px;
	border: 2px solid #f1f1f1;
	padding: 2px;
	float: left;
}

.section1 .col2.first {
	line-height: 25px;
	position: relative;
	border-right: 1px solid #a2a2a2;
}

.section1 .col2.first h1 {
	font-weight: normal;
	margin-bottom: 10px;
	margin-top: 15px;
	text-transform: capitalize;
}

.section1 .col2.first p {
	font-size: 14px;
}

.section1 .col2.first span {
	position: absolute;
	right: 15px;
	top: 16px;
	background: #6AAFEA;
	padding: 5px 11px;
	font-size: 12px;
	line-height: 1;
	border-radius: 2px;
	color: #fff;
	cursor: pointer;
}

.section1 .col2.last {
	padding: 8px 0;
}

.section1 .col2.last .col3 span {
	color: #a2a2a2;
	font-size: 14px;
}

.section1 .col2.last .col3 h1 {
	color: #FB4C22;
}

.section1 .col2.last .col3 {
	text-align: center;
	line-height: 30px;
	border-right: 1px solid #ccc;
}

.section1 .col2.last .col3.last {
	border-right: 0;
}

.row2tab li {
	list-style: none;
	float: left;
	width: 25%;
	padding: 15px;
	font-size: 14px;
	text-align: center;
	cursor: pointer;
	background: #f1f1f1;
	color: #555;
	border-bottom: 2px solid #f1f1f1;
}

.row2tab li:first-child {
	border-bottom: 2px solid #6AAFEA;
	border-radius: 0 0 2px 2px;
}

.row2tab li:first-child {
	color: #6AAFEA;
}

.row2tab li i {
	margin-right: 3px;
	font-size: 14px;
}

.smalltri {
	border-right: 40px solid #6AAFEA;
	height: 0;
	width: 0;
	border-left: 20px solid transparent;
	border-top: 10px solid #6AAFEA;
	border-bottom: 20px solid transparent;
	padding: 0px;
	top: 0;
	right: 0;
	position: absolute;
}

.smalltri i {
	position: absolute;
	top: -5px;
	right: -33px;
	color: #fff;
	border: 0px;
	font-size: 12px;
}

section.section2 {
	margin: 5px 0;
}

.section2 .col3 {
	width: 30%;
	margin-right: 60px;
	background: #fff;
	border-radius: 2px;
}

.section2 .postcont img {
	width: 100%;
}

.section2 .profileinfo {
	text-align: center;
	padding: 0 10px 30px;
	color: #555;
	font-size: 14px;
	line-height: 25px;
}

.section2 .profileinfo img {
	border-radius: 50%;
	width: 80px;
	padding: 2px;
	border: 3px solid #6AAFEA;
	margin-top: -48px;
	margin-bottom: 18px;
}

.section2 .col3.center .profileinfo img {
	border: 3px solid #FB4C22;
}

.section2 .profileinfo p {
	text-align: justify;
}

.section2 .profileinfo span {
	margin-top: 15px;
	display: block;
	text-align: left;
	color: #6AAFEA;
	cursor: pointer;
}

.section2 .profileinfo span i {
	margin-left: 10px;
}

@media only screen and (max-width: 1300px) {
	.innerwrap {
		width: 90%;
	}
	.section2 .col3 {
		margin-right: 5%;
	}
	.section1 .grid .col3 {
		margin-right: 2%;
	}
	.section1 .col2.last .col3.last {
		margin-right: 0;
	}
}

@media only screen and (max-width: 1060px) {
	.section1 .col2 {
		width: 100%;
		border-right: 0 !important;
		padding: 0;
	}
}

@media only screen and (max-width: 660px) {
	.section2 .col3 {
		width: 100%;
		float: none !important;
		margin-bottom: 10px;
	}
	.row2tab li {
		width: 50%;
		text-align: left;
	}
	.section1 .col2.first {
		text-align: center;
	}
	.section1 .col2.first img {
		display: inline-block;
		float: none;
	}
	.section1 .col2.first span {
		position: relative;
		right: 0;
	}
	.section1 .col2.last {
		margin-top: 25px;
	}
}

@media only screen and (max-width: 450px) {
	/* .container {
    padding: 60px 5px 70px;
} */
	.row2tab li {
		width: 100%;
		text-align: left;
	}
	.section1 .col2.last .col3 span {
		font-size: 10px;
	}
	.section1 .col2.last .col3 h1 {
		font-size: 18px;
	}
}

/* 제목 */
/* h3,
label[for="new-task"] {
  color: #333;
  font-weight: 700;
  font-size: 15px;
  border-bottom: 2px solid #333;
  padding: 30px 0 10px;
  margin: 0;
  text-transform: uppercase;
} */
/* 회원 정보 */

*, *:before, *:after {
	box-sizing: border-box;
}

body {
/* 	padding: 1em; */
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 15px;
	color: #808080;
	/*background-color: #e3e3e3;*/
}

h4 {
	color: #808080;
}

h5 {
	margin-left: -15px;
	font-size: 30px;
}

input, input[type="radio"]+label, input[type="checkbox"]+label:before,
	select option, select {
	/*width: 100%;*/
	padding: 1em;
	line-height: 1.4;
	background-color: #f9f9f9;
	border: 1px solid #e5e5e5;
	border-radius: 3px;
	-webkit-transition: 0.35s ease-in-out;
	-moz-transition: 0.35s ease-in-out;
	-o-transition: 0.35s ease-in-out;
	transition: 0.35s ease-in-out;
	transition: all 0.35s ease-in-out;
}

input:focus {
	outline: 0;
	border-color: #FFB9B9;
}

input:focus+.input-icon i {
	color: #FFB9B9;
}

input:focus+.input-icon:after {
	border-right-color: #FFB9B9;
}

input[type="radio"] {
	display: none;
}

input[type="radio"]+label, select {
	display: inline-block;
	width: 100%;
	text-align: center;
	float: left;
	border-radius: 0;
}

input[type="radio"]+label:first-of-type {
	border-top-left-radius: 3px;
	border-bottom-left-radius: 3px;
}

input[type="radio"]+label:last-of-type {
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
}

input[type="radio"]+label i {
	padding-right: 0.4em;
}

input[type="radio"]:checked+label, input:checked+label:before, select:focus,
	select:active {
	background-color: #FFB9B9;
	color: #fff;
	border-color: #FFB9B9;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]+label {
	position: relative;
	display: block;
	padding-left: 1.6em;
}

input[type="checkbox"]+label:before {
	position: absolute;
	top: 0.2em;
	left: 0;
	display: block;
	width: 1em;
	height: 1em;
	padding: 0;
	content: "";
}

input[type="checkbox"]+label:after {
	position: absolute;
	top: 0.45em;
	left: 0.2em;
	font-size: 0.8em;
	color: #fff;
	opacity: 0;
	font-family: FontAwesome;
	content: "\f00c";
}

input:checked+label:after {
	opacity: 1;
}

select {
	height: 3.4em;
	line-height: 2;
}

select:first-of-type {
	border-top-left-radius: 3px;
	border-bottom-left-radius: 3px;
}

select:last-of-type {
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
}

select:focus, select:active {
	outline: 0;
}

select option {
	background-color: #FFB9B9;
	color: #fff;
}

.input-group {
	margin-bottom: 1em;
	zoom: 1;
}

.input-group2 {
	margin-bottom: 1em;
	zoom: 1;
	position: relative;
	border-collapse: separate;
}

.input-group:before, .input-group:after {
	content: "";
	display: table;
}

.input-group:after {
	clear: both;
}

.input-group-icon {
	position: relative;
}

.input-group-icon input {
	padding-left: 4.4em;
}

.input-group-icon .input-icon {
	position: absolute;
	top: 0;
	left: 0;
	width: 3.4em;
	height: 3.4em;
	line-height: 3.4em;
	text-align: center;
	pointer-events: none;
}

.input-group-icon .input-icon:after {
	position: absolute;
	top: 0.6em;
	bottom: 0.6em;
	left: 3.4em;
	display: block;
	border-right: 1px solid #e5e5e5;
	content: "";
	-webkit-transition: 0.35s ease-in-out;
	-moz-transition: 0.35s ease-in-out;
	-o-transition: 0.35s ease-in-out;
	transition: 0.35s ease-in-out;
	transition: all 0.35s ease-in-out;
}

.input-group-icon .input-icon i {
	-webkit-transition: 0.35s ease-in-out;
	-moz-transition: 0.35s ease-in-out;
	-o-transition: 0.35s ease-in-out;
	transition: 0.35s ease-in-out;
	transition: all 0.35s ease-in-out;
}

.container2 {
	max-width: 70em;
	padding: 1em 3em 2em 3em;
	margin: 1.5em auto;
	background-color: #fff;
	border-radius: 4.2px;
	box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
}

.row {
	zoom: 1;
}

.row:before, .row:after {
	content: "";
	display: table;
}

.row:after {
	clear: both;
}

.col-half {
	padding-right: 10px;
	/*float: left;*/
	width: 50%;
}

.col-half:last-of-type {
	padding-right: 0;
}

.col-second {
	padding-right: 10px;
	float: left;
	width: 50%;
}

.col-second:last-of-type {
	padding-right: 0;
}

.col-third {
	padding-right: 10px;
	float: left;
	width: 33.33333333%;
}

.col-third:last-of-type {
	padding-right: 0;
}

.col-fifth {
	padding-right: 10px;
	float: left;
	width: 20%;
}

.col-fifth:last-of-type {
	padding-right: 0;
}

#skin_type {
	width: 100%
}

@media only screen and (max-width: 540px) {
	.col-half {
		width: 100%;
		padding-right: 0;
	}
}

#label_icon {
	line-height: 3.5;
}

#input-group-icon_address {
	padding-left: 20em;
}@CHARSET "EUC-KR";

 /* 내비게이션 / 메뉴바  */
 
/*  body {
  margin: 0;
  background-color: #3F51B5;
  position: relative;
  font-family: 'Roboto', sans-serif;
} */

.header-nav {
  position: relative;
  background-color: #F1F1F1;
}
.header-nav ul {
  list-style: none;
  overflow: hidden;
  font-size: 0;
  padding: 0;
  margin: 0;
  display: block;
  margin: 0 auto;
  width: 600px;
  position: relative;
  padding-bottom: 2px;
}
.header-nav ul li {
  display: inline-block;
  width: 20%;
  text-align: center;
}
.header-nav ul li:nth-child(1).active ~ .marker {
  left: 40%;
}
.header-nav ul li:nth-child(1):hover ~ .marker {
  left: 0% !important;
}
.header-nav ul li:nth-child(2).active ~ .marker {
  left: 20%;
}
.header-nav ul li:nth-child(2):hover ~ .marker {
  left: 20% !important;
}
.header-nav ul li:nth-child(3).active ~ .marker {
  left: 40%;
}
.header-nav ul li:nth-child(3):hover ~ .marker {
  left: 40% !important;
}
.header-nav ul li:nth-child(4).active ~ .marker {
  left: 60%;
}
.header-nav ul li:nth-child(4):hover ~ .marker {
  left: 60% !important;
}
.header-nav ul li:nth-child(5).active ~ .marker {
  left: 80%;
}
.header-nav ul li:nth-child(5):hover ~ .marker {
  left: 80% !important;
}
.header-nav ul li a {
  display: block;
  font-size: 16px;
  text-decoration: none;
  color: #808080;
  padding: 20px 15px 15px 15px;
  text-transform: uppercase;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
.header-nav .marker {
  position: absolute;
  left: 0%;
  bottom: 0;
  height: 2px;
  width: 20%;
  background-color: #ff9999;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  -webkit-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
 
 /* 프로필 사진 */
 #profile-upload{
    background-image:url('');
    background-size:cover;
    background-position: center;
    height: 250px; width: 250px;
    border: 1px solid #bbb;
    position:relative;
  border-radius:250px;
  overflow:hidden;
}
#profile-upload:hover input.upload{
  display:block;
}
#profile-upload:hover .hvr-profile-img{
  display:inline-block;
 }
#profile-upload .fa{   margin: auto;
    position: absolute;
    bottom: -4px;
    left: 0;
    text-align: center;
    right: 0;
    padding: 6px;
   opacity:1;
  transition:opacity 1s linear;
   -webkit-transform: scale(.75); 
 
 
}
#profile-upload:hover .fa{
   opacity:1;
   -webkit-transform: scale(1); 
}
#profile-upload input.upload {
    z-index:1;
    left: 0;
    margin: 0;
    bottom: 0;
    top: 0;
    padding: 0;
    opacity: 0;
    outline: none;
    cursor: pointer;
    position: absolute;
    background:#ccc;
    width:100%;
    display:none;
}

#profile-upload .hvr-profile-img {
  width:100%;
  height:100%;
  display: none;
  position:absolute;
  vertical-align: middle;
  position: relative;
  background: transparent;
 }
#profile-upload .fa:after {
    content: "";
    position:absolute;
    bottom:0; left:0;
    width:100%; height:0px;
    background:rgba(0,0,0,0.3);
    z-index:-1;
    transition: height 0.3s;
    }

#profile-upload:hover .fa:after { height:100%; }

</style>


</head>

<body>
<body class="font-sans">
	<div>
		<div class="flex -mx-4">
			<div class="container mx-auto px-8">
				<div class="container">
					<div class="innerwrap">
						<section class="section1 clearfix">
							<div>
								<div class="row grid clearfix">
									<div class="col2 first">
										<img
											src="http://images.contactmusic.com/newsimages/david_beckham_1133321.jpg"
											alt="">
										<h1>사용자 이름</h1>
										<h4>사용자 닉네임</h4>
										<p>스킨 타입</p>
									</div>
									<div class="col2 last">
										<div class="grid clearfix">
											<div class="col3 first">
												<h1>14</h1>
												<span>Pouch</span>
											</div>
											<div class="col3">
												<h1>35</h1>
												<span>Product</span>
											</div>
											<div class="col3 last">
												<h1>5</h1>
												<span>Brand</span>
											</div>
										</div>
									</div>
								</div>
								<div>									
									<nav class='header-nav'>
									  <ul>
									    <li class='active'>
									      <a href='profile_myactivity.hr'>
									        나의 활동
									      </a>
									    </li>
									    <li>
									      <a href='profile_like.hr'>
									        즐겨찾기
									      </a>
									    </li>
									    <li>
									      <a href='profile_info.hr'>
									        내 정보
									      </a>
									    </li>
									    <li>
									      <a href='../pouch/pouch_detail.hr'>
									        MY POUCH
									      </a>
									    </li>									    
									    <div class='marker'></div>
									  </ul>
									</nav>
								</div>
							</div>
						</section>
						<section class="section2 clearfix">
						  <div class="grid">
							<!-- 회원정보 -->
							<div class="container2">
							<form>
								<h5>내 정보</h5><br><br>
								<div class="row">
									<h4>Account</h4><br>
									<div class="col-sm-4">
									<div class="input-group input-group-icon">
										<input type="text" placeholder="회원 아이디" />
										<div class="input-icon">
											<i class="fa fa-user" id="label_icon"></i>
										</div>
									</div>
									<div class="input-group input-group-icon">
										<input type="text" placeholder="회원 이름" />
										<div class="input-icon">
											<i class="fa fa-user" id="label_icon"></i>
										</div>
									</div>
									<div class="input-group input-group-icon">
										<input type="text" placeholder="회원 닉네임" />
										<div class="input-icon">
											<i class="fa fa-user" id="label_icon"></i>
										</div>
									</div>
									<div class="input-group input-group-icon">
										<input type="email" placeholder="회원 이메일" />
										<div class="input-icon">
											<i class="fa fa-envelope" id="label_icon"></i>
										</div>
									</div>
									<div class="input-group input-group-icon">
										<input type="text" placeholder="회원 주소" id="input-group-icon_address" class=""/>
										<div class="input-icon">
											<i class="fa fa-user" id="label_icon"></i>
										</div>
									</div>
									</div>
									<div class="col-sm-4">
									<div id='profile-upload' >
									  <div class="hvr-profile-img">
									    <input type="file" name="logo" id='getval'  class="upload w180" title="Dimensions 180 X 180" id="imag">
									  </div>
									  <i class="fa fa-camera"></i>
									</div>
									</div>
									
						
								</div>
								<div class="row">
									<div class="col-half">
										<h4>Date of Birth</h4><br>
										<div class="input-group">
											<div class="col-third">
												<input type="text" placeholder="YYYY" />
											</div>
											<div class="col-third">
												<input type="text" placeholder="MM" />
											</div>
											<div class="col-third">
												<input type="text" placeholder="DD" />
											</div>
										</div>
									</div>
								</div>
				
								<div class=row>
									<h4>Skin Type</h4><br>
									<div class="input-group2">
										<div class="col-fifth">
											<input type="radio" name="skin_type" id="skin_type1" /> <label for="skin_type1">건성</label>
										</div>
										<div class="col-fifth">
											<input type="radio" name="skin_type" id="skin_type2" /> <label for="skin_type2">지성</label>
										</div>
										<div class="col-fifth">
											<input type="radio" name="skin_type" id="skin_type3" /> <label for="skin_type3">지복합성</label>
										</div>
										<div class="col-fifth">
											<input type="radio" name="skin_type" id="skin_type4" /> <label for="skin_type4">민감성</label>
										</div>
										<div class="col-fifth">
											<input type="radio" name="skin_type" id="skin_type5" /> <label for="skin_type5">모르겠음</label>
										</div>
									</div>
								</div>
								<div class="row">	
								   <br><br>			
									<div class="col-harf text-center">
										<input type="submit" value="수정" id="info-edit"> 
									</div>
								</div>
							</form>
						</div>
						  </div>
						</section>
					</div>
				</div>
					

			</div>
		</div>
	</div>
</body>


</body>
</html>
