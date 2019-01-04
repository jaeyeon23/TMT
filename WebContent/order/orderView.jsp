<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 상세보기</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>
</head>
<body>
<div class="main">
<div class='header-title'><h2><center>예약내역</center></h2></div><br><br>
<div align="right">
<form action="ModifyOrder.action" name="mo" method="post">
<button type="submit" class="btn btn-default">수정</button></div><br>
</form>
<form action="DeleteOrder.action" name="hodel" method="post">
<div>
<div>HOTEL</div>
<s:iterator value="ohlist" status="stat">
<table class="table" width="80%" cellpadding="0" cellspacing="0">
	<input type="hidden" name="id" value="<s:property value="%{session.session_id}"/>"/>

			<tr>
			   <td align="center"><font size="2"><strong>사진</strong></font></td>
			   <th align="center"><font size="2"><strong>번호</strong></font></th>
			   <th align="center"><font size="2"><strong>상품명</strong></font></th>
			   <th align="center"><font size="2"><strong>내용</strong></font></th>
			   <th align="center"><font size="2"><strong>국가</strong></font></th>
			   <th align="center"><font size="2"><strong>지역</strong></font></th>
			   <th align="center"><font size="2"><strong>전화번호</strong></font></th>
			   <th align="center"><font size="2"><strong>체크인</strong></font></th>
			   <th align="center"><font size="2"><strong>체크아웃</strong></font></th>
			   <th align="center"><font size="2"><strong>인원</strong></font></th>
			   <th align="center"><font size="2"><strong>방</strong></font></th>
			   <th align="center"><font size="2"><strong>가격</strong></font></th>
			   <td></td>
			 </tr>
	 
		    <tr>
			   <td align="center"><s:property value="image1" /></td>
			   <td align="center"><s:property value="no" /></td>
			   <td align="center"><s:property value="name" /></td>
			   <td align="center"><s:property value="content" /></td>
			   <td align="center"><s:property value="country" /></td>
			   <td align="center"><s:property value="region" /></td>
			   <td align="center"><s:property value="tel" /></td>
			   <td align="center"><s:property value="checkin" /></td>
			   <td align="center"><s:property value="checkout" /></td>
			   <td align="center"><s:property value="people" /></td>
			   <td align="center"><s:property value="room" /></td>
               <td align="center"><s:property value="price" /></td>	   
               <td align="center"><input type="submit" name="submit" value="예약취소"/>
			 </tr>

</table>
	<table class="table">
			<tr>
				<td height="2" ></td>
			</tr>
		</table>
		</s:iterator>
</div>



<div>
<div>TOUR</div>
<s:iterator value="otlist" status="stat">
<table class="table" width="80%" cellpadding="0" cellspacing="0">
	<input type="hidden" name="id" value="<s:property value="%{session.session_id}"/>"/>

			
			<tr align="left">
			   <td align="center"><font size="2"><strong>사진</strong></font></td>
			   <th align="center"><font size="2"><strong>번호</strong></font></th>
			   <th align="center"><font size="2"><strong>상품명</strong></font></th>
			   <th align="center"><font size="2"><strong>내용</strong></font></th>
			   <th align="center"><font size="2"><strong>국가</strong></font></th>
			   <th align="center"><font size="2"><strong>지역</strong></font></th>
			   <th align="center"><font size="2"><strong>개수</strong></font></th>
			   <th align="center"><font size="2"><strong>가격</strong></font></th>
			   <td></td>
			 </tr>
			 
		    <tr align="left">
			   <td align="center"><s:property value="image1"/></td>
			   <td align="center"><s:property value="no" /></td>
			   <td align="center"><s:property value="name" /></td>
			   <td align="center"><s:property value="content" /></td>
			   <td align="center"><s:property value="country" /></td>
			   <td align="center"><s:property value="region" /></td>
			   <td align="center"><s:property value="amount" /></td>
			   <td align="center"><s:property value="price" /></td>
			   <td align="center"><input type="submit" name="submit" value="예약취소"/>	   
			 </tr>
			  
</table>
	<table class="table">
			<tr>
				<td height="2" ></td>
			</tr>
		</table>
		</s:iterator>
</div>

<div>
<div>AIR</div>
<s:iterator value="oalist" status="stat">
<table class="table" width="80%" cellpadding="0" cellspacing="0">
	<input type="hidden" name="id" value="<s:property value="%{session.session_id}"/>"/>

			
			<tr align="left">
			   <td align="center"><font size="2"><strong>사진</strong></font></td>
			   <th align="center"><font size="2"><strong>번호</strong></font></th>
			   <th align="center"><font size="2"><strong>출발지</strong></font></th>
			   <th align="center"><font size="2"><strong>도착지</strong></font></th>
			   <th align="center"><font size="2"><strong>내용</strong></font></th>
			   <th align="center"><font size="2"><strong>출발일</strong></font></th>
			   <th align="center"><font size="2"><strong>도착일</strong></font></th>
			   <th align="center"><font size="2"><strong>인원</strong></font></th>
			   <th align="center"><font size="2"><strong>좌석등급</strong></font></th>
			   <th align="center"><font size="2"><strong>항공사</strong></font></th> 
			   <th align="center"><font size="2"><strong>가격</strong></font></th> 
			   <td></td>
			 </tr>
			 
		    <tr align="left">
			   <td align="center"><s:property value="image1"/></td>
			   <td align="center"><s:property value="no" /></td>
			   <td align="center"><s:property value="arv" /></td>
			   <td align="center"><s:property value="dep" /></td>
			   <td align="center"><s:property value="content" /></td>
			   <td align="center"><s:property value="ad" /></td>
			   <td align="center"><s:property value="dd" /></td>
			   <td align="center"><s:property value="people" /></td>
			   <td align="center"><s:property value="seat_grade" /></td>
			   <td align="center"><s:property value="air_company" /></td>
			   <td align="center"><s:property value="price" /></td>	   	
			   <td align="center"><input type="submit" name="submit" value="예약취소"/>   
			 </tr>
			  
</table>
	<table class="table">
			<tr>
				<td height="2" ></td>
			</tr>
		</table>
		</s:iterator>
</div>

</form>

</div>	

</body>
</html>