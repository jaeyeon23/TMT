<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<!-- 슬라이더 -->
	<link href="./css/common.css" rel="stylesheet" type="text/css">
    <link href="./css/basic_slider.css" rel="stylesheet" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   	<script src="./js/basic_slider_jquery.js"></script>
   	<!-- 슬라이더 -->
	<style>
		input[type=text]{
			width: 40%;
			font-size: 20pt;
		}
		
		.search_background{
			size: 100%;	
			background-image:url(https://d2ur7st6jjikze.cloudfront.net/cms/244_original_1525399192.jpg?1525399192);
			width: 100%;
        	height: 608px;
		}
		
		.searchbox{
			
		}
	</style>
</head>

<body>
    <div id=wrap>
        <center>
        	<div class='search_background'>
        		<div class="searchbox">
        			<input type="text" placeholder="Search">
        		</div>
        	</div>
        </center>
        
         <div id="slider">
             <!--   <a href="#" class="control_next">&gt;</a>
               <a href="#" class="control_prev">&lt;</a> -->
               <ul>
                   <li>
                       <a href="#" target="_blank">
                           <img src="images/1.JPG">
                       </a>
                   </li>
                   <li>
                       <a href="#" target="_blank">
                           <img src="images/2.JPG">
                       </a>
                   </li>
                   <li>
                       <a href="#" target="_blank">
                           <img src="images/3.JPG">
                       </a>
                   </li>
               </ul>
           </div>
    </div>
</body>
</html>