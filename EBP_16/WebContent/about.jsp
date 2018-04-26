<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>团队介绍</title>

<link rel="stylesheet" type="text/css" href="cssh/reset.css" />
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Poppins:400,700'>
<link rel="stylesheet" href="cssh/style.css">
<style type="text/css">
.button{
 	margin-top: 30%;
 	margin-left: 30%;
	border-width: 0px;
	border-radius: 90px;
	height: 100px;
	width: 100px;
	background-color: #fff;
	color: #f8d41f;
	font-size: 30px;
	outline: none;
	float:left;
	font-family: 微软雅黑;
}
</style>
</head>
<body>


<div class="slider__warpper">
	  <div class="flex__container flex--pikachu flex--active" data-slide="1">
		<div class="flex__item flex__item--left">
		  <div class="flex__content">
			<p class="text--sub">Ding Zufeng</p>
			<h1 class="text--big">丁祖峰</h1>
			</div>
		  <p class="text__background">丁祖峰<br></p>
		</div>
		<div>
		</div>
		<div class="flex__item flex__item--right"></div>
	  </div>
	  <div class="flex__container flex--piplup animate--start" data-slide="2">
		<div class="flex__item flex__item--left">
		  <div class="flex__content">
			<p class="text--sub">Hui Jiancheng</p>
			<h1 class="text--big">惠建诚</h1>
			</div>
		  <p class="text__background">惠建诚</p>
		</div>
		<div class="flex__item flex__item--right"></div>
	  </div>
	  <div class="flex__container flex--blaziken animate--start" data-slide="3">
		<div class="flex__item flex__item--left">
		  <div class="flex__content">
			<p class="text--sub">Han Dongxu</p>
			<h1 class="text--big">韩东旭</h1>
	  </div>
		  <p class="text__background">韩东旭</p>
		</div>
		<div class="flex__item flex__item--right"></div>
	  </div>
	  <div class="flex__container flex--dialga animate--start" data-slide="4">
		<div class="flex__item flex__item--left">
		  <div class="flex__content">
			<p class="text--sub">Gao Weibo</p>
			<h1 class="text--big">高维博</h1>
		  </div>
		  <p class="text__background">高维博</p>
		</div>
		<div class="flex__item flex__item--right"></div>
	  </div>
	</div>

	<div class="slider__navi">
	  <a href="#" class="slide-nav active" data-slide="1">丁祖峰</a>
	  <a href="#" class="slide-nav" data-slide="2">惠建诚</a>
	  <a href="#" class="slide-nav" data-slide="3">韩东旭</a>
	  <a href="#" class="slide-nav" data-slide="4">高维博</a>
	</div>

<script src="jsh/jquery-2.1.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$('.slide-nav').on('click', function(e) {
	  e.preventDefault();
	  var current = $('.flex--active').data('slide'),
		next = $(this).data('slide');

	  $('.slide-nav').removeClass('active');
	  $(this).addClass('active');

	  if (current === next) {
		return false;
	  } else {
		$('.slider__warpper').find('.flex__container[data-slide=' + next + ']').addClass('flex--preStart');
		$('.flex--active').addClass('animate--end');
		setTimeout(function() {
		  $('.flex--preStart').removeClass('animate--start flex--preStart').addClass('flex--active');
		  $('.animate--end').addClass('animate--start').removeClass('animate--end flex--active');
		}, 800);
	  }
	});
</script>

</body>
</html>