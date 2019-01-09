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
<script>
	function check(){
		
		var f=document.write;
		if (f.arv.value == "") {
			alert("출발지를 입력해주십시오");
			f.arv.focus();
			return false;
		}
		if (f.dep.value == "") {
			alert("도착지 입력해주십시오");
			f.dep.focus();
			return false;
		}
		if (f.price.value == "") {
			alert("상품가격을 입력해주십시오");
			f.price.focus();
			return false;
		}
		if (f.ad.value == "") {
			alert("출발날짜를 입력해주십시오");
			f.ad.focus();
			return false;
		}
		if(f.dd.value == ""){
			alert("도착날짜를 입력해주십시오");
			f.dd.focus();
			return false;
		}
		if (f.ad_time.value == "") {
			alert("출발시간을 입력해주십시오");
			f.ad_time.focus();
			return false;
		}
		if(f.dd_time.value == ""){
			alert("도착시간을 입력해주십시오");
			f.dd_time.focus();
			return false;
		}
		if(f.air_company.value == ""){
			alert("항공사 입력해주십시오");
			f.air_company.focus();
			return false;
		}
		if(f.seat.value==""){
			alert("좌석수를 입력해주십시오");
			f.seat.focus();
			return false;
		}
		if(f.content.value==""){
			alert("내용을 입력해주십시오");
			f.content.focus();
			return false;
		}
		if(f.upload.value==""){
			alert("이미지를 등록해주십시오");
			f.upload.focus();
			return false;
		}
		
	}
</script>
</head>
<body>
	<s:form name="write" action="AdminAirWrite.action" method="post" enctype="multipart/form-data">
			
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
												<font size="2">출발지</font>
											</p>
										</td>
										<td><input type="text" name="arv"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">도착지</font>
											</p>
										</td>
										<td><input type="text" name="dep"></td>
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
												<font size="2">출발일</font>
											</p>
										</td>
										<td>					
											<input type="text" readonly name="ad" id="inDay">
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
									            <input id="timepicker2" name="ad_time" type="text" class="input-small">
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
											<input type="text" readonly name="dd" id="outDay"> 
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
									            <input id="timepicker3" name="dd_time" type="text" class="input-small">
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
										<td><input type="text" name="air_company"></td>
									</tr>
									
									<tr>
										<td>
											<p align="center">
												<font size="2">좌석</font>
											</p>
										</td>
										<td><input type="number" name="seat"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">등급</font>
											</p>
										</td>
										<td><input type="number" name="seat_grade"></td>
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
										<td><s:file name="upload"/></td>
									</tr>
																	
								</table>
							</td>
						</tr>
						<tr>
							<td height="75">
								<p align="center">
									<input type="submit" onclick="return check()" value="등록">&nbsp; 
									<input type="reset" value="다시쓰기">
								</p>
							</td>
						</tr>

</table></td></tr></table></s:form>
</body>
</html>
