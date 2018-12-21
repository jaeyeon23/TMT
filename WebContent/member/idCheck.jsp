<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 아이디 중복확인</title>
<script type="text/javascript">
function windowclose(){
	opener.document.join.id.value="${id}";
	self.close();
}
function check() {
	
	var f=document.checkId;  //문서.Form name="";

	if(f.id.value==""){
		alert("아이디를 입력해주세요.");
		f.id.focus();
		return false;
	}
}
</script>
</head>
<body>
<s:if test="chkId==1">
<form name="checkId" action="ConfirmId.action" method="post" onsubmit="return check()">
<table width="400" border="0" cellspacing="0" cellpadding="5">
<tr align="center">
<td height="30">
<b>${id}</b>은(는) 이미 사용 중인 아이디입니다!
</td>
</tr>
</table>
	<table width="400" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center">
				<font>다른 아이디를 입력하세요!</font>
				<input type="text" size="10" maxlength="12" name="id" />
				<input type="submit"  value="중복확인">
			</td>
		</tr>
	</table>
	</form>
</s:if>
	
<s:else>
	<table width="400" border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td align="center">
				<br><br>
				<font>입력하신 <b>${id}</b> 은(는) 사용할 수 있는 아이디입니다.</font>
				<br/><br/>
				<input type="button" value="닫기" onclick="windowclose()"/>
			</td>
		</tr>
	</table>
</s:else>
</body>
</html>