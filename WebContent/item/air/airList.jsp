<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>

	<script src="./script/calendar.js" type="text/javascript"></script>
	<script src="./script/slider_bar.js" type="text/javascript"></script>

	<script type="text/javascript">
		
		/* 정렬 */
		function sm() {
			document.frm.submit();
		}
		
		/* 검색조건 */
		$("#gg").change(function(){
			var frm = document.Test;
			
			if(!($('.checkbox').is(':checked'))){
				$("input[name=chAD_1]").val('Y');
			}
			
			frm.submit();
		})
		
		function choice() {

			var frm = document.Test;
	
			if($('.checkbox').is(':checked')){
	
				$("input[name=ckAD_1]",frm).val();
			}
			else{
				$("input[name=ckAD_1]",frm).val('N');
			}
	
			frm.submit();
		} 
		
		
	/* 	$("#CHECK_YN").change(
			function() {
			// 체크박스 값에 따라 히든 값 변경
            	if ( $("#CHECK_YN").is(":checked") ){
				    $("YN").val('Y');
			    } else {
                	$("YN").val('N');
			    }
			}
		); */
		
		/* $(document).ready(function(){
			$('#myModal').click(function(){
				
			});			
		}) */
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
		   	width: 15%;
		   	height: 550pt;
		   	background-color: #ccccff;
		   	font-size: 15pt;
		   	margin-left:5%;
		   	margin-right:5%;
		   	padding-left:13pt;
		   	padding-top:5pt;
		}
		   
		.air_right{
			padding-left:5%;
		   	background-color: white;
		   	height: 800pt;
		   	margin-right:5%;
		}
	</style>
</head>
<body>
	<div id="air_header">
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
				
				<s:if test="ad_str != null">
					<input type="text" name="ad_str" class="date1" size="12" readonly value='<s:property value="%{ad_str}"/>'/>
				</s:if>
				<s:else>
					<input type="text" name="ad_str" class="date1" size="12" readonly placeholder="출발일"/>
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
				<input type="submit" class="btn btn-primary" value="검색">
			</form>
		</div>
	</div>
	<br>
	<!-- 정렬 -->
	<div class="air_array">
		<form name="frm">
			<select name="air_array" class="form-control" onchange="sm()">
				<s:if test="air_array == null">
					<option value="1">가격 낮은 순</option>	
					<option value="2">가는 날 출발시간 빠른 순</option>
					<option value="3">가는 날 도착시간 빠른 순</option>
				</s:if>
				<s:if test="air_array == 1">
					<option value="1" selected>가격 낮은 순</option>	
					<option value="2">가는 날 출발시간 빠른 순</option>
					<option value="3">가는 날 도착시간 빠른 순</option>
				</s:if>
				<s:if test="air_array == 2">
					<option value="1">가격 낮은 순</option>	
					<option value="2" selected>가는 날 출발시간 빠른 순</option>
					<option value="3">가는 날 도착시간 빠른 순</option>
				</s:if>
				<s:if test="air_array == 3">
					<option value="1">가격 낮은 순</option>	
					<option value="2">가는 날 출발시간 빠른 순</option>
					<option value="3" selected>가는 날 도착시간 빠른 순</option>
				</s:if>
				<s:hidden name="arv" value="%{arv}"/>
				<s:hidden name="dep" value="%{dep}"/>
				<s:hidden name="seat" value="%{seat}"/>
				<s:hidden name="ad_str" value="%{ad_str}"/>
				<s:hidden name="seat_grade" value="%{seat_grade}"/>	
			</select>
		</form>
		<br><br>
	</div>
	<div class="air_list">
		<div class="air_left">
			<form method="get">
				<strong>출발시간</strong><br>
				<input type="checkbox" name="ckAD_1" value="06">&nbsp;&nbsp;새벽 00:00~06:00<br>
				<input type="checkbox" name="ckAD_2" value="12">&nbsp;&nbsp;오전 06:00~12:00<br>
				<input type="checkbox" name="ckAD_3" value="18">&nbsp;&nbsp;오후 12:00~18:00<br>
				<input type="checkbox" name="ckAD_4" value="24">&nbsp;&nbsp;야간 18:00~24:00<br>
				<br><br>
				<strong>도착시간</strong><br>			
				<input type="checkbox" name="ckDD_1" value="060000">&nbsp;&nbsp;새벽 00:00~06:00<br>
				<input type="checkbox" name="ckDD_2" value="120000">&nbsp;&nbsp;오전 06:00~12:00<br>
				<input type="checkbox" name="ckDD_3" value="180000">&nbsp;&nbsp;오후 12:00~18:00<br>
				<input type="checkbox" name="ckDD_4" value="240000">&nbsp;&nbsp;야간 18:00~24:00<br>
				<br><br>
				<strong>항공사</strong><br>
				<input type="checkbox" name="air_company_korea" value="korea">&nbsp;&nbsp;대한항공<br>
				<input type="checkbox" name="air_company_asia" value="asia">&nbsp;&nbsp;아시아나<br>
				<input type="checkbox" name="air_company_jin" value="jin">&nbsp;&nbsp;진에어<br>
				<br><br>
				<strong>가격대</strong><br>
				    <p>
				        <input type="text" id="amount3" readonly style="width:100pt;border:0; color:#f6931f; font-weight:bold;">
				    </p>
				    <div id="slider" style="width:150pt;"></div>
				    
			    <!-- test -->
			    
			    <s:hidden name="arv" value="%{arv}"/>
				<s:hidden name="dep" value="%{dep}"/>
				<s:hidden name="seat" value="%{seat}"/>
				<s:hidden name="ad_str" value="%{ad_str}"/>
				<s:hidden name="seat_grade" value="%{seat_grade}"/>	
			    <input type="submit" value="test">
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
					<th>
						예약
					</th>
				</tr>
				<s:if test="Airlist == null">
				<tr>
					<td colspan=5>
						<center>항공권을 검색해 주세요</center>
					</td>
				</tr>
				</s:if>
				
				<s:iterator value="Airlist" status="stat">
				<tr>
					<td>
						<s:property value="air_company"/>
					</td>
					<td>
						<%-- <s:property value="ad_time"/> --%>
						<s:date name="ad" format="HH:mm" />
					</td>
					<td>
						<%-- <s:property value="dd_time"/> --%>
						<s:date name="dd" format="HH:mm" />
					</td>
					<td>
						<s:property value="price"/>
					</td>
					<td>
						<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal${stat.index }">
  							상세보기
						</button>
						<div class="modal fade" id="myModal${stat.index }" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
						        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        			<h4 class="modal-title" id="myModalLabel">
						        				<s:property value="arv"/>&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;<s:property value="dep"/>
						        			</h4>
						      		</div>
						      		<div class="modal-body">
						        		<table class="table table-hover" style="width:100%;">
						        			<tr>
						        				<th>
						        					인원
						        				</th>
						        				<th>
						        					남은 좌석 수
						        				</th>
						        				<th>
						        					가격
						        				</th>
						        				<!-- <th>
						        					운행 시간
						        				</th> -->
						        			</tr>
						        			<tr>
						        				<td>
													<s:property value="#parameters.seat" />명
												</td>
						        				<td>
						        					<s:property value="seat"/>좌석
						        				</td>
						        				<td>
						        					${price * param.seat}원
						        				</td>
						        				<td>
						        					<s:property value="air_company"/>
						        					<%-- <s:date name="dd_time - ad_time" format="HH:mm" /> --%>
						        				</td>
						        			</tr>
						        		</table>
						      		</div>
						      		<div class="modal-footer">
						        		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						        		<button type="button" class="btn btn-primary">예약</button>
						      		</div>
					    		</div>
							</div>
						</div>
					</td>
				</tr>
				</s:iterator>
				
			</table>
		</div>
	</div>
</body>
</html>