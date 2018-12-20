<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
#hotelBox{
   width: 1200px;
   height: 1000px;
   background-color: red;
}
.hotel_search_Box{
    width: 1000px;
    height:400px;
    background-color: blue;
	margin: 20px auto;
}
#search_h1 {
	float: left;
	width: 480px;
	height: 350px;
	background-color: pink;
	margin: 20px 10px;
}
#search_h2 {
	float: right;
	width: 480px;
	height: 350px;
	background-color: pink;
	margin: 20px 10px;
}
#hotel_list_Box{
width: 1000px;
height:550px;
margin: 10px auto;
background-color: green;
}
</style>
</head>
<body>
	<div id="hotelBox">
		<div class="hotel_search_Box">
			<div id="search_h1">첫번재 검색방법(상품명or숙소명,날짜,인원,가격)
			<br/><center><input type="text" size="60" value=" 숙소 또는 상품을 입력해주세요."/></center>
			
			</div>
			<div id="search_h2">두번째 검색방법(국가,지역)</div>
		</div>
		<div id="hotel_list_Box">호텔 리스트가 보여지는곳</div>
	</div>
	<br/><br/><br/>
-------------------------------------쿼리 test----------------------------------
	<div>
		<div>
			<table width="600" border="0" cellspacing="0" cellpadding="2">
				<tr align="center" bgcolor="#F3F3F3">
					<td width="50"><strong>번호</strong></td>
					<td width="350"><strong>상품명</strong></td>
					<td width="70"><strong>가격</strong></td>
					<td width="50"><strong>국가</strong></td>
					<td width="50"><strong>지역</strong></td>
					<td width="50"><strong>인원수</strong></td>
					<td width="50"><strong>평균 별점</strong></td>
				</tr>
				<s:iterator value="Hotellist" status="stat">
					<tr bgcolor="#FFFFFF" align="center">
						<td><s:property value="no" /></td>
						<td><s:property value="name" /></td>
						<td><s:property value="price" /></td>
						<td><s:property value="country" /></td>
						<td><s:property value="region" /></td>
						<td><s:property value="reg_date" /></td>
						<td><s:property value="maxnum" /></td>
						<td><s:property value="grade" /></td>
					</tr>
				</s:iterator>
				<tr align="center">
					<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
				</tr>

			</table>
		</div>
	</div>
</body>
</html>