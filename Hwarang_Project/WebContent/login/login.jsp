<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>HWARANG PROJECT</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/prettyPhoto.css" rel="stylesheet">
<link href="../css/price-range.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/responsive.css" rel="stylesheet">

<style type="text/css">
*, *:before, *:after {
	box-sizing: border-box;
}

h4 {
	color: #d321ab63;
}

h5 {
	margin-left: -15px;
	font-size: 30px;
	color:#b9b9b9;
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
	max-width: 40em;
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
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<%--AJAX쓰는거  --%>
<script type="text/javascript">
	//jquery
	$(function(){
	$('#logBtn').click(function(){
		var id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
			return;
		}
		
		var pwd=$('#pwd').val();
		if(pwd.trim()=="")
		{
			$('#pwd').focus();
			return;
		}
		
		// 전송  => login요청 
		/*
		     login_ok.jsp
		     ============
		    	 NOID
		    	 NOPWD
		    	 OK
		*/
		$.ajax({
			type:'post',
			url:'../login/login_ok.hr',
			data:{"id":id,"pwd":pwd},
			success:function(response)
			{
				var result=response.trim();
				if(result=="NOID")
				{	
					alert("아이디가 존재하지 않습니다!!");
					$('#id').val("");
					$('#pwd').val("");
					
					$('#id').focus();
				}
				else if(result=="NOPWD")
				{
					alert("비밀번호가 틀립니다.");	
					$('#pwd').val("");
					$('#pwd').focus();
				}
				else//OK
				{
					alert("로그인되었습니다!!");
					//parent.Shadowbox.close();
					window.parent.location.href='../main/main.hr';
				}
			}
		});
		
	});
});
</script>

<script type="text/javascript">
function end() {
	javascript:history.back();
}
</script>

</head>
<body>
	<!-- 회원가입  -->
	<div class="container2">
		<form>
			<h5>로그인</h5>
			<div class="container2">
			<div class="row">
				<h4>Account</h4>
					<div class="input-group input-group-icon">
						<input type="text" placeholder="ID" id="id"/>
						<div class="input-icon">
							<i class="fa fa-user" id="label_icon"></i>
						</div>
					</div>
									
					<div class="input-group input-group-icon">
						<input type="password" placeholder="Password" id="pwd"/>
						<div class="input-icon">
							<i class="fa fa-key" id="label_icon"></i>
						</div>
					</div>
			</div>
			
			<div class="row">
				<div class="col-harf text-center">

					<input type="button" value="로그인" id="logBtn"/>
					<input type="button" value="취소"  onclick="javascript:history.back()"/>
				</div>
			</div>
			</div>
		</form>
	</div>
	

	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	
</body>
</html>