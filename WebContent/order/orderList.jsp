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
<meta charset="UTF-8">
<title>예약내역</title>

</head>
<body>

	<main class='order-list'>
	<div class='order-container'>
		<div class='order-header-container'>
			<div class='order-title-wrapper'>

				<div class='header-title'>
					<h2>
						<center>
							<s:property value="%{session.session_id}" />
							의 예약내역
						</center>
					</h2>

				</div>
				<br>
			</div>
			<div class='order-header-divider'></div>



			<div class='order-cards-container'>

				<div>
					<h4>HOTEL</h4>
					<br> hotel&nbsp;
					<s:property value="totalCount" />
					개의 상품
					<table class="table" align="center">
						<form action="ViewOrder.action" name="vo" method="post">
							<input type="hidden" name="id"
								value="<s:property value="%{session.session_id}"/>" />
							<tr>
								<td colspan=2>
									<p align="center">
										<input type="hidden" name="order" value="order">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr align="center" height=26 bgcolor="#EEDAFF">

											<td width="15%"><font size="2">사진</font></td>
											<td width="45%"><font size="2">상품명</font></td>
											<td width="10%"><font size="2">국가</font></td>
											<td width="10%"><font size="2">지역</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>

										<s:iterator value="ohlist" status="stat">
											<tr align="center">

												<td><s:property value="image1" /></td>
												<td><input type="submit"
													value="<s:property value="name"/>" /></td>
												<td><s:property value="country" /></td>
												<td><s:property value="region" /></td>
												<td><s:property value="price" /></td>
											</tr>
										</s:iterator>
										<s:if test="ohlist.size()<=0">
											<tr align="center">
												<td colspan="6"><br> <img alt='empty'
													class='icon1'
													src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/empty/ic_reservation@2x-8ab77f8ad8f413a06e719279615decc80fecd3deea6ed9c67ad032d95a8069a0.png'
													width='58px'><br> 아직 준비중인 여행이 없습니다.<br />TMT와 함께
													즐거운 여행을 떠나보세요.<br>
												<br></td>
											</tr>
										</s:if>

									</table>


									<table class="table" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="2" bgcolor="#EEDAFF"></td>
										</tr>
									</table> <br>
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
						<form action="ViewOrder.action" name="vo2" method="post">
							<input type="hidden" name="id"
								value="<s:property value="%{session.session_id}"/>" />
							<tr>
								<td colspan=2>
									<p align="center">
										<input type="hidden" name="order" value="basket">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr height=26 bgcolor="#EEDAFF">

											<td width="15%"><font size="2">사진</font></td>
											<td width="45%"><font size="2">상품명</font></td>
											<td width="10%"><font size="2">국가</font></td>
											<td width="10%"><font size="2">지역</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>
										<s:iterator value="otlist" status="stat">
											<tr>

												<td><s:property value="image1" /></td>
												<td><input type="submit"
													value="<s:property value="name"/>" /></td>
												<td><s:property value="country" /></td>
												<td><s:property value="region" /></td>
												<td><s:property value="price" /></td>
											</tr>
										</s:iterator>
										<s:if test="otlist.size()<=0">
											<tr align="center">
												<td colspan="6"><br> <img alt='empty'
													class='icon1'
													src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/empty/ic_reservation@2x-8ab77f8ad8f413a06e719279615decc80fecd3deea6ed9c67ad032d95a8069a0.png'
													width='58px'><br> 아직 준비중인 여행이 없습니다.<br />TMT와 함께
													즐거운 여행을 떠나보세요.<br>
												<br></td>
											</tr>
										</s:if>

									</table>


									<table class="table" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="2" bgcolor="#EEDAFF"></td>
										</tr>
									</table> <br>
						</form>
						<tr align="center">
							<td colspan="7"><s:property value="pagingHtml2"
									escape="false" /></td>
						</tr>

					</table>
				</div>

				<div>
					<h4>AIR</h4>
					<br> air&nbsp;
					<s:property value="totalCount2" />
					개의 상품
					<table class="table" align="center">
						<form action="ViewOrder.action" name="vo3" method="post">
							<input type="hidden" name="id"
								value="<s:property value="%{session.session_id}"/>" />
							<tr>
								<td colspan=2>
									<p align="center">
										<input type="hidden" name="order" value="basket">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr height=26 bgcolor="#EEDAFF">

											<td width="15%"><font size="2">사진</font></td>
											<td width="30%"><font size="2">출발지→도착지</font></td>
											<td width="10%"><font size="2">항공사</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>
										<s:iterator value="oalist" status="stat">
											<tr>

												<td><s:property value="image1" /></td>
												<td><input type="submit"
													value="<s:property value="arv"/>→<s:property value="dep"/>" />

												</td>
												<td><s:property value="air_company" /></td>
												<td><s:property value="price" /></td>
											</tr>
										</s:iterator>
										<s:if test="oalist.size()<=0">
											<tr align="center">
												<td colspan="6"><br> <img alt='empty'
													class='icon1'
													src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/empty/ic_reservation@2x-8ab77f8ad8f413a06e719279615decc80fecd3deea6ed9c67ad032d95a8069a0.png'
													width='58px'><br> 아직 준비중인 여행이 없습니다.<br />TMT와 함께
													즐거운 여행을 떠나보세요.<br>
												<br></td>
											</tr>
										</s:if>

									</table>


									<table class="table" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="2" bgcolor="#EEDAFF"></td>
										</tr>
									</table> <br>
						</form>
						<tr align="center">
							<td colspan="7"><s:property value="pagingHtml3"
									escape="false" /></td>
						</tr>

					</table>
				</div>


			</div>
		</div>
	</main>


</body>
</html>