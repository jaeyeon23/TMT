<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="/TMT/css/member/joinForm.css"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>아이디 찾기 성공</title>

<style type="text/css">
.my-box {
	border: 1px solid;
	padding: 10px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>

<center>
	<body>
		<h4>아이디 찾기</h4>
		<h5><br>고객님의 정보와 일치하는 아이디입니다.</h5>
		<br><br>
		<div class>
			<form action="LoginForm.action" method="post">
				<s:iterator value="%{list}" status="stat">
					<p style="font-size:18px;">아이디 : <s:property value="list.get(#stat.index).id"/> &nbsp;</p>
				</s:iterator>
		</div>
		<br><br>
				<input type="submit" value="로그인" class="btn-new btn--type-primary btn--width-100" style="display: inline"/> &nbsp; 
				<input type="button" value="비밀번호 찾기" onclick="javascript:location.href='FindPwForm.action'" class="btn-new btn--type-primary btn--width-100"  style="display: inline"/>
		</form>
		<br><br>
	</body>
</center>
</html>