<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약내역</title>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>
$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#checkall_hotel").click(function(){
        //클릭되었으면
        if($("#checkall_hotel").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[id=checkbox_hotel]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[id=checkbox_hotel]").prop("checked",false);
        }
    })
    
    $("#checkall_tour").click(function(){
        //클릭되었으면
        if($("#checkall_tour").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[id=checkbox_tour]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[id=checkbox_tour]").prop("checked",false);
        }
    })
    
    $("#checkall_air").click(function(){
        //클릭되었으면
        if($("#checkall_air").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[id=checkbox_air]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[id=checkbox_air]").prop("checked",false);
        }
    })
})

</script>
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
						<form action="DeleteOrder.action" method="get">
							<s:hidden name="id" value="%{session.session_id}"/>
							<s:hidden name="type" value="0"/>
							<tr>
								<td colspan=2>
									<p align="center">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr align="center" height=26 bgcolor="#EEDAFF">
											<td align=left><input id="checkall_hotel" type="checkbox"></td>
											<td width="15%"><font size="2">사진</font></td>
											<td width="45%"><font size="2">상품명</font></td>
											<td width="10%"><font size="2">국가</font></td>
											<td width="10%"><font size="2">지역</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>
										<s:iterator value="ohlist" status="stat">
											<tr align="center">
												<td align="left">
													<input type="checkBox" id="checkbox_hotel" name="del" value="${seq_no }">
												</td>
												<td>
													<s:if test="image1 != null">
														<img src="/TMT/images/<s:property value='%{image1}' />">
													</s:if>
													<s:else>
														<img src="/TMT/images/noimage.jpg">
													</s:else>
												</td>
												<td><a href="OrderView.action?seq_no=<s:property value='seq_no'/>&id=<s:property value='%{session.session_id}'/>&type=0"/><s:property value="name"/></a></td>
												<td><s:property value="country" /></td>
												<td><s:property value="region" /></td>
												<td><s:property value="price" /></td>
											</tr>
										</s:iterator>
										<s:if test="ohlist.size()<=0">
											<tr align="center">
												<td colspan="6"><br> <img alt='empty' class='icon1'	src='https://d2yoing0loi5gh.cloudfront.net/assets/kitty/empty/ic_reservation@2x-8ab77f8ad8f413a06e719279615decc80fecd3deea6ed9c67ad032d95a8069a0.png'
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
									</table>
									<s:if test="ohlist.size() > 0">
										<input type="submit" value="선택삭제">
									</s:if> <br>
						</form>

						<tr align="center">
							<td colspan="7"><s:property value="pagingHtml" escape="false" /></td>
						</tr>

					</table>
				</div>

				<div>
					<h4>TOUR</h4>
					<br> tour&nbsp;
					<s:property value="totalCount2" />
					개의 상품
					<table class="table" align="center">
						<form action="DeleteOrder.action" method="get">
							<s:hidden name="id" value="%{session.session_id}"/>
							<s:hidden name="type" value="1"/>
							<tr>
								<td colspan=2>
									<p align="center">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr height=26 bgcolor="#EEDAFF">
											<td align=left><input id="checkall_tour" type="checkbox"></td>
											<td width="15%"><font size="2">사진</font></td>
											<td width="45%"><font size="2">상품명</font></td>
											<td width="10%"><font size="2">국가</font></td>
											<td width="10%"><font size="2">지역</font></td>
											<td width="10%"><font size="2">가격</font></td>

										</tr>
										<s:iterator value="otlist" status="stat">
											<tr>
												<td align="left">
													<input type="checkBox" id="checkbox_tour" name="del" value="${seq_no }">
												</td>
												<td>
													<s:if test="image1 != null">
														<img src="/TMT/images/<s:property value='%{image1}' />">
													</s:if>
													<s:else>
														<img src="/TMT/images/noimage.jpg" width="20" height="20">
													</s:else>
												</td>
												<td><a href="OrderView.action?seq_no=<s:property value='seq_no'/>&id=<s:property value='%{session.session_id}'/>&type=1"/><s:property value="name"/></a></td>
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
									</table>
									<s:if test="otlist.size() > 0">
										<input type="submit" value="선택삭제">
									</s:if> <br>
						</form>
						<tr align="center">
							<td colspan="7"><s:property value="pagingHtml2"	escape="false" /></td>
						</tr>

					</table>
				</div>

				<div>
					<h4>AIR</h4>
					<br> air&nbsp;
					<s:property value="totalCount3" />
					개의 상품
					<table class="table" align="center">
						<form action="DeleteOrder.action" method="get">
							<s:hidden name="id" value="%{session.session_id}"/>
							<s:hidden name="type" value="2"/>
							<tr>
								<td colspan=2>
									<p align="center">
									<table class="table" cellpadding="0" cellspacing="0">
										<tr height=26 bgcolor="#EEDAFF">
											<td align=left><input id="checkall_air" type="checkbox"></td>
											<td width="15%"><font size="2">사진</font></td>
											<td width="30%"><font size="2">출발지→도착지</font></td>
											<td width="15%"><font size="2">항공사</font></td>
											<td width="10%"><font size="2">가격</font></td>
											<td width="15%"><font size="2">출발일</font></td>
											<td width="15%"><font size="2">도착일</font></td>

										</tr>
										<s:iterator value="oalist" status="stat">
											<tr>
												<td align="left">
													<input type="checkBox" id="checkbox_air" name="del" value="${seq_no }">
												</td>
												<td>
													<s:if test="image1 != null">
														<span class="ico_airline"><img src="/TMT/upload/air/<s:property value='image1'/>"></span>
													</s:if>
													<s:else>
														<img src="/TMT/images/noimage.jpg">
													</s:else>
												</td>
												<td>
													<a href="OrderView.action?seq_no=<s:property value='seq_no'/>&id=<s:property value='%{session.session_id}'/>&type=2"/>
														<s:property value="arv"/> → <s:property value="dep"/>
													</a>
												</td>
												<td><s:property value="air_company" /></td>
												<td><s:property value="price" /></td>
												<td><s:date name="ad" format="MM-dd HH:mm"/></td>
												<td><s:date name="dd" format="MM-dd HH:mm"/></td>
											</tr>
										</s:iterator>
										<s:if test="oalist.size()<=0">
											<tr align="center">
												<td colspan="4"><br> <img alt='empty'
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
									</table> 
									<s:if test="oalist.size() > 0">
										<input type="submit" value="선택삭제">
									</s:if> <br>
						</form>
						<tr align="center">
							<td colspan="4"><s:property value="pagingHtml3"
									escape="false" /></td>
						</tr>

					</table>
				</div>


			</div>
		</div>
	</main>


</body>
</html>