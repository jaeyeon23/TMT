<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- <script src="//code.jquery.com/jquery-3.3.1.min.js"></script> -->
	<link href="./css/bootstrap.css" rel="stylesheet">
	<link href="./css/bootstrap-theme.css" rel="stylesheet">
	<script src="js/bootstrap.js" type="text/javascript"></script>
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	
	<script>
		/* var rangeSlider = function(){
		  var slider = $('.range-slider'),
		      range = $('.range-slider__range'),
		      value = $('.range-slider__value');
		    
		  slider.each(function(){

		    value.each(function(){
		      var value = $(this).prev().attr('value');
		      $(this).html(value);
		    });

		    range.on('input', function(){
		      $(this).next(value).html(this.value);
		    });
		  });
		};

		rangeSlider(); */
		function change_BRadius(){
			var range = document.getElementById('range').value;
			document.getElementById('box').value = range;
		}
	</script>
</head>
<body>
<div class="range-slider">
  <input class="range-slider__range" id="range" type="range" value="100" min="0" max="500" onchange="change_BRadius()">
  <input type="text" id="box">
  <span class="range-slider__value"></span>
</div>

<div class="range-slider">
  <input class="range-slider__range" type="range" value="250" min="0" max="500" step="50">
  <span class="range-slider__value"></span>
</div>

<div class="range-slider">
  <input class="range-slider__range" type="range" value="400" min="0" max="500">
  <span class="range-slider__value"></span>
</div> 
</body>
</html>