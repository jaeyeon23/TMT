<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TMT/item/air/air_check.css" type="text/css">
</head>
<body>
	<div id="alls">
		<center>
			<b><font size="5" color="#1b5ac2">예약 하기</font></b>
		</center>
		<div id="tops">
			<div id="tops_1">
				<ul>
					<li class="c1">1</li>
					<li><hr></li>
					<li class="c2">2</li>
					<li><hr></li>
					<li class="c2">3</li>
				</ul>
			</div>
		</div>
		<div id="tops2">
			<div id="tops2_1">운임규정확인</div>
			<div id="tops2_2">예약정보확인</div>
			<div id="tops2_3">예약완료</div>
		</div>

		<div id="contents">
			<h3>운임규정</h3>
			<div id="box" style="padding-left:5px;">아래 운임규정은 1인기준으로 적용되는 규정입니다.</div><br>
			<div id="contents_main">
				<table class="table">
					<tr>
						<th>운임종류</th>
						<td>정규 운임</td>
					</tr>
					<tr>
						<th>적용대상</th>
						<td>성인</td>
					</tr>
					<tr>
						<th>출국요일</th>
						<td>매일</td>
					</tr>
					<tr>
						<th>귀국요일</th>
						<td>매일</td>
					</tr>
					<tr>
						<th>최소체류일</th>
						<td>제한없음</td>
					</tr>
					<tr>
						<th>최대체류일</th>
						<td>1년</td>
					</tr>
					<tr>
						<th>유아요금</th>
						<td>편도 20,000원/왕복 40,000원 (좌석미점유)<br> * 항공권 첫 번째 구간 출발일
							기준 생후 14일 ~ 만 2세 미만 <br> * <strong>유아는 반드시 성인과 동일한
								여정으로만 발권 가능</strong>하며, 왕복 여정 중 유아가 편도만 탑승하는 경우 편도로 나누어 발권 필수<strong>(여행사
								문의 요망)</strong>
						</td>
					</tr>
					<tr>
						<th>소아요금</th>
						<td>만2세이상 만12세미만(성인 동반) 성인판매가의 100%</td>
					</tr>
					<tr>
						<th>항공사 수수료- 예약변경</th>
						<td style="color: blue;">*예약 변경은 매회 <strong>구간 당</strong> 해당
							수수료 징수 후 가능<br> *예약 변경 시 운임 및 TAX 차액 발생 될 수 있음<br> *항공권
							변경시점에 따라 변경 수수료 차등 적용<br> *일자 변경만 가능, 구간 변경 시 환불 후 재구매 <br>
							-출발 91일이전 : 무료<br> -출발 90~71일이전 : <strong>10,000</strong>원
							공제<br> -출발 70~51일이전 : <strong>25,000</strong>원 공제<br>
							-출발 50~31일이전 : <strong>40,000</strong>원 공제<br> -출발 30일~출발
							50분 전 : 55,000원 공제
						</td>
					</tr>
					<tr>
						<th>항공사 수수료- 예약변경</th>
						<td style="color: blue;">(주의) 예약 변경 시 항공사 사정에 따라 사전 예고 없이 운항
							일정 변경 및 취소가 발생할 수 있으므로 반드시 스케줄 여행사 확인 요망 (변경가능 스케줄이 없을 경우 항공권
							취소해야하며, 취소수수료 그대로 부과)<br> <strong>※ 전체미사용 항공권의 출발편
								변경 유효기간은 항공권 및 항공사 규정에 따라 상이하므로 문의 바랍니다.</strong>
						</td>
					</tr>
					<tr>
						<th>항공사 수수료- 예약변경</th>
						<td style="color: blue;">발권 후 영문 성함 스펠링 변경 시 동일 좌석 이용 불가할 경우
							편도 당 <strong>10,000</strong>원 수수료 징수 후 재발행<br> 티웨이 항공 공항 지점
							또는 예약센터를 통한 영문 성함 변경 시 무조건 편도 당 <strong>10,000</strong>원 수수료 징수
						</td>
					</tr>
					<tr>
						<th>귀국일오픈</th>
						<td>불가</td>
					</tr>
					<tr>
						<th>사전발권</th>
						<td style="color: red;">출발 3일 이전 예약 시 : 예약 후 2일 이내 발권 조건 <br>
							출발 2일 ~ 출발 당일 예약 시 : 즉시 발권 조건
						</td>
					</tr>
					<tr>
						<th>항공사 수수료- 환불</th>
						<td style="color: blue;">*환불은 <strong>구간 당</strong> 해당 수수료 징수
							후 가능<br> *항공권 취소 시점에 따라 취소 수수료 차등 적용<br> -출발 91일이전 : 무료<br>
							-출발 90~71일이전 : <strong>10,000</strong>원 공제<br> -출발 70~51일이전
							: <strong>25,000</strong>원 공제<br> -출발 50~31일이전 : <strong>40,000</strong>원
							공제<br> -출발 30일~출발 50분 전 : 55,000원 공제<br> -부분 환불 시 : 사용한
							편도 운임 + 해당 수수료 공제
						</td>
					</tr>
					<tr>
						<th>항공사 수수료- 환불</th>
						<td style="color: blue;">*미사용 항공권 환불은 유효 기간 만료후 60일 이내 가능<br>
							*부분 환불시 편도운임 및 수수료 공제후 환불금이 발생되지 않을수 있습니다.
						</td>
					</tr>
					<tr>
						<th>항공사 수수료-NOSHOW</th>
						<td><font color="red">※ NO-SHOW 시 구간당 <strong>100,000</strong>원
								수수료 징수
						</font><br> [NO-SHOW 패널티 적용 시점] <br> 수속 마감 시간인 출발 50분 전부터 적용 <br>
							해당 시점 이 전에 변경/환불 완료해야 함 <br> 출발 여정이 NO-SHOW인 경우 리턴 여정 사용 불가<br>
							이 후, 변경/환불 시 구간당 <br> <strong>변경/환불수수료 + NO-SHOW
								패널티 중복 징수</strong></td>
					</tr>
					<tr>
						<th>기타</th>
						<td><strong>* 비동반 소아 서비스(UM) 불가</strong><br> * 구입하신 항공권은
							반드시 첫번째 여정부터 순서대로 사용하셔야하며, 순서대로 이용하지 않은 항공권은 취소처리 및 항공사 규정에 따른
							책임이 부여됩니다.</td>
					</tr>
					<tr>
						<th>기타</th>
						<td>* 예약일과 발권일이 상이한 경우 발권일의 환율에 따라 TAX(유류할증료 포함)가 변동될 수 있습니다.<br>
							* 항공사의 사정으로 별도의 공지없이 운임 및 규정이 변경되어 운임 차액이 발생하는 경우 운임차액 추가 징수됩니다.<br>
							* 사망/질병/임신 및 교통수단 지연/취소로 인한 변경,취소 수수료 면제 가능 여부 및 자세한 관련 사항은 항공사
							문의하시기 바랍니다. (NO-SHOW 패널티는 면제 불가)
						</td>
					</tr>
					<tr>
						<th>무료수하물</th>
						<td>좌석등급 및 노선에 따라 상이하므로 항공권 구입전 해당 항공사로 문의 바랍니다.<br> 항공사
							요금규정에 무료수화물 내용이 누락된 경우 표기되지 않을 수 있으며, 표기되지 않은 경우, 해당 항공사에 문의
							부탁드립니다.<br> ※공동운항편, 타항공사 연결편, 24시간 이상 체류일정, 해외 출발일정, 특수 수화물의
							경우 운항 항공사에 따라 수화물 규정이 상이할 수 있습니다.<br> 각 항공사로 문의하시거나 담당자에게 문의
							부탁드립니다.
						</td>
					</tr>
					<tr>
						<th>초과수하물</th>
						<td>항공사별 초과 수하물 안내</td>
					</tr>
					<tr>
						<th>신용카드</th>
						<td>비씨,외환,국민,신한,삼성,현대,롯데,농협카드 결제가능<br> (항공사의 사정으로 결제가능
							카드는 수시로 변동되므로 발권 전 담당자와 확인 부탁드립니다.)
						</td>
					</tr>
					<tr>
						<th>항공사 마일리지적립</th>
						<td>※<font color="red">항공사</font> 마일리지 적립률 및 적립여부는 항공권 구입 전
							반드시 확인 부탁 드립니다.
						</td>
					</tr>
					<tr>
						<th>여행업무 취급수수료</th>
						<td>항공권 발권 후 고객의 요청에 따른 취소,변경,환불 등의 작업 필요 시, 여행사에서 취급하는 비용이므로
							해당 비용에 대한 문의는 여행사로 하시기 바랍니다.<br> ※ 발권 후 이루어지는 취소, 변경, 환불 등
							모든 후속 업무는 여행사가 항공사를 통해 진행하는 추가 업무입니다. 따라서 이에 대한 여행업무 취급 수수료는 항공사
							수수료와 별도로 추가 징수되는 사항이니, 신중한 결제 진행 부탁 드립니다.<br> ※ 여행업무 취급수수료는
							항공권을 취소/변경/환불하더라도 환불되지 않습니다.
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div id="min_s">
								<center>
									<button type="button"
										onclick="location.href='javascript:history.go(-1)'">
										<b>취소하기</b>
									</button>
									<form action="AirView.action">
										<s:hidden name="no" value="%{no}" />
										<s:hidden name="seat" value="%{seat}" />
										<s:hidden name="id" value="%{session.session_id}" />
										<b><input type="submit" value="예약하기"></b>
									</form>
								</center>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>







</body>
</html>