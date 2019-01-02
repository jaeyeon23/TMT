<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" media="screen" href="css/admin/view1.css" />
<link rel="stylesheet" media="all" href="css/admin/view2.css" />
<link rel="stylesheet" media="screen" href="css/admin/view3.css" />
</head>
<body>
<div class="resp-container">
	<div class="offer-container">
				<!-- 리스트 출력 -->
		<div align="center"><table style="width:70%">
			<tr>
				<th>
					번호
				</th>
				<th>
					아이디
				</th>
				<th>
					이름
				</th>
				<th>
					여권번호
				</th>
				<th>
					이메일
				</th>
				<th>
					수정/삭제
				</th>
			</tr>
			
			
			<s:iterator value="list" status="stat">
			<tr>
				<td>
					<s:property value="no"/>
				</td>	
				<td>
					<s:property value="id"/>
				</td>
				<td>
					<s:property value="name"/>
				</td>
				<td>
					<s:property value="passport"/>
				</td>
				<td>
					<s:property value="email"/>
				</td>
				<td>
					<button type="button" class="btn btn-default btn-sm" 
					onclick="javascript:location.href='AdminMemberModifyForm.action?no=<s:property value="no"/>&currentPage=<s:property value="currentPage"/>'">
 							수정
					</button>
					<button type="button" class="btn btn-default btn-sm" 
					onclick="javascript:location.href='AdminMemberDelete.action?no=<s:property value="no"/>&currentPage=<s:property value="currentPage"/>'">
 							삭제
					</button>
				</td>
			</tr>
			</s:iterator>
		</table>
		</div>
		<div align="center"><s:property value="pagingHtml" escape="false"/></div>
	</div>
</div>
</body>
</html>