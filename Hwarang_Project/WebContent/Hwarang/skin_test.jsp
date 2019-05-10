<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 템플릿 링크 -->
<!-- 반응형 제거 -->
<!-- col-sm ==> col-xm 으로 변경 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
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
h5 {
	margin-left: 1em;
	font-size: 25px;
	font-family: 'Roboto', sans-serif;
	color: #b9b9b9;
}

.container2 {
	max-width: 70em;
	padding: 3em 7em 3em 7em;
	margin: 1.5em auto;
	background-color: #fff;
	border-radius: 4.2px;
	box-shadow: 0px 3px 10px -2px rgba(0, 0, 0, 0.2);
}

.checklist {
	list-style: none;
	box-shadow: 0 1px 2px rgba(black, 0.2);
	margin: 1.5rem 0;
	background: white;
}

label {
	position: relative;
	display: block;
	line-height: 2;
	padding-left: 50px;
	cursor: pointer;
	margin: 0;
	padding-top: 1.5rem;
	padding-bottom: 1.5rem;
	padding-right: .5rem;
}

label:hover {
	background: #f6f6f6;
}

label:active {
	background: #f4f4f4;
}

input {
	 visibility: hidden;
	 display: none; 
}
#finish,#cancel{
	 visibility: visible;
	 display: inline;
	 
}
span {
	position: relative;
	color: #333;
	transition: all .15s ease;
}

span:before {
	content: '';
	position: absolute;
	width: 26px;
	height: 26px;
	top: -3px;
	left: -38px;
	text-align: center;
	line-height: 26px;
	text-indent: 0px;
	color: white;
	font-family: 'FontAwesome';
	font-size: 1.4rem;
	border-radius: 50%;
	background: #fff;
	box-shadow: inset 0 0 0 2px rgba(0, 0, 0, .1);
	transition: all .15s ease;
}

input:checked ~ span:before {
	content: '\f00c';
	background: #d321ab63;
	box-shadow: none;
}

input:checked ~ span {
	color: #ccc;
}

/* 로고 크기 */
#logo {
	width: 200px;
	height: 45px;
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<script src="https://code.jquery.com/jquery.js"></script>

<script type="text/javascript">

function end()
{
	parent.Shadowbox.close();
}

$(function(){
	$('#finish').click(function(){
		var len=$('.item:checked').length;
		if(len==0)
		{
			alert("선택하세요");
		}
		else
		{
			var check="";
			$('.item:checked').each(function() { 
				check+=this.value+",";
		    });
			check=check.substring(0,check.lastIndexOf(","));
			//alert(check);
			$.ajax({
				type:'POST',
				url:'../Hwarang/skin_test_ok.hr',
				data:{"check":check},
				success:function(response)
				{
					var no=response.trim();
					var html=""
					//alert(no);
					if(no==1)
					{
						html="회원님의 피부타입은 '건성'입니다.";
					}
					else if(no==2)
					{
						html="회원님의 피부타입은 '지성'입니다.";
					}
					else if(no==3)
					{
						html="회원님의 피부타입은 '지복합성'입니다.";
					}
					else if(no==4)
					{
					   html="회원님의 피부타입은 '민감성'입니다."; 
					}
					
					$('#res').text(html);
					$('#dialog').show();
					 
				}
				
			});
			
			
		}
		
	});
});

/* function ok()
{
	parent.Shadowbox.close();
} */
</script>

</head>
<body>
	<!-- 회원가입  -->
	<div class="container2">
		<h5>SKIN TEST</h5>
		<!-- <form method="post" action="../Hwarang/skin_test_ok.hr" id="testFrm"> -->
		<div class="checklist">
		
				<label>
				    <!-- 건성 -->
				    <input class="item" type="checkbox" name= "check" value="1"/><span>- 세안 후 얼굴이 빠르게 당기고 각질이 일어난다.</span></label> <label>
					<input class="item"	type="checkbox" name= "check" value="2"/><span>- 화장이 잘 받지 않고 뜨는 편이다.</span></label> <label>
					<input	class="item" type="checkbox" name= "check" value="3"/><span>- 눈가,입가에 쉽게 주름이 생긴다.</span></label> <label>
					<input	class="item" type="checkbox" name= "check" value="4"/><span>- 피부가 윤기없고 푸석푸석하며 탄력이없다.</span></label> <label>
					<input class="item" type="checkbox" name= "check" value="5"/><span>- 입술이 잘 트며, 피부표면이 거칠고 매끄럽지 않다.</span></label> <label>
					<input class="item"	type="checkbox" name= "check" value="6"/><span>- 겨울에 피부 각질이 쉽게 일어난다. </span></label><label>
					<!-- 지성 -->
					<input	class="item" type="checkbox" name= "check" value="7"/><span>- 화장이 잘 받지 않고 시간이 지날수록 쉽게 지워진다. </span></label><label>
					<input class="item"	type="checkbox" name= "check" value="8"/><span>- 피지 과다 분비로 모공이 넓고 유분기가 많다. </span></label> <label>
					<input	class="item" type="checkbox" name= "check" value="9"/><span>- 특정부위 상관없이 여드름이나 트러블이 자주 생기는 편이다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="10"/><span>- 햇빛을 받으면 쉽게 탄다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="11"/><span>- 눈가 입가 및 피부에 주름이 없는 편이다. </span></label> <label>
					
					<!-- 지복합성 -->
					<input class="item"	type="checkbox" name= "check" value="12"/><span>- T존 부위에 유분기가 유독 많고 다른 부위는 당김이 심하다.	</span></label> <label>
					<input class="item" type="checkbox" name= "check" value="13"/><span>- 입가나 눈가에 잔주름이 많다. </span></label> <label>
					<input class="item"	type="checkbox" name= "check" value="14"/><span>- 피지분비는 많지만 수분이 적어 화장이 잘 받지 않는다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="15"/><span>- 코 부분의 모공이 넓고 피부가 거칠며	윤기가 없다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="16"/><span>- 광대뼈와 볼 부위에 색소침착이 나타나는 경우가 있다. </span></label> <label>
					<input class="item"	type="checkbox" name= "check" value="17"/><span>- 피지의 분비량이 균형적이지 못해 관리가 힘들다. </span></label> <label>
					<!-- 민강성 -->
					<input class="item" type="checkbox" name= "check" value="18"/><span>- 약한 자극에도 피부가 쉽게 붉어지는 편이다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="19"/><span>- 화장품에 쉽게 자극이 일어나며 교체 시마다 피부트러블을 겪는다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="20"/><span>- 세안 할 때나 화장할 때 피부가 간혹 따금거린다. </span></label> <label>
					<input class="item" type="checkbox" name= "check" value="21"/><span>- 피지가 별로 없어도 여드름이 자주 생긴다. </span></label> <label>
					<input class="item"	type="checkbox" name= "check" value="22"/><span>- 피부가 가려우며, 자외선에 약하다. </span></label>

			<div class="row">
				<div class="col-harf text-center">
				<input type="button" value="결과" id="finish" >
				<input type="button" value="닫기" id= "cancel" onclick="end()">
				</div>
			
			
			<div id="dialog" title="결과 " style="display:none" class="row">
				<br><br>
  				<p id="res" class="text-center"></p>
  				<!-- <p><input type="button" value="확인" id= "cancel" class="text-center" onclick="ok()"></p> -->
			</div>	
			</div>
		</div>
	<!-- </form> -->
	</div>

	<script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="..js/jquery.scrollUp.min.js"></script>
	<script src="../js/price-range.js"></script>
	<script src="../js/jquery.prettyPhoto.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/profile_upload.js"></script>
	<script	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


</body>
</html>