<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- datepicker 한국어로 -->
	<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
    <script language="JavaScript" src="/TMT/item/hotel/hotelscript2.js"></script>
	<!-- 달력끝 -->
	<link rel="stylesheet" href="/TMT/item/hotel/hotelcss.css" type="text/css">
<script>
	function check(){
		
		var f=document.write;
		if (f.name.value == "") {
			alert("상품이름을 입력해주십시오");
			f.name.focus();
			return false;
		}
		if (f.price.value == "") {
			alert("상품가격을 입력해주십시오");
			f.price.focus();
			return false;
		}
		if (f.country.value == "") {
			alert("나라를 입력해주십시오");
			f.country.focus();
			return false;
		}
		if(f.region.value==""){
			alert("지역을 입력해주십시오");
			f.region.focus();
			return false;
		}
		if(f.tel.value==""){
			alert("전화번호를 입력해주십시오");
			f.tel.focus();
			return false;
		}
		if(f.checkin.value==""){
			alert("체크인 날짜를 입력해주십시오");
			f.checkin.focus();
			return false;
		}
		if(f.checkout.value==""){
			alert("체크아웃 날짜를 입력해주십시오");
			f.checkout.focus();
			return false;
		}
		if(f.maxnum.value==""){
			alert("최대 인원 수 를 입력해주십시오");
			f.maxnum.focus();
			return false;
		}
		if(f.room.value==""){
			alert("방개수를 입력해주십시오");
			f.room.focus();
			return false;
		}
		if(f.content.value==""){
			alert("내용을 입력해주십시오");
			f.content.focus();
			return false;
		}
		
	}
</script>
</head>
<body>
	<s:form name="write" action="AdminHotelWrite.action" method="post" enctype="multipart/form-data">
			
	<table width="960" cellspacing="0" cellpadding="0" border="0"
		color="gray" align="center">
		<tr>
			<td colspan="2">
				<table border="0" width="80%">
						<tr>
							<td>
								<p align="center">
									<span style="font-size: 26pt;">상 품 등 록</span>
								</p>
							</td>
						</tr>
						<tr>
							<td height="331">
								<table border="1" align="center" width="558">
									<tr>
										<td>
											<p align="center">
												<font size="2">상품이름</font>
											</p>
										</td>
										<td><input type="text" name="name"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">가격</font>
											</p>
										</td>
										<td><input type="number" name="price"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">나라</font>
											</p>
										</td>
										<td><input type="text" name="country"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">지역</font>
											</p>
										</td>
										<td><input type="text" name="region"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">전화번호</font>
											</p>
										</td>
										<td><input type="text" name="tel"></td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">체크인</font>
											</p>
										</td>
										<td>					
											<input type="text" readonly name="checkin" id="inDay" placeholder="체크인">
										</td> 		
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">체크아웃</font>
											</p>
										</td>
										<td>	
											<input type="text" readonly name="checkout" id="outDay" placeholder="체크아웃"> 
										</td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">인원</font>
											</p>
										</td>
										<td><input type="number" name="maxnum"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">방개수</font>
											</p>
										</td>
										<td><input type="number" name="room"></td>
									</tr>
									<tr>
										<td width="196">
											<p align="center">
												<font size="2">제품정보</font>
											</p>
										</td>
										<td width="346"><textarea name="content" cols="50"
												rows="15"></textarea></td>
									</tr>
									<tr>
										<td><s:file label="제품 메인이미지1" name="uploads"><s:property value="main" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									
								</table>
							</td>
						</tr>
						<tr>
							<td height="75">
								<p align="center">
									<input type="submit" onclick="return check()" value="등록">&nbsp; <input
										type="reset" value="다시쓰기">
								</p>
							</td>
						</tr>

</table></td></tr></table></s:form>
</body>
</html>
