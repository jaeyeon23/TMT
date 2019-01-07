<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" href="css/bootstrap.min.css" />
	<link type="text/css" href="css/bootstrap-timepicker.min.css" />
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>


	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- datepicker 한국어로 -->
	<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
	<script language="JavaScript" src="/TMT/item/hotel/hotelscript2.js"></script>
	<!-- 달력끝 -->
	<link rel="stylesheet" href="/TMT/item/hotel/hotelcss.css" type="text/css">
	
</head>
<body>
	<s:form name="write" action="AdminAirModify.action" method="post" enctype="multipart/form-data">
			<input type="hidden" name="no" value="<s:property value="no"/>">
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
												<font size="2">arv</font>
											</p>
										</td>
										<td><input value="<s:property value="%{resultClass.arv}"/>" type="text" name="arv"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">dep</font>
											</p>
										</td>
										<td><input value="<s:property value="%{resultClass.dep}"/>" type="text" name="dep"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">가격</font>
											</p>
										</td>
										<td><input value="<s:property value="%{resultClass.price}"/>" type="number" name="price"></td>
									</tr>
								
									<tr>
										<td>
											<p align="center">
												<font size="2">출발일</font>
											</p>
										</td>
										<td>					
											<input value="<s:property value="%{resultClass.ad}"/>" type="text" readonly name="ad" id="inDay">
										</td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">출발시간</font>
											</p>
										</td>
										<td>					
											<div class="input-group bootstrap-timepicker timepicker">
									            <input value="<s:property value="%{resultClass.ad}"/>" id="timepicker2" name="ad" type="text" class="input-small">
									        </div>
									        <script>
									            $('#timepicker2').timepicker({
									                minuteStep: 1,
									                template: 'modal',
									                appendWidgetTo: 'body',
									                showSeconds: false,
									                showMeridian: false,
									                defaultTime: false
									            });
									        </script>
										</td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">도착일</font>
											</p>
										</td>
										<td>	
											<input value="<s:property value="%{resultClass.dd}"/>" type="text" readonly name="dd" id="outDay"> 
										</td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">도착시간</font>
											</p>
										</td>
										<td>	
											<div class="input-group bootstrap-timepicker timepicker">
									            <input value="<s:property value="%{resultClass.dd}"/>" id="timepicker3" name="dd" type="text"  class="input-small">
									        </div>
									        <script>
									            $('#timepicker3').timepicker({
									                minuteStep: 1,
									                template: 'modal',
									                appendWidgetTo: 'body',
									                showSeconds: false,
									                showMeridian: false,
									                defaultTime: false
									            });
									        </script>
										</td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">항공사</font>
											</p>
										</td>
										<td><input value="<s:property value="%{resultClass.air_company}"/>" type="text" name="air_company"></td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">좌석</font>
											</p>
										</td>
										<td><input value="<s:property value="%{resultClass.seat}"/>" type="number" name="seat"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">등급</font>
											</p>
										</td>
										<td><input value="<s:property value="%{resultClass.seat_grade}"/>" type="number" name="seat_grade"></td>
									</tr>
									
									<tr>
										<td width="196">
											<p align="center">
												<font size="2">제품정보</font>
											</p>
										</td>
										<td width="346"><textarea value="<s:property value="%{resultClass.content}"/>" name="content" cols="50"
												rows="15"></textarea></td>
									</tr>
									<tr>
										<td><s:file label="제품 메인이미지1" name="upload"><s:property value="image1" /></s:file></td>
									</tr>
																	
								</table>
							</td>
						</tr>
						<tr>
							<td height="75">
								<p align="center">
									<input type="submit" value="등록">&nbsp; <input
										type="reset" value="다시쓰기">
								</p>
							</td>
						</tr>

</table></td></tr></table></s:form>
</body>
</html>
