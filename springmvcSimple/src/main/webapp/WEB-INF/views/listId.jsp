<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Fixed Deposit list</title>
<style type="text/css">
.border {
	border-width: 1px;
	border-style: solid;
	border-collapse: collapse;
}

.td,.th {
	border: 1px solid;
	font-family: 'arial';
	font-size: 12px;
}

.a {
	font-family: 'arial';
	font-size: 12px;
}
</style>
</head>
<body>
	<form name="idList" method="POST"
		action="${pageContext.request.contextPath}/show}">
		<table align="left" style="padding-left: 300px;">
			<tr>
				<td
					style="font-family: 'arial'; font-size: 16px; font-weight: bold;">Fixed
					deposit list</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>
					<table class="border" cellpadding="10">
						<tr bgcolor="#99CCFF">
						  <th class="th">ID</th>
						</tr>
						<c:forEach items="${idList}" var="id">
							<tr>
								<td class="td"><a href="${pageContext.request.contextPath}/show/${id}"><c:out value="${id}" /></a></td>
							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>