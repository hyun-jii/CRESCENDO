<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���̹� �α����� ���� ������ test</h1>
	<br>
		<a href="nlogin.action">
			���̹� �α����Ϸ� ����
		</a>
	<c:choose>
		<c:when test="${sessionId !=null}">
		<h2>���̹� ���̵� �α��� ���� !!! </h2>
		<h3>'${sessionId }'�� ȯ���մϴ� ! </h3>
		<h3><a href="logout">�α׾ƿ�</a></h3>
		</c:when>
		
		<c:otherwise>
			<h2>���̹� �α��� �׽�Ʈ ���� </h2>
		</c:otherwise>
	</c:choose>
	
</body>
</html>