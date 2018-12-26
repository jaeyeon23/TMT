<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>

	<link href="./css/airList.css" rel="stylesheet" type="text/css">
	<script src="./script/calendar.js" type="text/javascript"></script>
	<script src="./script/slider_bar.js" type="text/javascript"></script>
	<script type="text/javascript">
		
		/* 정렬 */
		function sort() {
			document.frm.submit();
		}
		
		function modalclose_arv(val){
			$('#arv').val(val);
		}
		
		
		function modalclose_dep(val){
			$('#dep').val(val);
		}
		
		
		function check(){

			var forms = document.searchForm;
			
			if(forms.arv.value.length == 0){
				alert("출발지를 입력하세요");
				forms.arv.focus();
				return false;
			}
			if(forms.dep.value.length == 0){
				alert("도착지를 입력하세요");
				forms.arv.focus();
				return false;
			}
			if(forms.ad_str.value.length == 0){
				alert("날짜를 입력하세요");
				forms.arv.focus();
				return false;
			}
		}
		
	</script>
	
</head>
<body>
	<div id="air_header">
		<div id="air_header_search">
			<form method="get" name="searchForm" onsubmit="return check()">
				<s:if test="arv != null">
					<input type="text" id="arv" name="arv" readonly value="<s:property value='%{arv}'/>" data-toggle="modal" data-target="#modalTour_arv">
				</s:if>
				<s:else>
					<input type="text" id="arv" name="arv" readonly placeholder="출발지를 선택하세요" data-toggle="modal" data-target="#modalTour_arv">
				</s:else>
				<div class="modal fade" id="modalTour_arv" role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
				        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        		<h4 class="modal-title" id="myModalLabel">
				        			출발지
			        			</h4>
				      		</div>
				      		<div class="modal-body">
				        		<table class="table table-striped" style="width:100%;">
				        			<tr>
				        				<th colspan="5">
				        					주요도시 바로 선택
				        				</th>
				        			</tr>	
				        			<tr>
				        				<th>
				        					국내
				        				</th>
				        				<td>
				        					<button type="button" class="btn btn-link" value="인천" onclick="modalclose_arv(value)" data-dismiss="modal">인천</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="김포" onclick="modalclose_arv(value)" data-dismiss="modal">김포</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="제주" onclick="modalclose_arv(value)" data-dismiss="modal">제주</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="부산" onclick="modalclose_arv(value)" data-dismiss="modal">부산</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th>
				        					일본
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="도쿄" onclick="modalclose_arv(value)" data-dismiss="modal">도쿄</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="나고야" onclick="modalclose_arv(value)" data-dismiss="modal">나고야</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="후쿠오카" onclick="modalclose_arv(value)" data-dismiss="modal">후쿠오카</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="오키나와" onclick="modalclose_arv(value)" data-dismiss="modal">오키나와</button>
				        				</td>
				        			</tr>
				        		</table>
				      		</div>
				      		<div class="modal-footer">
				        		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				      		</div>
			    		</div>
					</div>
				</div>
				
				<s:if test="dep != null">
					<input type="text" id="dep" name="dep" readonly value="<s:property value='%{dep}'/>" data-toggle="modal" data-target="#modalTour_dep">
				</s:if>
				<s:else>
					<input type="text" id="dep" name="dep" readonly placeholder="도착지를 입력하세요" data-toggle="modal" data-target="#modalTour_dep">
				</s:else>
				<div class="modal fade" id="modalTour_dep" role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
				        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        		<h4 class="modal-title" id="myModalLabel">
				        			도착지
			        			</h4>
				      		</div>
				      		<div class="modal-body">
				        		<table class="table table-striped" style="width:100%;">
				        			<tr>
				        				<th colspan="5">
				        					주요도시 바로 선택
				        				</th>
				        			</tr>	
				        			<tr>
				        				<th>
				        					국내
				        				</th>
				        				<td>
				        					<button type="button" class="btn btn-link" value="인천" onclick="modalclose_dep(value)" data-dismiss="modal">인천</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="김포" onclick="modalclose_dep(value)" data-dismiss="modal">김포</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="제주" onclick="modalclose_dep(value)" data-dismiss="modal">제주</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="부산" onclick="modalclose_dep(value)" data-dismiss="modal">부산</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th>
				        					일본
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="도쿄" onclick="modalclose_dep(value)" data-dismiss="modal">도쿄</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="나고야" onclick="modalclose_dep(value)" data-dismiss="modal">나고야</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="후쿠오카" onclick="modalclose_dep(value)" data-dismiss="modal">후쿠오카</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="오키나와" onclick="modalclose_dep(value)" data-dismiss="modal">오키나와</button>
				        				</td>
				        			</tr>
				        		</table>
				      		</div>
				      		<div class="modal-footer">
				        		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				      		</div>
			    		</div>
					</div>
				</div>
				<s:if test="ad_str != null">
					<input type="text" name="ad_str" class="date1" size="12" readonly value='<s:property value="%{ad_str}"/>'/>
				</s:if>
				<s:else>
					<input type="text" name="ad_str" class="date1" size="12" readonly placeholder="출발일"/>
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
			<select name="air_array" class="form-control" onchange="sort()">
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
				<input type="checkbox" name="ckDD_1" value="06">&nbsp;&nbsp;새벽 00:00~06:00<br>
				<input type="checkbox" name="ckDD_2" value="12">&nbsp;&nbsp;오전 06:00~12:00<br>
				<input type="checkbox" name="ckDD_3" value="18">&nbsp;&nbsp;오후 12:00~18:00<br>
				<input type="checkbox" name="ckDD_4" value="24">&nbsp;&nbsp;야간 18:00~24:00<br>
				<br><br>
				<strong>항공사</strong><br>
				<input type="checkbox" name="air_company_korea" value="대한항공">&nbsp;&nbsp;대한항공<br>
				<input type="checkbox" name="air_company_asia" value="아시아나">&nbsp;&nbsp;아시아나<br>
				<input type="checkbox" name="air_company_jin" value="진에어">&nbsp;&nbsp;진에어<br>
				<br><br>
				    
			    <!-- test -->
			    <s:if test="arv != null">
				    <s:hidden name="arv" value="%{arv}"/>
					<s:hidden name="dep" value="%{dep}"/>
					<s:hidden name="seat" value="%{seat}"/>
					<s:hidden name="ad_str" value="%{ad_str}"/>
					<s:hidden name="seat_grade" value="%{seat_grade}"/>	
				    <input type="submit" class="btn btn-info" value="세부 검색">
			    </s:if>
			    <s:else>
			    	<input type="submit" class="btn btn-info" value="세부 검색" disabled>
			    </s:else>
			</form>
		</div>
		<div class="air_right">
			<!-- 리스트 출력 -->
			<table class="table table-hover" style="width:70%">
				<tr>
					<th>
						상품 번호
					</th>
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
						<s:property value="no"/>
					</td>	
					<td>
						<s:property value="air_company"/>
					</td>
					<td>
						<s:date name="ad" format="HH:mm" />
					</td>
					<td>
						<s:date name="dd" format="HH:mm" />
					</td>
					<td>
						<s:property value="price"/>
					</td>
					<td>
						<button type="button" class="btn btn-primary btn" data-toggle="modal" data-target="#myModal${stat.index }">
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
						        		<table id="list" class="table table-hover" style="width:100%;">
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
						        				<th>
						        					항공사
						        				</th>
						        				<th>
						        					서비스 제공
						        				</th>
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
						        				</td>
						        				<td>
						        					<s:property value="content"/>
						        				</td>
						        			</tr>
						        		</table>
						      		</div>
						      		<div class="modal-footer">
							      		<form action="AirCheck.action">
							        		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
							        		<button type="submit" class="btn btn-primary">
							        			예약
							        			<s:hidden name="no" value="%{no}"/>
							        			<s:hidden name="seat" value="%{#parameters.seat}"/>
							        		</button>
							        	</form>
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