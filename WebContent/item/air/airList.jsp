<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
>>>>>>> origin/주영
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
			font-family: -apple-system, BlinkMacSystemFont, "Malgun Gothic", "���� ����", Roboto, Helvetica, Arial, sans-serif;
		    font-size: 14px;
		    color: #343a40;
		    letter-spacing: -0.2px;
		    -webkit-font-smoothing: antialiased;
	    }
	</style>
	
	<link href="./css/common.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="./calendar/jquery-ui.min.css">
>>>>>>> origin/주영
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
		
		
		/* 정렬 */
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
					<input type="text" name="arv" placeholder="출발지">
				</s:else>
				
				<s:if test="dep != null">
					<input type="text" name="dep" value='<s:property value="%{dep}"/>'>
				</s:if>
				<s:else>
					<input type="text" name="dep" placeholder="도착지">
				</s:else>
				
				<s:if test="ad != null">
					<input type="text" name="ad" class="date1" size="12" value='<s:property value="%{ad}"/>'/>
				</s:if>
				<s:else>
					<input type="text" name="ad" class="date1" size="12" placeholder="출발일"/>
				<!-- <input type="text" name="dd" class="date1" size="12" readonly placeholder="도착일"/> -->
				</s:else>
				
				인원
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
				좌석 등급
				<select name="seat_grade" class="form-control" style="width:10%; display:inline;">
					<option value="0">일반</option>	
					<option value="1">비즈니스</option>
				</select>
				<input type="submit" class="btn btn-info" value="검색">
			</form>
		</div>
	</div>
	<br>
	<!-- 정렬 -->
	<div class="air_array">
		<form name="frm">
			<select name="air_array" class="form-control" onchange="sm()">
				<option value="1">가격 낮은 순</option>	
				<option value="2">가는 날 출발시간 빠른 순</option>
				<option value="3">가는 날 도착시간 빠른 순</option>
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
				<strong>출발시간</strong><br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 00:00~06:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 06:00~12:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 12:00~18:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 18:00~24:00<br>
				<br><br>
				<strong>도착시간</strong><br>			
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 00:00~06:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 06:00~12:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 12:00~18:00<br>
				<input type="checkbox" checked>&nbsp;&nbsp;새벽 18:00~24:00<br>
				<br><br>
				<strong>항공시간</strong><br>
				<input type="checkbox" checked>&nbsp;&nbsp;대한항공<br>
				<input type="checkbox" checked>&nbsp;&nbsp;아시아나<br>
				<input type="checkbox" checked>&nbsp;&nbsp;진에어<br>
				<br><br>
				<strong>가격대</strong><br>
				    <p>
				        <input type="text" id="amount3" readonly style="border:0; color:#f6931f; font-weight:bold;">
				    </p>
				    <div id="slider"></div>
			</form>
		</div>
		<div class="air_right">
			<!-- 리스트 출력 -->
			<table class="table table-hover" style="width:70%">
				<tr>
					<th>
						항공사
					</th>
					<th>
						출발시간
					</th>
					<th>
						도착시간
					</th>
					<th>
						요금
					</th>
				</tr>
				<s:if test="Airlist == null">
				<tr>
					<td colspan=4>
						항공권을 검색해 주세요
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
>>>>>>> origin/주영
	</div>
</body>
</html>