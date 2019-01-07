/**
 * 
 */
//<![CDATA[
/* Korean initialisation for the jQuery calendar extension. */
/* Written by DaeKwon Kang (ncrash.dk@gmail.com), Edited by Genie and Myeongjin Lee. */
/*(function(factory) {
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
		monthNames : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11",
				"12" ],
		monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
				"11", "12" ],
		dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
		dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
		dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
		weekHeader : "주",
		dateFormat : "yy-MM-dd",
		firstDay : 0,
		isRTL : false,
		showMonthAfterYear : true,
		yearSuffix : "년",
	};
	datepicker.setDefaults(datepicker.regional.ko);

	return datepicker.regional.ko;

}));

///
*//*$(function() {
	$(".date1").datepicker({
		minDate: 0
	});
});*/

$(function() {
	//datepicker 한국어로 사용하기 위한 언어설정
	$.datepicker.setDefaults($.datepicker.regional['ko']);

	// 시작일(inDay)은 종료일(outDay) 이후 날짜 선택 불가
	// 종료일(outDay)은 시작일(inDay) 이전 날짜 선택 불가
	//시작일.
	$('.date1').datepicker({
		showOn : "focus", // 달력을 표시할 타이밍 (both: focus or button)
		dateFormat : "yy-mm-dd", // 날짜의 형식
		changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
		minDate: 0,          // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
		/*onClose : function(selectedDate) {
			// 시작일(fromDate) datepicker가 닫힐때
			// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
			$("#outDay").datepicker("option", "minDate", selectedDate);
		}*/
	});

	//종료일
	$('#outDay').datepicker({
		showOn : "both",
		buttonImage : "/TMT/images/calendar.gif",
		buttonImageOnly : true,
		dateFormat : "yy-mm-dd",
		changeMonth : true,
		minDate: 0, // 오늘 이전 날짜 선택 불가
		/*onClose : function(selectedDate) {
			// 종료일(toDate) datepicker가 닫힐때
			// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
			$("#inDay").datepicker("option", "maxDate", selectedDate);
		}*/
	});
});
//]]>