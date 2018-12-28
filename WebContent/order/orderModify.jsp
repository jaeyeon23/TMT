<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역 수정</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>
	
	<link rel="stylesheet" href="./calendar/jquery-ui.min.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="./calendar/jquery-ui.min.js"></script>
	<script src="./calendar/datepicker-ko.js"></script>
	<script type="text/javascript">

	
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
</script>
</script>
</head>
<body>

<div class="main">
<div class='header-title'><h3><center>예약내역 변경</center></h3></div><br><br>

<div align="right">
 <table class="table">
	<tr>
		<td height="20" bgcolor="#EEDAFF"></td>
		
	</tr>
	
 </table>
 
<table class="table" width="80%" cellpadding="0" cellspacing="0">
			
			<tr align="left">
			   <td align="center"><font size="2"><img width=250 height=200></font></td>
			   <th align="center"><font size="2"><strong>주문번호</strong></font></th>
			   <th align="center"><font size="2"><strong>상품명</strong></font></th>
			   <th align="center"><font size="2"><strong>가격</strong></font></th>
			   <th align="center"><font size="2"><strong>출발일</strong></font><br>

			   <input type="text" class="date1" size="14"/></th>
			   
			   <th align="center"><font size="2"><strong>국가</strong></font></th>
			   <th align="center"><font size="2"><strong>지역</strong></font></th>
			   <th align="center"><font size="2"><strong>체크인</strong></font></th>
			   <th align="center"><font size="2"><strong>체크아웃</strong></font></th>
			   <th align="center"><font size="2"><strong>출발일</strong></font><br>
			   <input type="text" class="date1" size="14"/></th>
			   <th align="center"><font size="2"><strong>입국일</strong></font><br>
			   <input type="text" class="date1" size="14"/></th>
			 </tr>
			
			   


</table>
	<table class="table">
			<tr>
				<td height="2" bgcolor="#EEDAFF"></td>
			</tr>
		</table>
<p align="center">
	<form action="ViewOrder.action" name="ov" method="post">	

  <button type="reset" class="btn btn-default" onclick=history.go(-1); >취소하기</button>
  <button type="submit" class="btn btn-primary">저장하기</button>
  </form>	
</p>
	

</div>

</body>
</html>