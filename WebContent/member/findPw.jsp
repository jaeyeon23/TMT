<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>    
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 성공</title>
<style type="text/css">
.my-box {
	border: 1px solid;
	padding: 10px;
}
</style>
</head>
<center>
	<body>
		<h4>비밀번호 찾기</h4>
		<h5><br>고객님 아이디의 비밀번호입니다.</h5>
		<br><br>
		<div class>
			<form action="LoginForm.action" method="post">
				<s:iterator value="%{list}" status="stat">
					<p style="font-size:18px;">비밀번호 : <s:property value="list.get(#stat.index).password"/>&nbsp;</p>
				</s:iterator>
		</div>
		<br><br>
				<input type="submit" value="로그인" class="btn-new btn--type-primary btn--width-100"  style="display: inline"/> &nbsp; 
				<input type="button" value="홈으로" onclick="javascript:location.href='Main.action'" class="btn-new btn--type-primary btn--width-100"  style="display: inline"/>
		</form>
		<br><br>
	</center>	
</body>
</html>