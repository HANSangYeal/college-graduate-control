<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="resource/js/jquery-1.10.2.js"></script>
<style>
ul#leftMenu {
	position: fixed;
	top: 200px;
	left: 0px;
	z-index: 9999;
	list-style: none;
	margin: 0px;
	padding: 0px;
}

ul#leftMenu li {
	width: 100px;
	margin-bottom: 2px;
}

ul#leftMenu li a {
	background-color: #ccc;
	color: #fff;
	text-decoration: none;
	display: block;
	width: 90px;
	padding: 10px 0px 10px 10px;
	-webkit-border-bottom-right-radius: 20px;
	-webkit-border-top-right-radius: 20px;
	margin-left: -1px;
	opacity: 0.6;
}

ul#leftMenu .daegu1 a {
	background: #dd2bf;
}

ul#leftMenu .daegu2 a {
	background: #ff8102;
}

ul#leftMenu .daegu3 a {
	background: #ffcc00;
}

ul#leftMenu .daegu4 a {
	background: #00cc99;
}

ul#leftMenu .daegu5 a {
	background: #3399cc;
}

ul#leftMenu .daegu6 a {
	background: #9900cc;
}

ul#leftMenu .daegu7 a {
	background: #cc99ff;
}

ul#leftMenu .daegu8 a {
	background: #000000;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대구대학교 jquery</title>
</head>
<body>
	<ul id="leftMenu">
		<li class="daegu1"><a href="">학사소개</a></li>
		<li class="daegu2"><a href="">jquery</a></li>
		<li class="daegu3"><a href="">jquery_ui</a></li>
		<li class="daegu4"><a href="">jquery_mobile</a></li>
		<li class="daegu5"><a href="">javaScript</a></li>
		<li class="daegu6"><a href="">대구대학교</a></li>
	</ul>
	<script>
		$(function(){
			$('#leftMenu a').css('marginLeft','-85px');
			$('#leftMenu > li').hover(
				function(){
					$('a',$(this)).stop().animate({'marginLeft':'-1px'},300);
					
				},
				function(){
					$('a',$(this)).stop().animate({'marginLeft':'-85px'},300);
				});
		});
	</script>
</body>
</html>