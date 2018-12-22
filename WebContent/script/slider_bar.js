/**
 * 	airlist 가격표 슬라이더 바
 */
$(function() {
	$("#slider").slider({
		value : 10,
		min : 0,
		max : 10,
		step : 0.1,
		slide : function(event, ui) {
			$("#amount3").val("$" + ui.value);
		}
	});
	$("#amount3").val("$" + $("#slider").slider("value"));
});