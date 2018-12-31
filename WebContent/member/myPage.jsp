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
<h2>마이페이지<img src="./images/mypage.jpg" width="60" height="60"></h2>
</div>
<div class="mypage">

<table class="table table-bordered"  width ="200" height="300" align = "center">



<form action="ModifyMember.action" name="Modify" method="post" >
<tr>
<td align="right">
<button type="submit"class="btn btn-default" align="right">편집</button>
  </td>
  </tr>
  </form>
  <tr>
    <td align="center"  height="70">
  <!--   <img width=60 height=60 >${image }--></td>
  </tr>
  
 <tr>
  <td align="left" ><strong>이름</strong>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.name"/></td>
  </tr>
   <tr>
  <td align="left"><strong>이메일</strong>&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.email"/></td>
  </tr>
   <tr>
  <td align="left" ><strong>연락처</strong>&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.tel"/></td>
  </tr>
   <tr>
  <td align="left" ><strong>비밀번호</strong>&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.password"/></td>
  </tr>
   <tr>
  <td align="left"><strong>마켓팅수신동의</strong>&nbsp;&nbsp;&nbsp;<s:property value="resultClass.marketing1"/><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<s:property value="resultClass.marketing2"/></td>
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