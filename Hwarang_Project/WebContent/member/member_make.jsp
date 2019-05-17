<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="">
<meta name="author" content="">

<title>HWARANG PROJECT</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/prettyPhoto.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">
<link href="../css/profile-upload.css" rel="stylesheet">


<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<style type="text/css">
*, *:before, *:after {
	box-sizing: border-box;
}


body {
	/* padding: 1em; */
	font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 15px;
	color: #b9b9b9;
	/*background-color: #e3e3e3;*/
}


h4 {
	color: #d321ab63;
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
	border-color: #64ac15;
}

input:focus+.input-icon i {
	color: #7ed321;
}

input:focus+.input-icon:after {
	border-right-color: #7ed321;
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
	background-color: #d321ab63;
	color: #fff;
	border-color: #d321ab63;
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
	background-color: #7ed321;
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
	padding: 3em 7em 3em 7em;
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

#logo {
	width: 200px;
	height: 45px;
}

#label_icon {
	line-height: 3.5;
}

#input-group-icon_address {
	/*padding-left: 20em;*/
	width: 535px;
}

#Y {
	width: 50px;
	padding-right: 10px;
	margin: 0px 0px 10px 0px;
}

#N {
	width: 50px;
	margin: 0px 10px 0px 0px;
}

#search_address,#sample4_postcode
{
   width:100px;
   padding:1em;
   margin : 0em 0em 1em;
}
#sample4_roadAddress
{
   width:400px;
   padding:1em;
   margin : 0em 0em 1em;
}
#sample4_detailAddress
{
   width:300px;
   padding:1em;
   margin : 0em 0em 1em;
}

}
</style>
<link rel="stylesheet" type="text/css" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init({	
	players:["iframe"]
});


function skin_test()
{
	Shadowbox.open({
		content:'../Hwarang/skin_test.hr',
		player:'iframe',
		title:'Skin Test',
		width:700
	});
}

function idcheck()
{
	Shadowbox.open({
		content:'../member/idcheck.hr',
		player:'iframe',
		title:'아이디중복체크',
		width:350,
		height:250
	}); 
	
	
}
</script>

</head>
<body>
	

	<!-- 회원가입  -->
	<div class="container2"> 
		<form method="post" action="../member/member_make_ok.hr" name="joinFrm" enctype="multipart/form-data">
			<h5>회원가입</h5>
			<div class="row">
				<h4>Account</h4>

					<div id='profile-upload' >
						<div class="hvr-profile-img">
							<input type="file" name="logo" id='getval' class="upload w180"
								title="Dimensions 180 X 180" id="imag">
						</div>
						<i class="fa fa-camera"></i>
					</div>
					<div class="input-group input-group-icon">
						<input type="text" name = "id" placeholder="ID" readonly onclick="idcheck()">
						<div class="input-icon">
							<i class="fa fa-user" id="label_icon"></i>
						</div>
					</div>
									
					<div class="input-group input-group-icon">
						<input type="text" name="name" placeholder="Name" />
						<div class="input-icon">
							<i class="fa fa-user" id="label_icon"></i>
						</div>
					</div>
					<div class="input-group input-group-icon">
						<input type="text" name="nickname" placeholder="NickName" />
						<div class="input-icon">
							<i class="fa fa-user" id="label_icon"></i>
						</div>
					</div>
					<div class="input-group input-group-icon">
						<input type="email" name="email" placeholder="Email Adress" />
						<div class="input-icon">
							<i class="fa fa-envelope" id="label_icon"></i>
						</div>
					</div>
					<div class="input-group input-group-icon">
						<input type="password" name="password" placeholder="Password" />
						<div class="input-icon">
							<i class="fa fa-key" id="label_icon"></i>
						</div>
					</div>
					<!-- <div class="input-group input-group-icon">
						<input type="email" placeholder="Adress"
							id="input-group-icon_address" />
						<div class="input-icon">
							<i class="fa fa-user" id="label_icon"></i>
						</div>
					</div> -->
					
					<div class="input-group input-group-icon" id = "address">
               <input type="text" id="sample4_postcode" placeholder="우편번호" name="postcode">&nbsp;&nbsp;&nbsp;
               <input type="button" onclick="sample4_execDaumPostcode()"
                  value="찾기" id= "search_address" ><br>
                   <input type="text"   id="sample4_roadAddress" placeholder="도로명주소" name="address">
               <span id="guide" style="color: #999; display: none"></span>
               &nbsp;&nbsp;&nbsp;
               <input
                  type="text" id="sample4_detailAddress" name="addr2" placeholder="상세주소" width ="100%">
               <!-- <div class="input-icon">
                  <i class="fa fa-user" id="label_icon"></i>
               </div> -->
            </div>
		
			</div>
			<div class="row">
				<div class="col-half">
					<h4>Date of Birth</h4>
					<div class="input-group">
						<div class="col-third">
							<input type="text" name="yyyy" placeholder="YYYY" />
						</div>
						<div class="col-third">
							<input type="text" name="mm" placeholder="MM" />
						</div>
						<div class="col-third">
							<input type="text" name = "dd" placeholder="DD" />
						</div>
					</div>
				</div>
				<div class="col-half">
					<h4>Gender</h4>
					<div class="input-group">
						<div class="col-second ">
							<input type="radio" name="gender" value="male" id="gender-male" />
							<label for="gender-male">Male</label>
						</div>
						<div class="col-second">
							<input type="radio" name="gender" value="female"
								id="gender-female" /> <label for="gender-female">Female</label>
						</div>
					</div>


				</div>
			</div>

			<div class="row">
				<h4>선호브랜드</h4>
				<div class="input-group" >
					<select name="brand_like">
					<c:forEach var="vo" items="${brand_name }" varStatus="s">
						<option>${vo.brand }</option>
					</c:forEach>
					</select>
				</div>
			</div>


			<div class=row>
				<h4>Skin Type</h4>
				<div class="input-group2">
					<div class="col-fifth">
						<input type="radio" name="skin_type" id="skin_type1"  value="건성"/> <label
							for="skin_type1">건성</label>
					</div>
					<div class="col-fifth">
						<input type="radio" name="skin_type" id="skin_type2" value="지성"/> <label
							for="skin_type2">지성</label>
					</div>
					<div class="col-fifth">
						<input type="radio" name="skin_type" id="skin_type3" value="지복합성"/> <label
							for="skin_type3">지복합성</label>
					</div>
					<div class="col-fifth">
						<input type="radio" name="skin_type" id="skin_type4" value="민강성"/> <label
							for="skin_type4">민감성</label>
					</div>
					<div class="col-fifth">
						<input type="radio" name="skin_type" id="skin_type5" onclick="skin_test()"/> <label
							for="skin_type5">알아보기</label>
					</div>
				</div>
			</div>


			<div class="row">
				<h4>Terms and Conditions</h4>
				<div class="input-group">
					<input type="checkbox" id="terms" /> <label for="terms">I
						accept the terms and conditions for signing up to this service,
						and hereby confirm I have read the privacy policy.</label>
				</div>
			</div>
			<div class="row">

				<div class="col-harf text-center">
					<input type="submit" value="가입">
					<input type="button" value="취소">
				</div>
			</div>
			
		</form>
	</div>


	
	<script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.scrollUp.min.js"></script>
	<script src="../js/price-range.js"></script>
	<script src="../js/jquery.prettyPhoto.js"></script>
	<script src="../js/main.js"></script>
	<script  src="../js/profile_upload.js"></script>


	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	
	
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   <script>
      //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
      function sample4_execDaumPostcode() {
         new daum.Postcode(
               {
                  oncomplete : function(data) {
                     // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                     // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                     var roadAddr = data.roadAddress; // 도로명 주소 변수
                     var extraRoadAddr = ''; // 참고 항목 변수

                     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                     if (data.bname !== ''
                           && /[동|로|가]$/g.test(data.bname)) {
                        extraRoadAddr += data.bname;
                     }
                     // 건물명이 있고, 공동주택일 경우 추가한다.
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraRoadAddr += (extraRoadAddr !== '' ? ', '
                              + data.buildingName : data.buildingName);
                     }
                     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                     if (extraRoadAddr !== '') {
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                     }

                     // 우편번호와 주소 정보를 해당 필드에 넣는다.
                     document.getElementById('sample4_postcode').value = data.zonecode;
                     document.getElementById("sample4_roadAddress").value = roadAddr;
                     document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                     // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                     if (roadAddr !== '') {
                        document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                     } else {
                        document.getElementById("sample4_extraAddress").value = '';
                     }

                     var guideTextBox = document.getElementById("guide");
                     // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                     if (data.autoRoadAddress) {
                        var expRoadAddr = data.autoRoadAddress
                              + extraRoadAddr;
                        guideTextBox.innerHTML = '(예상 도로명 주소 : '
                              + expRoadAddr + ')';
                        guideTextBox.style.display = 'block';

                     } else if (data.autoJibunAddress) {
                        var expJibunAddr = data.autoJibunAddress;
                        guideTextBox.innerHTML = '(예상 지번 주소 : '
                              + expJibunAddr + ')';
                        guideTextBox.style.display = 'block';
                     } else {
                        guideTextBox.innerHTML = '';
                        guideTextBox.style.display = 'none';
                     }
                  }
               }).open();
      }
   </script>
	
	
</body>
</html>