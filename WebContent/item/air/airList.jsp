<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>

	<link href="./css/airList.css" rel="stylesheet" type="text/css">

	<script type="text/javascript">
		/* 가격 범위 
		function price_change(){
			var price_range = document.getElementById("price_range").value;
			document.getElementById("price_text").innerHTML = "￦" + price_range;
		} */
		
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
				forms.dep.focus();
				return false;
			}
			if(forms.ad_str.value.length == 0){
				alert("날짜를 입력하세요");
				forms.ad_str.focus();
				return false;
			}
		}
		
	</script>
	
</head>
<body>
	<div id="air_header">
		<div id="air_header_search">
			<form method="get" name="searchForm" onsubmit="return check()"><br><br><br>
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
				        			<tr>
				        				<th>
				        					중국
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="북경" onclick="modalclose_arv(value)" data-dismiss="modal">북경</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="상해" onclick="modalclose_arv(value)" data-dismiss="modal">상해</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="대련" onclick="modalclose_arv(value)" data-dismiss="modal">대련</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="위해" onclick="modalclose_arv(value)" data-dismiss="modal">위해</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th>
				        					아시아
				        				</th>	
				        				<td>
											<button type="button" class="btn btn-link" value="홍콩" onclick="modalclose_arv(value)" data-dismiss="modal">홍콩</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="대만" onclick="modalclose_arv(value)" data-dismiss="modal">대만</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="다낭" onclick="modalclose_arv(value)" data-dismiss="modal">다낭</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="방콕" onclick="modalclose_arv(value)" data-dismiss="modal">방콕</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th rowspan="2">
				        					미주
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="로스앤젤레스" onclick="modalclose_arv(value)" data-dismiss="modal">로스앤젤레스</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="라스베가스" onclick="modalclose_arv(value)" data-dismiss="modal">라스베가스</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="뉴욕" onclick="modalclose_arv(value)" data-dismiss="modal">뉴욕</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="샌프란시스코" onclick="modalclose_arv(value)" data-dismiss="modal">샌프란시스코</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<td>
											<button type="button" class="btn btn-link" value="하와이" onclick="modalclose_arv(value)" data-dismiss="modal">하와이</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="밴쿠버" onclick="modalclose_arv(value)" data-dismiss="modal">밴쿠버</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="토론토" onclick="modalclose_arv(value)" data-dismiss="modal">토론토</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="몬트리올" onclick="modalclose_arv(value)" data-dismiss="modal">몬트리올</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th rowspan="2">
				        					유럽
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="런던" onclick="modalclose_arv(value)" data-dismiss="modal">런던</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="파리" onclick="modalclose_arv(value)" data-dismiss="modal">파리</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="로마" onclick="modalclose_arv(value)" data-dismiss="modal">로마</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="마드리드" onclick="modalclose_arv(value)" data-dismiss="modal">마드리드</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<td>
											<button type="button" class="btn btn-link" value="프랑크푸르트" onclick="modalclose_arv(value)" data-dismiss="modal">프랑크푸르트</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="암스테르담" onclick="modalclose_arv(value)" data-dismiss="modal">암스테르담</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="이스탄불" onclick="modalclose_arv(value)" data-dismiss="modal">이스탄불</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="모스크바" onclick="modalclose_arv(value)" data-dismiss="modal">모스크바</button>
				        				</td>
				        			</tr>	
				        			<tr>
				        				<th>
				        					대양주
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="시드니" onclick="modalclose_arv(value)" data-dismiss="modal">시드니</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="멜버른" onclick="modalclose_arv(value)" data-dismiss="modal">멜버른</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="사이판" onclick="modalclose_arv(value)" data-dismiss="modal">사이판</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="괌" onclick="modalclose_arv(value)" data-dismiss="modal">괌</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th>
				        					중동
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="아부다비" onclick="modalclose_arv(value)" data-dismiss="modal">아부다비</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="두바이" onclick="modalclose_arv(value)" data-dismiss="modal">두바이</button>
				        				</td>
				        				<td></td>
				        				<td></td>
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
				        			<tr>
				        				<th>
				        					중국
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="북경" onclick="modalclose_dep(value)" data-dismiss="modal">북경</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="상해" onclick="modalclose_dep(value)" data-dismiss="modal">상해</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="대련" onclick="modalclose_dep(value)" data-dismiss="modal">대련</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="위해" onclick="modalclose_dep(value)" data-dismiss="modal">위해</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th>
				        					아시아
				        				</th>	
				        				<td>
											<button type="button" class="btn btn-link" value="홍콩" onclick="modalclose_dep(value)" data-dismiss="modal">홍콩</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="대만" onclick="modalclose_dep(value)" data-dismiss="modal">대만</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="다낭" onclick="modalclose_dep(value)" data-dismiss="modal">다낭</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="방콕" onclick="modalclose_dep(value)" data-dismiss="modal">방콕</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th rowspan="2">
				        					미주
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="로스앤젤레스" onclick="modalclose_dep(value)" data-dismiss="modal">로스앤젤레스</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="라스베가스" onclick="modalclose_dep(value)" data-dismiss="modal">라스베가스</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="뉴욕" onclick="modalclose_dep(value)" data-dismiss="modal">뉴욕</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="샌프란시스코" onclick="modalclose_dep(value)" data-dismiss="modal">샌프란시스코</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<td>
											<button type="button" class="btn btn-link" value="하와이" onclick="modalclose_dep(value)" data-dismiss="modal">하와이</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="밴쿠버" onclick="modalclose_dep(value)" data-dismiss="modal">밴쿠버</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="토론토" onclick="modalclose_dep(value)" data-dismiss="modal">토론토</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="몬트리올" onclick="modalclose_dep(value)" data-dismiss="modal">몬트리올</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th rowspan="2">
				        					유럽
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="런던" onclick="modalclose_dep(value)" data-dismiss="modal">런던</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="파리" onclick="modalclose_dep(value)" data-dismiss="modal">파리</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="로마" onclick="modalclose_dep(value)" data-dismiss="modal">로마</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="마드리드" onclick="modalclose_dep(value)" data-dismiss="modal">마드리드</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<td>
											<button type="button" class="btn btn-link" value="프랑크푸르트" onclick="modalclose_dep(value)" data-dismiss="modal">프랑크푸르트</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="암스테르담" onclick="modalclose_dep(value)" data-dismiss="modal">암스테르담</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="이스탄불" onclick="modalclose_dep(value)" data-dismiss="modal">이스탄불</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="모스크바" onclick="modalclose_dep(value)" data-dismiss="modal">모스크바</button>
				        				</td>
				        			</tr>	
				        			<tr>
				        				<th>
				        					대양주
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="시드니" onclick="modalclose_dep(value)" data-dismiss="modal">시드니</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="멜버른" onclick="modalclose_dep(value)" data-dismiss="modal">멜버른</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="사이판" onclick="modalclose_dep(value)" data-dismiss="modal">사이판</button>
				        				</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="괌" onclick="modalclose_dep(value)" data-dismiss="modal">괌</button>
				        				</td>
				        			</tr>
				        			<tr>
				        				<th>
				        					중동
				        				</th>
				        				<td>
											<button type="button" class="btn btn-link" value="아부다비" onclick="modalclose_dep(value)" data-dismiss="modal">아부다비</button>
										</td>
				        				<td>
				        					<button type="button" class="btn btn-link" value="두바이" onclick="modalclose_dep(value)" data-dismiss="modal">두바이</button>
				        				</td>
				        				<td></td>
				        				<td></td>
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
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<strong style="font-size:15pt">인원</strong>
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
					&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size:15pt">좌석 등급</strong>
					<select name="seat_grade" class="form-control" style="width:10%; display:inline;">
						<option value="0">일반</option>	
						<option value="1">비즈니스</option>
					</select>
					<s:hidden name="air_array" value="1"/>
					<input type="submit" class="btn btn-primary" value="검색">
				<!-- </div> -->
			</form>
		</div>
	</div>
	<br>
	<!-- 정렬 -->
	<div class="air_array">
		<form name="frm">
			<s:if test="arv != null">
				<select name="air_array" class="form-control" onchange="sort()">
					<s:if test="air_array == 1 || air_array == null">
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
					
					<s:if test="ckAD_1 != null && ckAD_1 != ''">
						<s:hidden name="ckAD_1" value="%{ckAD_1}"/>
					</s:if>
					<s:if test="ckAD_2 != null && ckAD_2 != ''">
						<s:hidden name="ckAD_2" value="%{ckAD_2}"/>
					</s:if>
					<s:if test="ckAD_3 != null && ckAD_3 != ''">
						<s:hidden name="ckAD_3" value="%{ckAD_3}"/>
					</s:if>
					<s:if test="ckAD_4 != null && ckAD_4 != ''">
						<s:hidden name="ckAD_4" value="%{ckAD_4}"/>
					</s:if>
					
					<s:if test="ckDD_1 != null && ckDD_1 != ''">
						<s:hidden name="ckDD_1" value="%{ckDD_1}"/>
					</s:if>
					<s:if test="ckDD_2 != null && ckDD_2 != ''">
						<s:hidden name="ckDD_2" value="%{ckDD_2}"/>
					</s:if>
					<s:if test="ckDD_3 != null && ckDD_3 != ''">
						<s:hidden name="ckDD_3" value="%{ckDD_3}"/>
					</s:if>
					<s:if test="ckDD_4 != null && ckDD_4 != ''">
						<s:hidden name="ckDD_4" value="%{ckDD_4}"/>
					</s:if>
					
					<s:if test="air_company_korea != null && air_company_korea != ''">
						<s:hidden name="air_company_korea" value="%{air_company_korea}"/>
					</s:if>
					<s:if test="air_company_asia != null && air_company_asia != ''">
						<s:hidden name="air_company_asia" value="%{air_company_asia}"/>
					</s:if>
					<s:if test="air_company_jin != null && air_company_jin != ''">
						<s:hidden name="air_company_jin" value="%{air_company_jin}"/>
					</s:if>
				</select>
			</s:if>
			<s:else>
				<select name="air_array" class="form-control" onchange="sort()" disabled>
					<option value="1" selected>가격 낮은 순</option>	
					<option value="2">가는 날 출발시간 빠른 순</option>
					<option value="3">가는 날 도착시간 빠른 순</option>
				</select>
			</s:else>
		</form>
		<br><br>
	</div>
	<div class="air_list">
		<div class="air_left">
			<form>
				<strong>출발시간</strong><br>
				<s:if test="ckAD_1 != null">
					<input type="checkbox" name="ckAD_1" value="06" checked>&nbsp;&nbsp;새벽 00:00~06:00<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="ckAD_1" value="06">&nbsp;&nbsp;새벽 00:00~06:00<br>
				</s:else>
				<s:if test="ckAD_2 != null">
					<input type="checkbox" name="ckAD_2" value="12" checked>&nbsp;&nbsp;오전 06:00~12:00<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="ckAD_2" value="12">&nbsp;&nbsp;오전 06:00~12:00<br>
				</s:else>
				<s:if test="ckAD_3 != null">
					<input type="checkbox" name="ckAD_3" value="18" checked>&nbsp;&nbsp;오후 12:00~18:00<br>					
				</s:if>
				<s:else>
					<input type="checkbox" name="ckAD_3" value="18">&nbsp;&nbsp;오후 12:00~18:00<br>
				</s:else>
				<s:if test="ckAD_4 != null">
					<input type="checkbox" name="ckAD_4" value="24" checked>&nbsp;&nbsp;야간 18:00~24:00<br>				
				</s:if>
				<s:else>
					<input type="checkbox" name="ckAD_4" value="24">&nbsp;&nbsp;야간 18:00~24:00<br>
				</s:else>
				<br><br>
				<strong>도착시간</strong><br>	
				<s:if test="ckDD_1 != null">
					<input type="checkbox" name="ckDD_1" value="06" checked>&nbsp;&nbsp;새벽 00:00~06:00<br>
				</s:if>		
				<s:else>
					<input type="checkbox" name="ckDD_1" value="06">&nbsp;&nbsp;새벽 00:00~06:00<br>
				</s:else>
				<s:if test="ckDD_2 != null">
					<input type="checkbox" name="ckDD_2" value="12" checked>&nbsp;&nbsp;오전 06:00~12:00<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="ckDD_2" value="12">&nbsp;&nbsp;오전 06:00~12:00<br>
				</s:else>
				<s:if test="ckDD_3 != null">
					<input type="checkbox" name="ckDD_3" value="18" checked>&nbsp;&nbsp;오후 12:00~18:00<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="ckDD_3" value="18">&nbsp;&nbsp;오후 12:00~18:00<br>
				</s:else>
				<s:if test="ckDD_4 != null">
					<input type="checkbox" name="ckDD_4" value="24" checked>&nbsp;&nbsp;야간 18:00~24:00<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="ckDD_4" value="24">&nbsp;&nbsp;야간 18:00~24:00<br>
				</s:else>
				<br><br>
				<strong>항공사</strong><br>
				<s:if test="air_company_korea != null">
					<input type="checkbox" name="air_company_korea" value="대한항공" checked>&nbsp;&nbsp;대한항공<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="air_company_korea" value="대한항공">&nbsp;&nbsp;대한항공<br>
				</s:else>
				<s:if test="air_company_asia != null">
					<input type="checkbox" name="air_company_asia" value="아시아나" checked>&nbsp;&nbsp;아시아나<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="air_company_asia" value="아시아나">&nbsp;&nbsp;아시아나<br>
				</s:else>
				<s:if test="air_company_jin != null">
					<input type="checkbox" name="air_company_jin" value="진에어" checked>&nbsp;&nbsp;진에어<br>
				</s:if>
				<s:else>
					<input type="checkbox" name="air_company_jin" value="진에어">&nbsp;&nbsp;진에어<br>
				</s:else>
				
				<br><br>
				
			    <s:if test="arv != null">
				    <s:hidden name="arv" value="%{arv}"/>
					<s:hidden name="dep" value="%{dep}"/>
					<s:hidden name="seat" value="%{seat}"/>
					<s:hidden name="ad_str" value="%{ad_str}"/>
					<s:hidden name="seat_grade" value="%{seat_grade}"/>	
					<s:hidden name="air_array" value="1"/>
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
						출발날짜
					</th>
					<th>
						도착날짜
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
					<td colspan=7>
						<center>항공권을 검색해 주세요</center>
					</td>
				</tr>
				</s:if>
				<s:if test="Airlist.size() == 0">
				<tr>
					<td colspan=7>
						<center>해당 항공권이 존재하지 않습니다</center>
					</td>
				</tr>
				</s:if>
				
				<s:iterator value="Airlist" status="stat">
				<tr>
					<td>
						<s:date name="ad" format="yyyy년 MM월 dd일" />  
					</td>	
					<td>
						<s:date name="dd" format="yyyy년 MM월 dd일" />  
					</td>	
					<td>
						<span class="ico_airline"><img src="./upload/air/<s:property value='image1'/>"></span>
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
						<div class="modal fade" id="myModal${stat.index }" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">
												<span class="label_blue label_box">가는편</span>
												<s:property value="arv" />
												&nbsp;<span class="glyphicon glyphicon-arrow-right"></span>&nbsp;
												<s:property value="dep" />
											</h4>
										</div>
										<div class="modal-body">
											<table id="list" class="table table-hover" style="width: 100%;">
												<tr>
													<th>인원</th>
													<th>남은 좌석 수</th>
													<th>가격</th>
													<th>항공사</th>
													<th>서비스 제공</th>
												</tr>
												<tr>
													<td><s:property value="#parameters.seat" />명</td>
													<td><s:property value="seat" />좌석</td>
													<td>${price * param.seat}원</td>
													<td><s:property value="air_company" /></td>
													<td><s:property value="content" /></td>
												</tr>
											</table>
										</div>

										<div class="modal-footer">
											<s:if test="%{session.session_id!=null}">
												<form action="AirRegulation.action">
													<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
													<button type="submit" class="btn btn-primary">
														예약
														<s:hidden name="no" value="%{no}" />
														<s:hidden name="seat" value="%{#parameters.seat}" />
														<s:hidden name="id" value="%{session.session_id}"/>
													</button>
												</form>
											</s:if>

											<s:elseif test="%{session.session_id==null}">
												<div>로그인 하셔야 예약이 가능합니다</div>
												<br>
												<a href="LoginForm.action">
													<button type="button" class="btn btn-primary">로그인</button>
												</a>
											</s:elseif>
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