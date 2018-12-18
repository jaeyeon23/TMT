<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>

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
    
    
	<link href="../css/air.css" rel="stylesheet" type="text/css">
	<link href="../css/common.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="../calendar/jquery-ui.min.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="../calendar/jquery-ui.min.js"></script>
	<script src="../calendar/datepicker-ko.js"></script>
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
		<div id="air_header_search">
			<form method="post">
				<input type="text" name="arv" readonly placeholder="�����">
				<input type="text" name="dep" readonly placeholder="������">
				<input type="text" name="ad" class="date1" size="12" readonly placeholder="�����"/>
				<input type="text" name="dd" class="date1" size="12" readonly placeholder="������"/>
				�ο�
				<select name="seat">
					<option value="1">1</option>	
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>
				
				�¼� ���
				<select name="seat_grade">
					<option value="0">�Ϲ�</option>	
					<option value="1">����Ͻ�</option>
				</select>
				<input type="submit" value="�˻�">
			</form>
		</div>
	</div>
	<br>
	<div class="air_list">
		<div class="air_left">
			<form method="post">
				<strong>��߽ð�</strong><br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 00:00~06:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 06:00~12:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 12:00~18:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 18:00~24:00<br>
				<br><br>
				<strong>�����ð�</strong><br>			
				<input type="checkbox" checked>&nbsp;&nbsp;���� 00:00~06:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 06:00~12:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 12:00~18:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;���� 18:00~24:00<br>
				<br><br>
				<strong>�װ��ð�</strong><br>
				<input type="checkbox" checked>&nbsp;&nbsp;�����װ�<br>
				<input type="checkbox" checked>&nbsp;&nbsp;�ƽþƳ�<br>
				<input type="checkbox" checked>&nbsp;&nbsp;������<br>
				<br><br>
				<strong>���ݴ�</strong><br>
				    <p>
				        <input type="text" id="amount3" readonly style="border:0; color:#f6931f; font-weight:bold;">
				    </p>
				    <div id="slider"></div>
			</form>
		</div>
		<div class="air_right">
			<!-- ����Ʈ ��� -->
		</div>
	</div>
</body>
</html>