<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>community</title>
<link rel="stylesheet" href="css/bootstrap.css">

<!-- 내가 설정한 스타일 -->
<style type="text/css">
/* .form-group{
width:800px;
position:center;

} */
#navBtn {
	position: relative; //
	display: block;
	height: 45px;
	width: 280px;
	margin: 10px 7px;
	padding: 5px 5px;
	font-weight: 700;
	font-size: 15px;
	letter-spacing: 2px;
	color: #383736;
	border: 2px #383736 solid;
	border-radius: 4px;
	text-transform: uppercase;
	outline: 0;
	overflow: hidden;
	background: none;
	z-index: 1;
	cursor: pointer;
	transition: 0.08s ease-in;
	-o-transition: 0.08s ease-in;
	-ms-transition: 0.08s ease-in;
	-moz-transition: 0.08s ease-in;
	-webkit-transition: 0.08s ease-in;
}

.fill:hover {
	color: whitesmoke;
}

.fill:before {
	content: "";
	position: absolute;
	background: #383736;
	bottom: 0;
	left: 0;
	right: 0;
	top: 100%;
	z-index: -1;
	-webkit-transition: top 0.09s ease-in;
}

.fill:hover:before {
	top: 0;
}

.fade:before {
	content: "→";
	position: absolute;
	color: #383736;
	left: 88%;
	opacity: 0;
	-webkit-transition: all 0.2s ease-in;
}

.fade:hover:before {
	left: 91%;
	opacity: 1;
}

.fade:hover {
	border: 0px #fff solid;
	-webkit-transform: scale(1.04, 1.04);
	-webkit-transition: border 0.3s ease-out;
	-webkit-transition: transform 250ms
		cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.arrow {
	text-align: left;
	padding-left: 17px;
}

.arrow:before {
	content: "→";
	position: absolute;
	color: #383736;
	left: 83%;
	opacity: 0;
	-webkit-transition: all 250ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.arrow:hover:before {
	left: 84%;
	opacity: 1;
}

.arrow:hover {
	width: 170px;
}

.slide:after {
	content: "View Story";
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	text-align: center;
	-webkit-transition: all 400ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.slide:before {
	content: "Read it →";
	height: 100%;
	width: 100%;
	position: absolute;
	color: #383736;
	left: -100%;
	opacity: 0;
	-webkit-transition: all 500ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.slide:hover {
	background: #383736;
}

.slide:hover:before {
	left: 0;
	opacity: 1;
	color: #fff;
}

.slide:hover:after {
	left: 100%;
	opacity: 0;
}

.slide.left:hover {
	background: none;
}

.slide.left:before {
	left: 100%;
	color: #383736;
	-webkit-transition: all 425ms cubic-bezier(0.680, -0.550, 0.265, 1.550);
}

.slide.left:hover:before {
	left: 0;
}

.svg {
	-webkit-transition: all 150ms cubic-bezier(0.445, 0.050, 0.550, 0.950);
}

.svg:before {
	position: absolute;
	content: "";
	background: url(https://f.cl.ly/items/3H3A0D1N281a2T280F3o/heist.svg)
		no-repeat center center;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	z-index: -1;
	opacity: 0;
	-webkit-transition: all 250ms cubic-bezier(0.230, 1.000, 0.320, 1.000);
}

.svg:after {
	content: "";
	position: absolute;
	background: #d19b26;
	bottom: 0;
	left: 0;
	right: 0;
	top: 100%;
	z-index: -2;
	-webkit-transition: all 250ms cubic-bezier(0.230, 1.000, 0.320, 1.000);
}

.svg:hover {
	color: white;
	border: 0px #d19b26 solid;
}

.svg:hover:before {
	opacity: .8;
}

.svg:hover:after {
	top: 0;
}

<!--
글쓰기폼-->body {
	margin: 2em auto;
	max-width: 600px;
}

form div {
	margin-bottom: 0.5em;
}

form div label, form div input {
	display: block;
	margin-bottom: 0.3em;
}

div#board_select {
	margin-top:20px;
	width: 600px;
}

div#write_subject {
	width: 600px;
}

div#write_content {
	width: 600px;
	height: 350px;
}

div#com_write {
	display: inline-block;
	text-align: left;
	position: relative;
	margin: 0 auto;
}

#write_sub
{
	
	margin-bottom:100px;
	width: 100px;
}

#write_file
{
	margin-top:50px;
	width:270px;
}

#write_pw
{
width: 150px;
}

#file{

	
	width: 45%
}

#pwd{
	width: 25%
	
}

#select{
	width: 33.3%
}

#Search {
	height: 70px;
}

#SH {
	height: 70px;
}

#in {
	display: inline-block;
	width: 40%;
}

#out {
	text-align: center;
	width: 100%;
}
#write_sub{
	margin-right: 150px;
}



</style>
</head>

<body>

	<!-- 글쓰기폼 -->
	<div class="container" id="out">
		<div class="row" id="in">
			<form method="post" action="community_write_ok.jsp"
				enctype="multipart/form-data">

				<div class="form-group " id="board_select">
					<label for="select" class="text-left">게시판 선택</label> 
					<select name="select" class="form-control" id="select">
						<option value="none" selected="selected">문의사항</option>
						<option value="jquery">화장법</option>
						<option value="angularjs">화장품 추천</option>
						<option value="mine">기타</option>
					</select>


					<hr>
					<div class="form-group" id="write_subject">
						<label for="name" class="text-left">제목</label> 
						<input class="form-control" type="text" name="name"/>
					</div>
					
					<label for="message" class="text-left">내용</label>
					<textarea class="form-control" name="message" rows="15" cols="25"></textarea>
					
					<label for="email" class="text-left">첨부파일</label> 
					<input class="form-control" id="file" type=file name=upload class="input-sm"/>
						
					<label for="password" class="text-left">비밀번호</label> 
					<input class="form-control" id="pwd" type="password" name="password" id="password" />
					
					<hr>
				</div>

				<p align="center">
					<input id="write_sub" type="submit" value="등록" class="btn btn-primary btn-block"\/>
				</p>	
				
			</form>
		</div>
	</div>

	<!-- <pre id="output"></pre>


<textarea name="" id="" cols="30" rows="10"></textarea>

 <input name="image" type="file" id="upload" class="hidden" onchange=""> -->

	<script src="js/jquery-3.1.1.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>