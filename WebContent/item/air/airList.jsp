<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
>>>>>>> origin/์ฃผ์
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
<<<<<<< HEAD

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
    
    
	<link rel="stylesheet" href="../calendar/jquery-ui.min.css">
=======
	<style>
		#air_header{
			width: 100%;
			background-color: #3366ff;
			height:115pt;
			color:white;
		}
		
		body{
			font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "ธผภบ ฐํต๑", Roboto, Helvetica, Arial, sans-serif;
		    font-size: 14px;
		    color: #343a40;
		    letter-spacing: -0.2px;
		    -webkit-font-smoothing: antialiased;
	    }
	</style>
	
	<link href="./css/common.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="./calendar/jquery-ui.min.css">
>>>>>>> origin/์ฃผ์
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
				closeText : "๋ซ๊ธฐ",
				prevText : "์ด์ ๋ฌ",
				nextText : "๋ค์๋ฌ",
				currentText : "์ค๋",
				monthNames : [ "1์", "2์", "3์", "4์", "5์", "6์", "7์", "8์",
						"9์", "10์", "11์", "12์" ],
				monthNamesShort : [ "1์", "2์", "3์", "4์", "5์", "6์", "7์", "8์",
						"9์", "10์", "11์", "12์" ],
				dayNames : [ "์ผ์์ผ", "์์์ผ", "ํ์์ผ", "์์์ผ", "๋ชฉ์์ผ", "๊ธ์์ผ", "ํ ์์ผ" ],
				dayNamesShort : [ "์ผ", "์", "ํ", "์", "๋ชฉ", "๊ธ", "ํ " ],
				dayNamesMin : [ "์ผ", "์", "ํ", "์", "๋ชฉ", "๊ธ", "ํ " ],
				weekHeader : "์ฃผ",
				dateFormat : "yy๋ m์ d์ผ",
				firstDay : 0,
				isRTL : false,
				showMonthAfterYear : true,
				yearSuffix : "๋"
			};
			datepicker.setDefaults(datepicker.regional.ko);
	
			return datepicker.regional.ko;
	
		}));
	
		///
		$(function() {
			$("#date1").datepicker();

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
		
		
		/* ์ ๋ ฌ */
		function sm() {
			document.frm.submit();
		}
</script>
	</script>
	
	<style>
		#air_header_search{
			background-color: #d3ffce;
			text-align: center;
		}
		
		.air_array{
			float:right;
			margin-right:10%;
		}
		
		.air_list{
			width:100%;
		}
		
		.air_left{
		   	float: left;
		   	width: 20%;
		   	height: 800pt;
		   	border-right: 3px solid #51abf3!important;
		   	background-color: gray;
		   	font-size: 15pt;
		   	margin-left:5%;
		}
		   
		.air_right{
		   	background-color: white;
		   	height: 800pt;
		   	margin-right:5%;
		}
	</style>
</head>
<body>
	<div id="air_header">
<<<<<<< HEAD
		<div id="air_header_search">
			<form method="get">
				<s:if test="arv != null">
					<input type="text" name="arv" value='<s:property value="%{arv}"/>'>
				</s:if>
				<s:else>
					<input type="text" name="arv" placeholder="์ถ๋ฐ์ง">
				</s:else>
				
				<s:if test="dep != null">
					<input type="text" name="dep" value='<s:property value="%{dep}"/>'>
				</s:if>
				<s:else>
					<input type="text" name="dep" placeholder="๋์ฐฉ์ง">
				</s:else>
				
				<s:if test="ad != null">
					<input type="text" name="ad" class="date1" size="12" value='<s:property value="%{ad}"/>'/>
				</s:if>
				<s:else>
					<input type="text" name="ad" class="date1" size="12" placeholder="์ถ๋ฐ์ผ"/>
				<!-- <input type="text" name="dd" class="date1" size="12" readonly placeholder="๋์ฐฉ์ผ"/> -->
				</s:else>
				
				์ธ์
				<select name="seat" class="form-control" style="width:10%; display:inline;" value='<s:property value="%{seat}"/>'>
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
				์ข์ ๋ฑ๊ธ
				<select name="seat_grade" class="form-control" style="width:10%; display:inline;">
					<option value="0">์ผ๋ฐ</option>	
					<option value="1">๋น์ฆ๋์ค</option>
				</select>
				<input type="submit" class="btn btn-info" value="๊ฒ์">
			</form>
		</div>
	</div>
	<br>
	<!-- ์ ๋ ฌ -->
	<div class="air_array">
		<form name="frm">
			<select name="air_array" class="form-control" onchange="sm()">
				<option value="1">๊ฐ๊ฒฉ ๋ฎ์ ์</option>	
				<option value="2">๊ฐ๋ ๋  ์ถ๋ฐ์๊ฐ ๋น ๋ฅธ ์</option>
				<option value="3">๊ฐ๋ ๋  ๋์ฐฉ์๊ฐ ๋น ๋ฅธ ์</option>
				<s:hidden name="arv" value="%{arv}"/>
				<s:hidden name="dep" value="%{dep}"/>
				<s:hidden name="seat" value="%{seat}"/>
				<s:hidden name="ad" value="%{ad}"/>
				<s:hidden name="seat_grade" value="%{seat_grade}"/>	
			</select>
		</form>
		<br><br>
	</div>
	<div class="air_list">
		<div class="air_left">
			<form method="get">
				<strong>์ถ๋ฐ์๊ฐ</strong><br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 00:00~06:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 06:00~12:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 12:00~18:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 18:00~24:00<br>
				<br><br>
				<strong>๋์ฐฉ์๊ฐ</strong><br>			
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 00:00~06:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 06:00~12:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 12:00~18:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์๋ฒฝ 18:00~24:00<br>
				<br><br>
				<strong>ํญ๊ณต์๊ฐ</strong><br>
				<input type="checkbox" checked>&nbsp;&nbsp;๋ํํญ๊ณต<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์์์๋<br>
				<input type="checkbox" checked>&nbsp;&nbsp;์ง์์ด<br>
				<br><br>
				<strong>๊ฐ๊ฒฉ๋</strong><br>
				    <p>
				        <input type="text" id="amount3" readonly style="border:0; color:#f6931f; font-weight:bold;">
				    </p>
				    <div id="slider"></div>
			</form>
		</div>
		<div class="air_right">
			<!-- ๋ฆฌ์คํธ ์ถ๋ ฅ -->
			<table class="table table-hover" style="width:70%">
				<tr>
					<th>
						ํญ๊ณต์ฌ
					</th>
					<th>
						์ถ๋ฐ์๊ฐ
					</th>
					<th>
						๋์ฐฉ์๊ฐ
					</th>
					<th>
						์๊ธ
					</th>
				</tr>
				<s:if test="Airlist == null">
				<tr>
					<td colspan=4>
						ํญ๊ณต๊ถ์ ๊ฒ์ํด ์ฃผ์ธ์
					</td>
				</tr>
				</s:if>
				<s:iterator value="Airlist" status="stat">
				<tr>
					<td>
						<s:property value="air_company"/>
					</td>
					<td>
						<s:property value="ad_time"/>
					</td>
					<td>
						<s:property value="dd_time"/>
					</td>
					<td>
						<s:property value="price"/>
					</td>
				</tr>
				</s:iterator>
			</table>
		</div>
=======
		<form method="post">
			<input type="text" name="arv" readonly placeholder="รโน฿ม๖">
			<input type="text" name="dep" readonly placeholder="ตตย๘ม๖">
			<input type="text" name="ad" class="date1" size="12" readonly placeholder="รโน฿ภฯ"/>
			<input type="text" name="dd" class="date1" size="12" readonly placeholder="ตตย๘ภฯ"/>
			ภฮฟ๘
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
			<input type="submit" value="ฐหป๖">
		</form>
>>>>>>> origin/์ฃผ์
	</div>
</body>
</html>