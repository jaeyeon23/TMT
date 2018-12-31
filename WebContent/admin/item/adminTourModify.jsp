<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script>
        $(function() {
            $("#slider").slider({
                value:10,
                min: 0,
                max: 10,
                step: 0.1,
                slide: function( event, ui ) {
                    $( "#amount3" ).val( "$" + ui.value );
                }
            });
            $( "#amount3" ).val( "$" + $( "#slider" ).slider( "value" ) );
        });
    </script>
    
    
	<link rel="stylesheet" href="./calendar/jquery-ui.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="./calendar/jquery-ui.min.js"></script>

<script src="./calendar/datepicker-ko.js"></script>
<script type="text/javascript">
	//<![CDATA[

	/* Korean initialisation for the jQuery calendar extension. */
	/* Written by DaeKwon Kang (ncrash.dk@gmail.com), Edited by Genie and Myeongjin Lee. */
	(function(factory) {
		if (typeof define === "function" && define.amd) {

			// AMD. Register as an anonymous module.
			define([ "../widgets/datepicker" ], factory);
		} else {

			// Browser globals
			factory(jQuery.datepicker);
		}
	}(function(datepicker) {

		datepicker.regional.ko = {
			closeText : "닫기",
			prevText : "이전달",
			nextText : "다음달",
			currentText : "오늘",
			monthNames : [ "1", "2", "3", "4", "5", "6", "7", "8",
					"9", "10", "11", "12" ],
			monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7", "8",
					"9", "10", "11", "12" ],
			dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
			dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
			dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
			weekHeader : "주",
			dateFormat : "yy-MM-dd",
			firstDay : 0,
			isRTL : false,
			showMonthAfterYear : true,
			yearSuffix : "년",
		};
		datepicker.setDefaults(datepicker.regional.ko);

		return datepicker.regional.ko;

	}));

	///
	$(function() {
		$(".date1").datepicker();

		$(".date2").datepicker({
			showOn : "button",
			buttonImage : "images/calendar.gif",
			buttonImageOnly : false,
			buttonText : "Select date"
		});

		$(".date3").datepicker({
			onSelect : function(dateText, inst) {
				console.log(dateText);
				console.log(inst);
			}
		});
	});
	//]]>
		
		
		/* 정렬 */
		function sm() {
			document.frm.submit();
		}
	</script>
	
</head>
<body>
	<s:form name="write" action="AdminTourModify.action" method="post" enctype="multipart/form-data">
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
										<td><input type="text" name="name" value=<s:property value="%{resultClass.name}"/>></td>
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
</s:form>
</body>
</html>
