<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/TMT/item/hotel/Hcheckcss.css" type="text/css">
<style>
#coutents_left_3{
    margin-left: 5%;
    margin-top: 5%;
    margin-right: 5%; 
    text-align: right;
}
</style>
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
			<div id="coutents_left">
			   <img width="100%" height="230" src="/TMT/upload/hotel/<s:property value="%{image1}"/>">
			   <div id="coutents_left_1">
			   <h4>[호텔] <s:property value="%{name}"/></h4>
			   <s:property value="%{country}"/>-<s:property value="%{region}"/>			   
			   </div>
			   <hr>
			   <div id="coutents_left_1">
			       <font color="#e30413" size="2">선택한 날짜와 상품을 다시한번 확인해주세요!<br>
			       잘못된 입력시 책임지지 않습니다.</font>		   
			   </div>
			   <hr>
			   <div id="coutents_left_1">
			        <b><font color="#747474" size="3">체크인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <s:property value="inDay"/><br>
			        체크아웃&nbsp; &nbsp;<s:property value="outDay"/><br><br>
			        총 숙박기간 &nbsp; &nbsp;<s:property value="%{day_s}"/>박
			        </font></b>			       	   
			   </div>
			   <hr>
			   <div id="coutents_left_1">
			       <b><font color="#747474" size="3">객실 선택 :
			       &nbsp; &nbsp;&nbsp;<s:property value="%{roomnum}"/>개</font></b> / <s:property value="%{number}"/>명
			   </div>
			    <hr>
			   <div id="coutents_left_3">
			       <s:property value="%{day_s}"/> X <s:property value="%{roomnum}"/> X ₩<s:property value="%{price}"/>   		   
			   </div>
			   <div id="coutents_left_2">
			    <div id="coutents_left_2_1">
			    <b> 총 예상 결제 금액</b>
			    </div>
			    <div id="coutents_left_2_2">
			     <b><s:property value="%{roomnum*price*day_s}"/>원</font></b>	 
			     </div>
			     <br>
			   </div>
			</div>
			<div id="coutents_right">
			   <div id="coutents_left_1">
			   <h4><img width="28" height="25" src="/TMT/images/user_image.png">예약자 정보</h4>
			   </div>
			   <hr>
			   <div id="coutents_left_1">
			        <font color="#e30413"> 본인 이외의 구매는 불가하며 회원정보로 예약 됩니다.<br>현장에서 확인 후 수령하실 수 있습니다.</font><br>	   
			   </div>
			   <hr>
			   <div id="coutents_left_1">
				  <s:iterator value="Tourlist" status="stat">
						예약자명 : <s:property value="%{name}" /><br>
						연락처 : <s:property value="%{tel}" />
				  </s:iterator>
			   </div>
			   <hr>
			   <div id="coutents_left_1">
			   <h4><img width="28" height="25" src="/TMT/images/user_image2.png"> 약관</h4>
			   <textarea rows="" cols="" disabled >
 예약 약관

제1장 목적 및 정의

제1조 (목적)
이 약관(이하 “예약약관”)은 주식회사 TMT(이하 “당사”)이 운영하는 “TMT” 사이트 또는 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “TMT 플랫폼”)을 통하여 여행자와 가이드 사이에서 체결되는 여행계약(이하 “여행계약”)의 중개와 관련하여 특히 여행자의 권리와 의무 등 법률관계를 명확히 함을 목적으로 합니다.

제2조 (용어의 정의)
이 약관에서 사용되는 용어의 정의는 다음과 같습니다.
(1) “가이드서비스”는 여행자가 원하는 날짜와 조건에 따라 당사가 중개한 가이드로부터 제공받는 제7조의 서비스를 말합니다.
(2) “가이드”는 당사가 여행자에게 중개한 자로서 여행지에서 여행자에게 가이드서비스를 제공하는 자를 말합니다.
(3) “투어”는 여행자가 여행계약에 따라 가이드로부터 가이드서비스를 제공받으며 향유하는 여행을 말합니다.
(4) “여행확인증”은 가이드와 여행자가 구체적인 가이드서비스의 내용 및 제반 비용 등에 관한 사항을 합의하여 확정한 문서를 말합니다.
(5) “수수료”는 여행자가 가이드와의 여행계약 체결을 중개/대리한 대가로 당사에 지급하는 보수를 말합니다.
(6) “가이드요금”은 여행자가 가이드서비스 제공의 대가로 가이드에게 지급하는 보수를 말합니다.
(7) “여행요금”은 여행자가 본 약관에 따른 여행계약과 관련하여 당사에 지급하는 수수료 및 가이드에게 지급하는 가이드요금을 합한 금원을 말합니다.
(8) “미팅포인트”는 투어를 위하여 가이드와 여행자가 만나기로 약속한 장소를 말합니다.
(9) “지각시간”은 가이드와 여행자가 투어를 위하여 미팅포인트에서 만나기로 정한 시각으로부터 지각한 당사자가 미팅포인트에 실제 도착하기까지 경과한 시간을 말합니다.

제2장 기본 사항

제3조 (여행계약의 당사자 및 당사의 지위)
여행자와 여행계약을 체결하고 가이드서비스를 제공하는 법적 주체는 가이드이며, 당사는 마이리얼트립 플랫폼을 통하여 여행자가 원하는 날짜와 조건에 맞추어 가이드와 여행계약을 체결하고 가이드서비스를 제공받는 것을 중개하는 업무를 수행합니다.
</textarea>
<input id = "a1" type="checkbox" />예약 약관을 읽었으며, 내용에 동의 합니다.
<br><br>
</div>
            
			</div> <!--  오른쪽 박스 끝나는곳 -->
			<div id="min_s">
			<center>
			<button type="button" onclick="location.href='javascript:history.go(-1)'" ><b>취소하기</b></button>
			<form action="HotelSuccess.action">
			<s:hidden name="no" value="%{no}" />  <!-- 상품번호  -->
			<s:hidden name="name" value="%{name}" />  <!-- 상품명 -->
			<s:hidden name="price" value="%{price*day_s}" />  <!-- 가격 -->
			<s:hidden name="content" value="%{content}" />  <!-- 국가 -->
			<s:hidden name="country" value="%{country}" />  <!-- 국가 -->
			<s:hidden name="region" value="%{region}" />  <!-- 지역 -->
			<s:hidden name="image1" value="%{image1}" />
			<s:hidden name="tel" value="%{tel}" />
			<s:hidden name="checkin" value="%{inDay}" />  <!-- 체크인 -->
			<s:hidden name="checkout" value="%{outDay}" />  <!-- 체크아웃 -->
			<s:hidden name="maxnum" value="%{number}" />
			<s:hidden name="room" value="%{roomnum}" />
			<s:hidden name="id" value="%{session.session_id}" />  <!-- 아이디 -->
			<b><input type="submit" value= "예약하기" ></b>
		  	</form>
		  	</center>
		  	</div>
		</div>
		
    </div>

</body>
</html>