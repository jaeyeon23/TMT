<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<style>
		input[type=text]{
			border: 2px solid #aaa;
			border-radius: 4px;
			margin: 8px	0;
			outline: none;
			padding: 10px;
			box-sizing: border-box;
			transitio;
			width:50%;
			font-size:20pt;
		}
		
		input[type=text]:focus{
			border-color: dodgerBlue;
			box-shadow: 0 0 8px 0 dodgerBlue;
		}
		
		.search_background{
			size: 100%;	
			background-image:url(https://d2ur7st6jjikze.cloudfront.net/cms/246_original_1525399121.jpg?1525399121);
			width: 100%;
        	height: 608px;
		}
		
	 	.searchbox_text {
	 		margin:150pt auto;
		    color: #fff;
		    font-size: 40px;
		    font-weight: 700;
		    letter-spacing: -.5px;
		    line-height: 1.25;
		    position: absolute;
		    text-align: center;
		    text-shadow: 0 3px 8px rgba(73,80,86,0.2), 0 1px 1px rgba(0,0,0,0.5);
		    top: 240px;
		    width: 100%;
		    z-index: 10;
		}
		
		.searchbox{
			color: black;
		}
		
		input::-webkit-input-placeholder {
		    color: #D8D8D8;
		    font-style: italic;
		}
		input:-ms-input-placeholder {
		    color: #D8D8D8;
		    font-style: italic;
		}
	</style>
	
</head>

<body>
    <div id=wrap>
        <center>
        	<form action="MainSearch.action">
	        	<div class='search_background'>
	        		<div class="searchbox_text">
	        			전 세계 17,500개가 넘는<br>투어&amp;티켓을 만나보세요.<br>
	        			<input type="text" name="searchbox" class="searchbox" placeholder="지역을 검색하세요">
	        		</div>
	        	</div>
        	</form>
        	
        	<!-- Test -->
        	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
			  	<ol class="carousel-indicators">
			    	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    	<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    	<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			  	</ol>
			
			  	<!-- Wrapper for slides -->
			  	<div class="carousel-inner" role="listbox">
			    	<div class="item active">
			      		<img src="https://d2ur7st6jjikze.cloudfront.net/cms/244_original_1525399192.jpg?1525399192" alt="...">
			      		<div class="carousel-caption">
			        		...
			      		</div>
			    	</div>
			    	<div class="item">
			      		<img src="https://d2ur7st6jjikze.cloudfront.net/cms/246_original_1525399121.jpg?1525399121" alt="...">
			      		<div class="carousel-caption">
			        		...
			      		</div>
			    	</div>
			    	<div class="item">
			      		<img src="https://d2ur7st6jjikze.cloudfront.net/cms/255_original_1525399124.jpg?1525399124" alt="...">
			      		<div class="carousel-caption">
			        		...
			      		</div>
			    	</div>
			    	...
			  	</div>
			
			  	<!-- Controls -->
			  	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    	<span class="sr-only">Previous</span>
			  	</a>
			  	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    	<span class="sr-only">Next</span>
			  	</a>
			</div>
        	
        	
        	
        	
        	<div>
        		투어&티켓
        	</div>
        	
        	<div>
        		항공권
        	</div>
        	
        	<div>
        		숙소
        	</div>
        </center>
    </div>
</body>
</html>