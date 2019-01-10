<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
function showVal(newVal){
	  document.getElementById("valBox").innerHTML=newVal;
	}
</script>
</head>
<body>
	<span id="valBox"></span>
	<input type="range" min="5" max="10" step="1"
		onchange="showVal(this.value)">
</body>
</html>