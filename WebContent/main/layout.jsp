<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>TMT :: Thank you My Tour</title>
</head>
<body>
	<center>
		<table width="1550">
			<form name="fr">
				<input type="hidden" name="sess_id" value="<s:property value='%{#session.id}'/>"/>
			</form>
			<tr>
				<td height="150" width="1550">
					<tiles:insertAttribute name="header"/>
				</td>
			</tr>
			<tr>
				<td width="1550" valign="middle" colspan="3">
					<tiles:insertAttribute name="body" />
				</td>
			</tr>
			<tr>
				<td height="110" width="1550" valign="bottom" align="center" colspan="3">
					<tiles:insertAttribute name="footer" />
				</td>
			</tr>
		</table>
	</center>
</body>
</html>