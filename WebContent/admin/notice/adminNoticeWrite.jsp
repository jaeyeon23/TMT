<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
	function validation(){
		var frm = document.write;
		
		if(frm.subject.value==""){
			alert("������ �Է����ּ���.");
			return false;	
		}
		else if(frm.content.value==""){
			alert("������ �Է����ּ���");
			return false;
		}
		return true;
		
	}
</script>
</head>
<body>
	<form action="AdminNoticeWrite.action" name="write" method="post"
			enctype="multipart/form-data" onsubmit="return validation();">

	<table width="600" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="right" colspan="2"><font color="#FF0000">*</font>�� �ʼ� �Է»����Դϴ�.</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="#FF0000">*</font>����</td>
			<td width="500" bgcolor="#FFFFFF">
				<s:textfield name="subject" theme="simple" value="%{resultClass.subject}"
					cssStyle="width:370px" maxlength="50"/>
			</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#F4F4F4"><font color="#FF0000">*</font>����</td>
			<td width="500" bgcolor="#FFFFFF">
				<s:textarea name="content" theme="simple" value="%{resultClass.content}"
					cols="50" rows="10"/>
			</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td height="10" colspan="2"></td>
		</tr>
		<tr>
			<td align="right" colspan="2">
				<input name="submit" type="submit" value="�ۼ��Ϸ�" class="inputb">
				<input name="list" type="button" value="���" class="inputb"
					onclick="javascript:location.href='AdminNoticeList.action?currentPage=<s:property value="currentPage"/>'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>