<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
<style>
body{
    background-color:#EFEFEF;
}


</style>
<meta charset="EUC-KR">
<title>����������</title>
</head>
<body>
<div>
<h2>������ ����</h2>
</div>
<div class="mypage">
<table size="80%" height="80%" width="40%" align="center" cellspacing="0" cellpadding="0"  >

<tr>
<td align="right" bgcolor="white" height="20">
  <input type="button" onclick="javascript:window.location='modify.jsp'" value="����"/>
  </td>
  </tr>
  <tr>
    <td align="center" bgcolor="white" height="70">
    <img width=60 height=60></td>
  </tr>
 <tr>
  <td bgcolor="white"height="40">�̸�&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;ȫ�浿</td>
  </tr>
   <tr>
  <td bgcolor="white"height="40">�̸���&emsp;&emsp;&emsp;&emsp;&emsp;www.naver.com</td>
  </tr>
   <tr>
  <td bgcolor="white" height="40">����ó&emsp;&emsp;&emsp;&emsp;&emsp;132-456-789</td>
  </tr>
   <tr>
  <td bgcolor="white" height="40">��й�ȣ&emsp;&emsp;&emsp;&emsp;&emsp;*******</td>
  </tr>
   <tr>
  <td bgcolor="white" height="60">�����ü��ŵ���&nbsp;&nbsp;&nbsp;e-mail:���Űź�<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;sms:���Űź�</td>
  </tr>
</table>
</div>
<form action="DeleteMemberCheck.jsp" name="Mdel" method="post">
 <table align="center">
  <tr>
   <td align="center">
     <input type="submit" value="��������" onclick="alert('������ �����Ͻðڽ��ϱ�?')">
   </td>
  </tr>
</table>
</form>
</body>
</html>