<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="resource/js/jquery-1.10.2.js"></script>
<style>
#ALL {
	width: 700px;
	margin: 30px auto;
	background: #fff;
	padding: 20px;
	position: fixed;
}

.topMenu {
	height: 45px;
	background: orange;
}

.topMenu ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.topMenu ul li {
	float: left;
	overflow: hidden;
	text-align: center;
	line-height: 45px;
}

.topMenu ul li a {
	position: relative;
	display: block;
	width: 110px;
	height: 45px;
	color: #fff;
	font-family: Arial;
	font-size: 11px;
	font-weight: bold;
	letter-spacing: 1px;
	text-transform: uppercase;
	text-decoration: none;
	cursor: pointer;
}

.topMenu ul li a span {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 110px;
}

.topMenu ul li a span.over {
	top: -45px;
	background: yellow;
	color: green;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대구대학교</title>
</head>
<body>
	<div id="ALL">
		<h1>
			<img src="resource/img/header_logo.gif">
		</h1>
		<div class="topMenu">
			<ul>
				<li><a href="#">학사소개</a></li>
				<li><a href="#">jquery</a></li>
				<li><a href="#">jquery_ui</a></li>
				<li><a href="#">jquery_mobile</a></li>
				<li><a href="#">javaScript</a></li>
				<li><a href="#">대구대학교</a></li>
			</ul>
		</div>
	</div>
	<script>
		$(function(){
			$(".topMenu li a").wrapInner('<span class="out"></span>');
			$(".topMenu li a").each(function(){
				$('<span class="over">' + $(this).text() + '</span>').appendTo(this);
			});
			$(".topMenu li a").hover(function(){
				$(".out",this).stop().animate({'top':'45px'},200);
				$(".over",this).stop().animate({'top':'0px'},200);
			},function(){
				$(".out",this).stop().animate({'top':'0px'},200);
				$(".over",this).stop().animate({'top':'-45px'},200);
			});
		});
	</script>
</body>
</html>