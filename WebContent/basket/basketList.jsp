<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<script src="../js/bootstrap.js" type="text/javascript"></script>
<style>
	#image{
		/* border-radius: 15px 15px 0 0;
		padding: 1px 1px 1px 1px;
		width:220px;  */
		height:50px;
	}
</style>
<meta charset="UTF-8">
<title>나의 위시리스트</title>


<script type="text/JavaScript">
	var check = false;
	function CheckAll() {
		var chk = document.getElementsByName("deleteCheck");
		if (check == false) {
			check = true;
			for (var i = 0; i < chk.length; i++) {
				chk[i].checked = false;
			}
		} else {
			check = false;
			for (var i = 0; i < chk.length; i++) {
				chk[i].checked = true;
			}
		}
	}
</script>
<script type="text/JavaScript">
	function check() {

		if (frm.deleteCheck.checked == false) {
			alert("체크박스를 선택해주세요");
			return false;
		} else
	}
</script>

<script type="text/JavaScript">
	var check2 = false;
	function CheckAll2() {
		var chk2 = document.getElementsByName("deleteCheck2");
		if (check2 == false) {
			check2 = true;
			for (var i = 0; i < chk2.length; i++) {
				chk2[i].checked = false;
			}
		} else {
			check2 = false;
			for (var i = 0; i < chk2.length; i++) {
				chk2[i].checked = true;
			}
		}
	}
</script>
<script type="text/JavaScript">
	function check2() {

		if (frm2.deleteCheck2.checked == false) {
			alert("체크박스를 선택해주세요");
			return false;
		}
	}
</script>



</head>
<body>

	<main class='wish-list'>
	<div class='wishlists-container'>
		<div class='wishlists-header-container'>
			<div class='wishlists-title-wrapper'>

				<div class='header-title'>
					<h2>
						<center>
							<s:property value="%{session.session_id}" />
							의 위시리스트&nbsp;<img src="./images/heart.png" width="20" height="20">
						</center>
					</h2>

				</div>
				<br>
			</div>
			<div class='wishlists-header-divider'></div>



			<div class='wishlists-cards-container'>

				<div>
					<h4>HOTEL</h4>
					<br> hotel&nbsp;
					<s:property value="totalCount" />
					개의 상품
					<table class="table" align="center">
						<form action="DeleteBasket.action" name="frm" method="post"
							onsubmit="return check()">
							<input type="hidden" name="id" value="<s:property value="%{session.session_id}"/>" />
							<tr>
								<td colspan=2>
									<p align="center">
										<input type="hidden" name="order" value="basket">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr align="center" height=26 bgcolor="#FFDDDD">
											<td align=left><input name="checkall" type="checkbox"
												onclick="javascript:CheckAll()"></td>

											<td width="10%"><font size="2">번호</font></td>
											<td width="15%"><font size="2">사진</font></td>
											<td width="45%"><font size="2">상품명</font></td>
											<td width="10%"><font size="2">국가</font></td>
											<td width="10%"><font size="2">지역</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>

										<s:iterator value="bhlist" status="stat">
											<tr align="center">
												<td align="left">
													<input type="checkBox"	class="checkbox" id="del_id" name="deleteCheck"	value="<s:property value='no'/>" onclick="chk(this.checked)">
												</td>
												<td><s:property value="no" /></td>
												<td>
													<div id="image">
														<s:if test="image1 != null">
															<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
														</s:if> 
														<s:else>
															<img src="/TMT/images/noimage.jpg">
														</s:else>
													</div>
												</td>
												<td><s:property value="name" /></td>
												<td><s:property value="country" /></td>
												<td><s:property value="region" /></td>
												<td><s:property value="price" /></td>
												<s:hidden name="seq_no" value="%{seq_no}"/>
											</tr>
										</s:iterator>
										<s:if test="bhlist.size()<=0">
											<tr align="center">
												<td colspan="7"><br> <img
													src="./images/wishlist_empty.jpg" width="40" height="40"><br>
												<br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</td>
											</tr>
										</s:if>

									</table>


									<table class="table" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="2" bgcolor="#FFDDDD"></td>
										</tr>
									</table> <s:if test="bhlist.size()>0">
										<input type="submit" name="submit" value="선택삭제">
									</s:if> <br>
						</form>

						<tr align="center">
							<td colspan="7"><s:property value="pagingHtml"
									escape="false" /></td>
						</tr>

					</table>
				</div>

				<div>
					<h4>TOUR</h4>
					<br> tour&nbsp;
					<s:property value="totalCount2" />
					개의 상품
					<table class="table" align="center">
						<form action="DeleteBasket.action" name="frm2" method="post"
							onsubmit="return check()">
							<input type="hidden" name="id"
								value="<s:property value="%{session.session_id}"/>" />
							<tr>
								<td colspan=2>
									<p align="center">
										<input type="hidden" name="order" value="basket">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr height=26 bgcolor="#FFDDDD">
											<td align=left><input name="checkall2" type="checkbox"
												onclick="javascript:CheckAll2()"></td>

											<td width="10%"><font size="2">번호</font></td>
											<td width="15%"><font size="2">사진</font></td>
											<td width="45%"><font size="2">상품명</font></td>
											<td width="10%"><font size="2">국가</font></td>
											<td width="10%"><font size="2">지역</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>
										<s:iterator value="btlist" status="stat">
											<tr>
												<td align="left"><input type="checkBox"
													class="checkbox" id="del_id2" name="deleteCheck2"
													value="<s:property value="no"/>"
													onclick="chk2(this.checked)"></td>
												<td><s:property value="no" /></td>
												<td>
													<div id="image">
														<s:if test="image1 != null">
															<img src="/TMT/upload/tour/<s:property value="%{image1}" />">
														</s:if> 
														<s:else>
															<img src="/TMT/images/noimage.jpg" width="70px" height="70px">
														</s:else>
													</div>
												</td>
												<td><s:property value="name" /></td>
												<td><s:property value="country" /></td>
												<td><s:property value="region" /></td>
												<td><s:property value="price" /></td>
												<s:hidden name="seq_no" value="%{seq_no}"/>
											</tr>
										</s:iterator>
										<s:if test="btlist.size()<=0">
											<tr align="center">
												<td colspan="7"><br> <img
													src="./images/wishlist_empty.jpg" width="40" height="40"><br>
												<br>위시리스트에 담긴 상품이 없습니다.<br>TMT와 즐거운 여행을 계획해보세요.</td>
											</tr>
										</s:if>

									</table>


									<table class="table" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="2" bgcolor="#FFDDDD"></td>
										</tr>
									</table> <s:if test="btlist.size()>0">
										<input type="submit" name="submit" value="선택삭제">
										
									</s:if> <br>
						</form>
						<tr align="center">
							<td colspan="7"><s:property value="pagingHtml2"
									escape="false" /></td>
						</tr>

					</table>
				</div>
			</div>
		</div>
	</main>


</body>
</html>