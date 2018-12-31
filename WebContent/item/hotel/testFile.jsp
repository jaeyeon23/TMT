<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<style>
   #tuor_side{margin:20px auto; width:200px; font-size:15px;}
   ul.side {width:200px; text-indent:10px;}
   ul.side, ul.side ul{list-style:none; margin:0; padding:0;}
   li.sideBar{margin-bottom:5px;}
   div.sideMenu{height:35px; background:skyblue; cursor:pointer;}
   ul.sub li{height: 35px; margin-bottom: 3px; line-height: 3; background: gray; cursor: pointer;}
   ul.sub li a{text-decoration: none; width:100%; color:white;}
   ul.sub li:hover{background: black;}
</style>
<script>
$(function() 
{
	$(".sub").hide();
	$("div.sideMenu").click(function() 
	{
		if($(this).next().css("display")=="none")
			$(".sub").slideUp("fast");
		 $(this).next().slideToggle("fast"); 
	})
})
</script> 
</head>
<body>
  <div id=tuor_side>
   <ul class = "side">
       <li class = "sideBar">
          <div class = "sideMenu">안녕</div>
          <ul class = "sub">
           <li><a href="#">1번</a></li>
           <li><a href="#">2번</a></li>
           <li><a href="#">3번</a></li>
          </ul>
       </li>
       
       <li class = "sideBar">
          <div class = "sideMenu">하세</div>
          <ul class = "sub">
           <li><a href="#">1번</a></li>
           <li><a href="#">2번</a></li>
           <li><a href="#">3번</a></li>
          </ul>
       </li>
       
       <li class = "sideBar">
          <div class = "sideMenu">요</div>
          <ul class = "sub">
           <li><a href="#">1번</a></li>
           <li><a href="#">2번</a></li>
           <li><a href="#">3번</a></li>
          </ul>
       </li>
   </ul>
   </div>
</body>
</html>