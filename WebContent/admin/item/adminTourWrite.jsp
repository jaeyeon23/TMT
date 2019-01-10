<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<script src="js/bootstrap.js" type="text/javascript"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
	function check(){
		
		var f=document.write;
		if (f.name.value == "") {
			alert("상품이름을 입력해주십시오");
			f.name.focus();
			return false;
		}
		if (f.price.value == "") {
			alert("상품가격을 입력해주십시오");
			f.price.focus();
			return false;
		}
		if (f.country.value == "") {
			alert("나라를 입력해주십시오");
			f.country.focus();
			return false;
		}
		if(f.region.value==""){
			alert("지역을 입력해주십시오");
			f.region.focus();
			return false;
		}
		if(f.amount.value==""){
			alert("수량을 입력해주십시오");
			f.amount.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<s:form name="write" action="AdminTourWrite.action" method="post" enctype="multipart/form-data">
			
	<table width="960" cellspacing="0" cellpadding="0" border="0"
		color="gray" align="center">
		<tr>
			<td colspan="2">
				<table border="0" width="80%">
						<tr>
							<td>
								<p align="center">
									<span style="font-size: 26pt;">상 품 등 록</span>
								</p>
							</td>
						</tr>
						<tr>
							<td height="331">
								<table border="1" align="center" width="558">
									<tr>
										<td>
											<p align="center">
												<font size="2">상품이름</font>
											</p>
										</td>
										<td><input type="text" name="name"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">가격</font>
											</p>
										</td>
										<td><input type="number" name="price"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">나라</font>
											</p>
										</td>
										<td><input type="text" name="country"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">지역</font>
											</p>
										</td>
										<td><input type="text" name="region"></td>
									</tr>
									<tr>
										<td>
											<p align="center">
												<font size="2">수량</font>
											</p>
										</td>
										<td><input type="number" name="amount"></td>
									</tr>
									
									<tr>
										<td><s:file label="제품 메인이미지1" name="uploads"><s:property value="main" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									<tr>
										<td><s:file name="uploads"><s:property value="content" /></s:file></td>
									</tr>
									
									
								</table>
							</td>
						</tr>
						<tr>
							<td height="75">
								<p align="center">
									<input type="submit" onclick="return check()" value="등록">&nbsp; <input
										type="reset" value="다시쓰기">
								</p>
							</td>
						</tr>
</s:form>
</body>
</html>
