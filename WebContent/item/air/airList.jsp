<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<style>
		#air_header{
			width: 100%;
			background-color: #3366ff;
			height:115pt;
			color:white;
		}
		
		body{
			font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕", Roboto, Helvetica, Arial, sans-serif;
		    font-size: 14px;
		    color: #343a40;
		    letter-spacing: -0.2px;
		    -webkit-font-smoothing: antialiased;
	    }
	</style>
	
	<link href="./css/common.css" rel="stylesheet" type="text/css">
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
				monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
						"9월", "10월", "11월", "12월" ],
				monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
						"9월", "10월", "11월", "12월" ],
				dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
				dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
				dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
				weekHeader : "주",
				dateFormat : "yy년 m월 d일",
				firstDay : 0,
				isRTL : false,
				showMonthAfterYear : true,
				yearSuffix : "년"
			};
			datepicker.setDefaults(datepicker.regional.ko);
	
			return datepicker.regional.ko;
	
		}));
	
		///
		$(function() {
			$(".date1").datepicker();
	
			$("#date2").datepicker({
				showOn : "button",
				buttonImage : "images/calendar.gif",
				buttonImageOnly : false,
				buttonText : "Select date"
			});
	
			$("#date3").datepicker({
				onSelect : function(dateText, inst) {
					console.log(dateText);
					console.log(inst);
				}
			});
		});
		//]]>
	</script>
</head>
<body>
	<div id="air_header">
		<form method="post">
			<input type="text" name="arv" readonly placeholder="출발지">
			<input type="text" name="dep" readonly placeholder="도착지">
			<input type="text" name="ad" class="date1" size="12" readonly placeholder="출발일"/>
			<input type="text" name="dd" class="date1" size="12" readonly placeholder="도착일"/>
			인원
			<select name="seat">
				<option>1</option>	
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
			</select>
			<input type="submit" value="검색">
		</form>
	</div>
</body>
</html>