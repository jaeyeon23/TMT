$(function() {
	//datepicker 한국어로 사용하기 위한 언어설정
	$.datepicker.setDefaults($.datepicker.regional['ko']);

	// 시작일(inDay)은 종료일(outDay) 이후 날짜 선택 불가
	// 종료일(outDay)은 시작일(inDay) 이전 날짜 선택 불가
	//시작일.
	$('#inDay').datepicker({
		showOn : "both", // 달력을 표시할 타이밍 (both: focus or button)
		buttonImage : "/TMT/images/calendar.gif", // 버튼 이미지
		buttonImageOnly : true, // 버튼 이미지만 표시할지 여부
		dateFormat : "yy-mm-dd", // 날짜의 형식
		changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
		minDate: 0,          // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
		onClose : function(selectedDate) {
			// 시작일(fromDate) datepicker가 닫힐때
			// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
			$("#outDay").datepicker("option", "minDate", selectedDate);
		}
	});

	//종료일
	$('#outDay').datepicker({
		showOn : "both",
		buttonImage : "/TMT/images/calendar.gif",
		buttonImageOnly : true,
		dateFormat : "yy-mm-dd",
		changeMonth : true,
		minDate: 0, // 오늘 이전 날짜 선택 불가
		onClose : function(selectedDate) {
			// 종료일(toDate) datepicker가 닫힐때
			// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
			$("#inDay").datepicker("option", "maxDate", selectedDate);
		}
	});
});

function check(){
	if(document.HsearchForm.hotelname.value==""){
	  alert("나라/지역 혹은 호텔명을 입력해주세요.");
	  document.HsearchForm.hotelname.focus();
	  return false;
	}
	if(document.HsearchForm.inDay.value==""){
	  alert("체크인날짜를 선택해주세요.");
	  document.HsearchForm.inDay.focus();
	  return false;
	}

	if(document.HsearchForm.outDay.value==""){
	  alert("체크아웃 날짜를 선택해주세요");
	  document.HsearchForm.outDay.focus();
	  return false;
	}
} 