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
    <script language="JavaScript" src="/TMT/item/hotel/hotelscript.js"></script>
	<!-- 달력끝 -->
	<link rel="stylesheet" href="/TMT/item/hotel/hotelcss.css" type="text/css">
	
</head>
<body>
	<s:form name="write" action="AdminHotelModify.action" method="post" enctype="multipart/form-data">
		<s:hidden name="no" value="%{no}"/>
		<s:hidden name="currentPage" value="%{currentPage}"/>
			
	<table width="960" cellspacing="0" cellpadding="0" border="0"
		color="gray" align="center">
		<tr>
			<td colspan="2">
				<table border="0" width="80%">
						<tr>
							<td>
								<p align="center">
									<span style="font-size: 26pt;">상 품 수 정</span>
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
											<input type="text" size="19" readonly name="checkin" id="inDay" placeholder="체크인">
										</td> 		
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">체크아웃</font>
											</p>
										</td>
										<td>	
											<input type="text" size="19" readonly name="checkout" id="outDay" placeholder="체크아웃"> 
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
										
										<td><s:file label="제품이미지1" name="uploads"><s:property value="content1" /></s:file></td>
									</tr>
									<tr>
										<td><s:file label="제품이미지2" name="uploads"><s:property value="content2" /></s:file></td>
									</tr>
									
								</table>
							</td>
						</tr>
						<tr>
							<td height="75">
								<p align="center">
									<input type="submit" value="수정">&nbsp; <input
										type="reset" value="다시쓰기">
								</p>
							</td>
						</tr>

</table></td></tr></table></s:form>
</body>
</html>
