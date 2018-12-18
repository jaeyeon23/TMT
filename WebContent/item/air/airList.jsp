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
			font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "���� ���", Roboto, Helvetica, Arial, sans-serif;
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
				closeText : "�ݱ�",
				prevText : "������",
				nextText : "������",
				currentText : "����",
				monthNames : [ "1��", "2��", "3��", "4��", "5��", "6��", "7��", "8��",
						"9��", "10��", "11��", "12��" ],
				monthNamesShort : [ "1��", "2��", "3��", "4��", "5��", "6��", "7��", "8��",
						"9��", "10��", "11��", "12��" ],
				dayNames : [ "�Ͽ���", "������", "ȭ����", "������", "�����", "�ݿ���", "�����" ],
				dayNamesShort : [ "��", "��", "ȭ", "��", "��", "��", "��" ],
				dayNamesMin : [ "��", "��", "ȭ", "��", "��", "��", "��" ],
				weekHeader : "��",
				dateFormat : "yy�� m�� d��",
				firstDay : 0,
				isRTL : false,
				showMonthAfterYear : true,
				yearSuffix : "��"
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
			<input type="text" name="arv" readonly placeholder="�����">
			<input type="text" name="dep" readonly placeholder="������">
			<input type="text" name="ad" class="date1" size="12" readonly placeholder="�����"/>
			<input type="text" name="dd" class="date1" size="12" readonly placeholder="������"/>
			�ο�
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
			<input type="submit" value="�˻�">
		</form>
	</div>
</body>
</html>