<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

<script>
function removeCheck() {

	 if (confirm("���� ������ �����Ͻðڽ��ϱ�??") == true){    //Ȯ��

	     document.removefrm.submit();

	 }else{   //���

	     return false;

	 }

	}
</script>

<meta charset="EUC-KR">
<title>����������</title>
</head>
<body>
<div>
<h2>������ ����</h2>
</div>
<div class="mypage">

<table size="80%" height="80%" width="40%" align="center" cellspacing="0" cellpadding="0" border=1px solid="#444444;">


<form action="ModifyMember.action" name="Modify" method="post" >
<tr>
<td align="right" bgcolor="white" height="20">
<button type="submit"class="btn btn-default" align="right">����</button>
  </td>
  </tr>
  </form>
  <tr>
    <td align="center" bgcolor="white" height="70">
    <img width=60 height=60 ></td>
  </tr>
 <tr>
  <td align="left" bgcolor="white"height="40"><strong>�̸�</strong>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ȫ�浿</td>
  </tr>
   <tr>
  <td align="left" bgcolor="white"height="40"><strong>�̸���</strong>&emsp;&emsp;&emsp;&emsp;&emsp;www.naver.com</td>
  </tr>
   <tr>
  <td align="left" bgcolor="white" height="40"><strong>����ó</strong>&emsp;&emsp;&emsp;&emsp;&emsp;132-456-789</td>
  </tr>
   <tr>
  <td align="left" bgcolor="white" height="40"><strong>��й�ȣ</strong>&emsp;&emsp;&emsp;&emsp;&emsp;*******</td>
  </tr>
   <tr>
  <td align="left" bgcolor="white" height="60"><strong>�����ü��ŵ���</strong>&nbsp;&nbsp;&nbsp;e-mail:���Űź�<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;sms:���Űź�</td>
  </tr>
</table>
</div>
<br><br>
<div align="center">
<form action="DeleteMember.action" name="Mdel" method="post">
     <button type="submit" class="btn btn-primary" onclick="removeCheck()">��������</button><br><br>
    
</form></div>
</body>
</html>