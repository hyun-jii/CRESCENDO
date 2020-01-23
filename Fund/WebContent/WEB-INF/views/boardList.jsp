<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	h2 {
		text-align: center;
	}
	table {
		width: 100%;
	}
	#outter {
		display: block;
		width: 60%;
		margin: auto;
	}
</style>

</head>
<body>


<h2>게시판</h2>
<div id="outter">
	<table border="1">
		<tr>
			<td>No.</td>
			<td width="50%">제목</td>
			<td>작성자</td>
			<td>등록일</td>
			<td>조회수</td>		
		</tr>
		<c:forEach items="${viewAll }" var="list">
			<tr>
				<td>seq번호 : ${list.seq }</td>
				<td><a href='detail.action?seq=${list.seq }'>제목 : ${list.title }</a></td>
				<td>작성자 : ${list.writer }</td>
				<td><fmt:formatDate value="${list.regdate }" pattern="yyyy.MM.dd"/> </td>
				<td>조회수 : ${list.cnt }</td>
			</tr>
		</c:forEach>
	</table>
		<input type="button" value="글쓰기" style="float: right;" onclick="location.href='swrite.action'">
</div>	
</body>
</html>