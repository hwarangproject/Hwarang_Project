<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>HWARANG PROJECT</title>

<style type="text/css">
/* Lazy Load Styles */
.card-image {
	display: block;
	min-height: 20rem; /* layout hack */
	background: #fff center center no-repeat;
	background-size: cover;
	filter: blur(3px); /* blur the lowres image */
}

.card-image>img {
	display: block;
	width: 100%;
	opacity: 0; /* visually hide the img element */
}

.card-image.is-loaded {
	filter: none; /* remove the blur on fullres image */
	transition: filter 1s;
}

/* Layout Styles */
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	font-size: 16px;
	font-family: sans-serif;
}

.card-list {
	display: block;
	margin: 1rem auto;
	padding: 0;
	font-size: 0;
	text-align: center;
	list-style: none;
}

.card {
	display: inline-block;
	width: 90%;
	max-width: 20rem;
	margin: 1rem;
	font-size: 1rem;
	text-decoration: none;
	overflow: hidden;
	box-shadow: 0 0 3rem -1rem rgba(0, 0, 0, 0.5);
	transition: transform 0.1s ease-in-out, box-shadow 0.1s;
}

.card:hover {
	transform: translateY(-0.5rem) scale(1.0125);
	box-shadow: 0 0.5em 3rem -1rem rgba(0, 0, 0, 0.5);
}

.card-description {
	display: block;
	padding: 1em 0.5em;
	color: #515151;
	text-decoration: none;
}

.card-description>h2 {
	margin: 0 0 0.5em;
}

.card-description>p {
	margin: 0;
}

/* html {
	background-color: #9fd4e2;
} */

a {
	text-decoration: none;
}

.arrows-div {
	width: 1000px;
	margin: 0 auto;
	padding-top: 70px;
}

.button {
	position: relative;
	margin: 0;
	padding-left: 14px;
	padding-right: 14px;
	padding-top: 5px;
	padding-bottom: 5px;
	background: #FFB9B9;
	color: #ffffff;
	font-size: 20px;
	border-radius: 5px;
}

.button::after {
	content: '';
	position: absolute;
	top: 2.5px;
	width: 0;
	height: 0;
}

.button:hover {
	color: #FFB9B9;
}
/* Arrow Buttons */
/* ------------- */
.next::after, .prev::after {
	border-style: solid;
}
/* Next Button */
/* ----------- */
.next {
	margin-right: 50px;
}

.next::after {
	right: -22px;
	height: 5px;
	top: 2px;
	border-color: transparent transparent transparent #FFB9B9;
	border-width: 12px;
}

.next:hover::after {
	color: #9fd4e2;
}
/* Prev Button */
/* ----------- */
.prev {
	margin-left: 80px;
}

.prev::after {
	left: -22px;
	height: 5px;
	top: 2px;
	border-color: transparent #FFB9B9 transparent transparent;
	border-width: 12px;
}

.prev:hover::after {
	color: #FFB9B9;
}

.page-numbers {
	color: #75797d;
	background-color: #FFB9B9;
	text-decoration: none;
	padding: 10px;
	width: 20px;
	height: 20px;
	font-family: "tahoma";
	font-size: 16px;
	padding-right: 15px;
	padding-left: 15px;
	padding-top: 5px;
	padding-bottom: 5px;
	border-radius: 5px;
}

.page-numbers:hover {
	color: #262f3d;
	background-color: #fff;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
	border-radius: 50px;
}

.current {
	background-color: #999;
	color: #ffb9b9;
	font-family: "tahoma";
	text-decoration: none;
	font-size: 20px;
}

.back-td {
	width: 250px;
	text-align: left;
}

.prev-td {
	width: 250px;
	text-align: right;
}

.paging-td {
	width: 500px;
	text-align: center;
}

</style>

</head>
<body>
	<!--  카드  -->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<ul class="card-list">

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Psychopomp" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Psychopomp</h2>
							<p>Japanese Breakfast</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="let's go" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>let's go</h2>
							<p>In Love With A Ghost</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url(images/blog/blog-three.jpg);"
						data-image-full="images/blog/blog-three.jpg"> <img
							src="images/blog/blog-three.jpg" alt="The Beautiful Game" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>The Beautiful Game</h2>
							<p>Vulfpeck</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Jane Doe" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Jane Doe</h2>
							<p>Converge</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Jane Doe" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Jane Doe</h2>
							<p>Converge</p>
					</a></li>

					<li class="card"><a class="card-image" href="" target="_blank"
						style="background-image: url();" data-image-full=""> <img
							src="" alt="Jane Doe" />
					</a> <a class="card-description" href="" target="_blank">
							<h2>Jane Doe</h2>
							<p>Converge</p>
					</a></li>

				</ul>
			</div>
		</div>
	</div>

	<!--  페이지 -->
	<table class="arrows-div">
		<tr>
			<td class="back-td"><a href="#" class="button prev">Back</a></td>
			<td class="paging-td"><a class="page-numbers current">1</a> <a
				class="page-numbers" href="#">2</a> <a class="page-numbers" href="#">3</a>
				<a class="page-numbers" href="#">4</a></td>
			<td class="prev-td"><a href="#" class="button next">Next</a></td>
		</tr>
	</table>
	<br>
	
</body>
</html>
	