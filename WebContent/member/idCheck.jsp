<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ���̵� �ߺ�Ȯ��</title>
<script type="text/javascript">
function windowclose(){
	opener.document.join.id.value="${id}";
	self.close();
}
function check() {
	
	var f=document.checkId;  //����.Form name="";

	if(f.id.value==""){
		alert("���̵� �Է����ּ���.");
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
<b>${id}</b>��(��) �̹� ��� ���� ���̵��Դϴ�!
</td>
</tr>
</table>
	<table width="400" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center">
				<font>�ٸ� ���̵� �Է��ϼ���!</font>
				<input type="text" size="10" maxlength="12" name="id" />
				<input type="submit"  value="�ߺ�Ȯ��">
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
				<font>�Է��Ͻ� <b>${id}</b> ��(��) ����� �� �ִ� ���̵��Դϴ�.</font>
				<br/><br/>
				<input type="button" value="�ݱ�" onclick="windowclose()"/>
			</td>
		</tr>
	</table>
</s:else>
</body>
</html>