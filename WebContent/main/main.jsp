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
			background-image:url(https://d2ur7st6jjikze.cloudfront.net/cms/246_original_1525399121.jpg?1525399121);
			background-repeat:no-repeat;
			background-position:center;
			width: 100%;
        	height: none;
        	padding-top:100px;
		}
		
	 	.searchbox_text {
	 		margin:100px -200px;
		    color: #fff;
		    font-size: 40px;
		    font-weight: 700;
		    letter-spacing: -.5px;
		    line-height: 1.25;
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
	
	
	
	<style>
	#searchTour_list{
		width:100%;
		height:500px;
	}
	#contentT{
		background-color: white;
	 	margin: 0 12px;
	}
	#contents img{
		border-radius: 15px 15px 0 0;
		padding: 1px 1px 1px 1px;
		width:220px; 
		height:180px;
	}
	#contents{
		float: left;
		margin: 20px 10px;
		border:1px solid #BBBBBB;
		border-radius: 15px;
		height:300px;
		align-content: center;
	}
	#contents:hover{
		border:1px solid #1b5ac2;
	}
	#contents dt{
		margin: 0 25px;
	}
	
	</style>
	        	
    <link rel="stylesheet" href="/TMT/css/main/main.css"/>
	<!-- 슬라이더 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</head>

<body>
    <div id=wrap>
        <center>
        	<form action="MainSearch.action">
	        	<div class="search_background">
	        		<div class="searchbox_text">
	        			전 세계 17,500개가 넘는<br>투어&amp;티켓을 만나보세요.<br>
	        			<input type="text" name="searchbox" class="searchbox" placeholder="지역을 검색하세요">
	        		</div>
	        	</div>
        	</form>
        	
        	
        	<div style="margin:100pt 110pt;">
	        	<h4 align="left" style="margin-left:80pt;"><strong>지금 인기있는 여행지</strong></h4>
	        	<br>
	        	
	        	<!-- test -->
	        	<div class="tabbable"> <!-- 왼쪽과 오른쪽 탭에만 필요 -->
					<ul class="nav nav-tabs">
				    	<li class="active"><a href="#tab1" data-toggle="tab">제주도</a></li>
				    	<li><a href="#tab2" data-toggle="tab">상하이</a></li>
				    	<li><a href="#tab3" data-toggle="tab">워싱턴</a></li>
				  	</ul>
				  	<div class="tab-content">
				    	<div class="tab-pane active" id="tab1">
				      		<s:iterator value="Tourlist_Jeju" status="stat">
				        		<a href="TourView.action?no=<s:property value="%{no}" />">
									<div id="contents">
									    <div id= imageT>
										<s:if test="image1 != null">
											<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
										</s:if> 
										<s:else>
											<img src="/TMT/images/noimage.jpg">
										</s:else>
										</div>
										<div id= contentT>
										<h4>
											[<s:property value="region" />]<s:property value="name" /></h4>
											<font color="orange" size = "5"><b><s:property value="price" />원</b></font> / 1인<br>
											<s:if test="grade == 0">
											<font color=#BDBDBD>★★★★★</font>
									    	</s:if> 
									    	<s:elseif test ="grade == 1">
									    		<font color="red">★</font><font color="#BDBDBD">★★★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 2">
									    		<font color="red">★★</font><font color="#BDBDBD">★★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 3">
									    		<font color="red">★★★</font><font color="#BDBDBD">★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 4">
									    		<font color="red">★★★★</font><font color="#BDBDBD">★★★★★</font>
									    	</s:elseif>					
									    	<s:elseif test ="grade == 5">
									    		<font color="red">★★★★★</font>
									    	</s:elseif>			
										</div>
									</div>
								</a>
			        		</s:iterator>
				    	</div>
				    	<div class="tab-pane" id="tab2">
				      		<s:iterator value="Tourlist_Sanghai" status="stat">
				        		<a href="TourView.action?no=<s:property value="%{no}" />">
									<div id="contents">
									    <div id= imageT>
										<s:if test="image1 != null">
											<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
										</s:if> 
										<s:else>
											<img src="/TMT/images/noimage.jpg">
										</s:else>
										</div>
										<div id= contentT>
										<h4>
											[<s:property value="region" />]<s:property value="name" /></h4>
											<font color="orange" size = "5"><b><s:property value="price" />원</b></font> / 1인<br>
											<s:if test="grade == 0">
											<font color=#BDBDBD>★★★★★</font>
									    	</s:if> 
									    	<s:elseif test ="grade == 1">
									    		<font color="red">★</font><font color="#BDBDBD">★★★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 2">
									    		<font color="red">★★</font><font color="#BDBDBD">★★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 3">
									    		<font color="red">★★★</font><font color="#BDBDBD">★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 4">
									    		<font color="red">★★★★</font><font color="#BDBDBD">★★★★★</font>
									    	</s:elseif>					
									    	<s:elseif test ="grade == 5">
									    		<font color="red">★★★★★</font>
									    	</s:elseif>			
										</div>
									</div>
								</a>
			        		</s:iterator>
				    	</div>
				    	<div class="tab-pane" id="tab3">
				      		<s:iterator value="Tourlist_Washington" status="stat">
				        		<a href="TourView.action?no=<s:property value="%{no}" />">
									<div id="contents">
									    <div id= imageT>
										<s:if test="image1 != null">
											<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
										</s:if> 
										<s:else>
											<img src="/TMT/images/noimage.jpg">
										</s:else>
										</div>
										<div id= contentT>
										<h4>
											[<s:property value="region" />]<s:property value="name" /></h4>
											<font color="orange" size = "5"><b><s:property value="price" />원</b></font> / 1인<br>
											<s:if test="grade == 0">
											<font color=#BDBDBD>★★★★★</font>
									    	</s:if> 
									    	<s:elseif test ="grade == 1">
									    		<font color="red">★</font><font color="#BDBDBD">★★★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 2">
									    		<font color="red">★★</font><font color="#BDBDBD">★★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 3">
									    		<font color="red">★★★</font><font color="#BDBDBD">★★</font>
									    	</s:elseif>	
									    	<s:elseif test ="grade == 4">
									    		<font color="red">★★★★</font><font color="#BDBDBD">★★★★★</font>
									    	</s:elseif>					
									    	<s:elseif test ="grade == 5">
									    		<font color="red">★★★★★</font>
									    	</s:elseif>			
										</div>
									</div>
								</a>
			        		</s:iterator>
				    	</div>
				  	</div>
				</div>
        		
        		
        	</div>
     <%--    	<!-- Test -->
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
        	</div> --%>
        	
        </center>
    </div>
</body>
</html>