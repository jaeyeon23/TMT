<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/TMT/item/tour/success_css.css" type="text/css">
<style>
#contents_1 button{
	background-color: #1b5ac2; 
	padding: 8px 20px;
	border: 1px solid #1b5ac2;
	color:white;
	text-align: center;
	border-radius: 5px 5px 5px 5px ;
	width: 110px;
	height: 47px;
}
#contents_1 button:hover{
	background-color: #323ab0; 
}
</style>
</head>
<body>
    <div id="alls">
     <center><b><font size="5" color="#1b5ac2">예약 하기</font></b></center>
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
			<center><h2>Thank you</h2><br>예약이 완료 되었습니다.<br> 예약하신 정보는 <b><font color="#e30413">예약내역</font></b> 에서 확인가능합니다.<br>
				<br><br>
				<button type="button" onclick="location.href='Main.action'"><b>홈으로</b></button>
			</center>
			</div>
			
		</div>
    </div>
</body>
</html>


