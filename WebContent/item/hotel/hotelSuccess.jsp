<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/TMT/item/hotel/Hseccess_css.css" type="text/css">
</head>
<body>
<div id="alls">
     <center><b><font size="5" color="#1b5ac2">호텔 예약</font></b></center>
        <div id="tops">
			<div id="tops_1">
				 <ul>
					<li class="c1">1</li>
					<li><hr></li>
					<li class="c2">2</li>
				</ul> 
			</div>			
		</div>
		<div id="tops2"> 
		    <div id="tops2_1">
		      예약정보확인
		    </div>
		    <div id="tops2_2">
		      예약완료
			</div>
		</div>
        <div id="contents">
            <div id="contents_1">
			<center><h2>Thank you</h2><br>예약이 완료 되었습니다.<br> 
			예약하신 정보는 <a href="OrderList.action"><b><font color="#e30413" size="3" style="text-decoration:underline;" >[예약내역]</font></b></a> 
			에서 확인가능합니다.<br>
				<br><br>
				<button type="button" onclick="location.href='Main.action'"><b>홈으로</b></button>
			</center>
			</div>
			
		</div>
    </div>
</body>
</html>