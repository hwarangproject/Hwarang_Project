<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<!-- <link rel="shortcut icon" href="images/ico/favicon.ico"> -->
<link href="../css/profile-upload.css" rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'>
<link href="../css/pouch.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">


<script src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	
<%-- 댓글 별점--%>
	$(function() {
		$('input[name="star-input"]').click(function() {
			var value = $(this).val();
			$('#pouch_rate').attr('value', value);
		});

		$('.rupdateBtn').click(function() {

			var rno = $(this).attr("id");
			$('#b' + rno).hide();
			$('#a' + rno).show();

		});

	});
<%-- 좋아요--%>
	$(function() {
		var no = 0;
		$('#pouch_like_before').show();
		$('#like').click(function() {

			var pouch_no = $('#pouch_no').val();
			if (no == 0) {
				$.ajax({
					type : 'POST',
					data : {
						"pouch_no" : pouch_no
					},
					url : '../pouch/pouch_like_ok.hr',
					success : function(response) {
						$('#pouch_like_before').hide();
						$('#pouch_like_after').text(response);
						$('#pouch_like_after').show();
					}

				});
				no = 1;
			}

			else if (no == 1) {
				$.ajax({
					type : 'POST',
					data : {
						"pouch_no" : pouch_no
					},
					url : '../pouch/pouch_like_ok_descent.hr',
					success : function(response) {
						$('#pouch_like_before').hide();
						$('#pouch_like_after').text(response);
						$('#pouch_like_after').show();
					}

				});

				no = 0;
			}

		});
	});
</script>
<style type="text/css">
</style>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12padding-right">
				<div class="features_items">
					<h2 class="title text-center">POUCH</h2>
					<div class="col-sm-12">
						<!-- 개인 정보 -->
						

							<div class="product-details">
								<div class="row text-center" id="intro-top">
									<div id="introduce">
										<div class="tab-pane fade active in">
											<div class="col-sm-8">
												<section class="section1 clearfix">
												<div>
													<div class="row grid clearfix">
														<div class="col2 first">
															<img id="profile_img" src="${mvo.profile_img }"
																style="width: 180px; height: 180px;">
														</div>
														<div class="col2 last">
															<div class="grid clearfix">
																<div class="col3 first">
																	<a href="#" style="color: gray;"> <span>회원ID</span>
																		<h1>닉네임</h1></a>
																</div>
																<div class="col3">
																	<span>피부타입</span>
																	<h1>건성</h1>

																</div>
																<div class="col3 last">
																	<input type="hidden" id="pouch_no"
																		value="${vo.pouch_no}"> <span>좋아요<font
																		style="color: pink;">♡</font></span>
																	<h1 id="pouch_like_after"></h1>
																	<h1 id="pouch_like_before">${vo.pouch_like }</h1>
																	<td><input type="checkbox" id="like" /> <label
																		for="like"> <svg
																				xmlns="http://www.w3.org/2000/svg"
																				viewBox="0 0 25 25"> <path
																				d="M12 21.35l-1.45-1.32c-5.15-4.67-8.55-7.75-8.55-11.53 0-3.08 2.42-5.5 5.5-5.5 1.74 0 3.41.81 4.5 2.09 1.09-1.28 2.76-2.09 4.5-2.09 3.08 0 5.5 2.42 5.5 5.5 0 3.78-3.4 6.86-8.55 11.54l-1.45 1.31z" />
																			</svg>
																	</label></td> <br> <br> <br> <br>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										</section>
									</div>
									<div class="col-sm-4">
										<h2 class="subject_intro">
										<!-- 	제목 
											<textarea rows="1" cols="5" name="pouch_intro"></textarea> -->
										</h2>
									</div>
								</div>
								
									<!-- 수정눌렀을때 -->
							<div>
									<form method="post" action="../pouch/pouch_make_ok.hr?pouch_no=${vo.pouch_no }">
										<div class="col-sm-12">
											<input type="hidden" name="pouch_no" value="${vo.pouch_no }">--%>	
 										<h2 class="subject_intro" class="text-center">
												파우치 소개
												<textarea rows="5" cols="10" name="pouch_intro">${vo.pouch_content }</textarea>
											</h2>
										</div>
										<table class="table text-right">

											<tr>
												<td><input type="submit" value="완료"
													class="btn btn-sm btn-primary" /> <input type="button"
													value="취소" onclick="javascript:history.back()"
													class="btn btn-sm btn-primary" /></td>
											</tr>

										</table>
									</form>
						   </div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>