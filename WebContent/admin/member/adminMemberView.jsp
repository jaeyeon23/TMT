<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>

<script>
function removeCheck() {

	 if (confirm("정말 계정을 삭제하시겠습니까??") == true){    //확인

	    location.href="DeleteMember.action";

	 }else{   //취소

	    location.href="MyPage.action";

	 }

	}
</script>

<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<div>
<h2><!--<input type=image src="./images/mypage.jpg" width="130" height="130" onclick="MyPage.action">-->프로필관리</h2>
</div>
<div class="mypage">

<table class="table table-bordered" >



<form action="AdminMemberModifyForm.action" name="Modify" >
<input type="hidden" name="id" value="<s:property value="%{id}"/>">
<input type="hidden" name="currnetPage" value="<s:property value="currentPage"/>">
<tr>
<td align="right" bgcolor="white" height="20">
<button type="submit"class="btn btn-default" align="right">편집</button>
  </td>
  </tr>
  </form>
  <tr>
    <td align="center" bgcolor="white" height="70">
  <!--   <img width=60 height=60 >${image }--></td>
  </tr>
  
 <tr>
  <td align="left" bgcolor="white"height="40"><strong>이름</strong>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.name"/></td>
  </tr>
   <tr>
  <td align="left" bgcolor="white"height="40"><strong>이메일</strong>&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.email"/></td>
  </tr>
   <tr>
  <td align="left" bgcolor="white" height="40"><strong>연락처</strong>&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.tel"/></td>
  </tr>
   <tr>
  <td align="left" bgcolor="white" height="40"><strong>비밀번호</strong>&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.password"/></td>
  </tr>
   <tr>
  <td align="left" bgcolor="white" height="60"><strong>마켓팅수신동의</strong>&nbsp;&nbsp;&nbsp;<s:property value="resultClass.marketing1"/><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.marketing2"/></td>
  </tr>
</table>
</div>
<br><br>
<div align="center">
 <form action="DeleteMember.action" name="Mdel" method="post">
     <button type="submit" class="btn btn-primary" onclick="removeCheck()">계정삭제</button><br><br>
    
</form></div>
</body>
</html>