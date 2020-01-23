<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>네이버 로그인을 위한 페이지 test</h1>
	<br>
		<a href="nlogin.action">
			네이버 로그인하러 가기
		</a>
	<c:choose>
		<c:when test="${sessionId !=null}">
		<h2>네이버 아이디 로그인 성공 !!! </h2>
		<h3>'${sessionId }'님 환영합니다 ! </h3>
		<h3><a href="logout">로그아웃</a></h3>
		</c:when>
		
		<c:otherwise>
			<h2>네이버 로그인 테스트 실패 </h2>
		</c:otherwise>
	</c:choose>
	
</body>
</html>