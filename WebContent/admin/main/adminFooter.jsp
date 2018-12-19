<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <style>
    	#footer {
    		text-align:center;
            width: auto;
            clear: both;
            height: 200px;
            background-color: gray;
            color: white;
        }
        
        .iconLink {
            text-decoration: none;
            color: white;
            transition: 1.0s ease;
            font-size: 30pt;
        }

        .iconLink:hover {
            color: blue;
        }
    </style>
</head>
<body>
	<div id="footer">
		<div>
			Park Jae Yeon<br> KH ACADEMY<br>
		</div>

		<div>
			<br> COPYRIGHT¨Ï 2018 KH ACADEMY. ALL RIGHTS RESERVED.
		</div>

		<div>
			<span id="social" style="color: blue">Social Media</span> <br>
			<div id="icon">
				<a href="https://twitter.com/" class="iconLink" target="_blank">
					<i class="fab fa-twitter"></i>
				</a> 
				<a href="https://www.instagram.com/" class="iconLink"
					target="_blank"> <i class="fab fa-instagram"></i>
				</a> 
				<a href="https://www.facebook.com/" class="iconLink" target="_blank"> 
					<i class="fab fa-facebook-square"></i>
				</a> 
				<a href="https://www.youtube.com/" class="iconLink" target="_blank">
					<i class="fab fa-youtube"></i>
				</a> 
				<a href="https://www.google.co.kr/webhp?hl=ko&ictx=2&sa=X&ved=0ahUKEwjWmN3C6sjbAhWMWbwKHXN4B7AQPQgD"
					class="iconLink" target="_blank"> 
					<i class="fab fa-google"></i>
				</a>
			</div>
		</div>
	</div>
</body>
</html>