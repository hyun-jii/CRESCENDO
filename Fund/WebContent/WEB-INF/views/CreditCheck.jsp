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
<!-- ■내가 스타일 적용 부분■--------------------------------------------------------------------------- -->
<link rel="stylesheet" href="css/creditcheck.css">
<!-- ---------------------------------------------------------------------------■내가 스타일 적용 부분■ -->

</head>
<body>
	
	<jsp:include page="top.jsp"/>
	<div class="black">
	

		<div class="creditTitle">
			<h1>결제 정보 확인</h1>
			<hr>
		</div>

		<div id="middle_Title">
			<h3>선택하신 리워드 주문이 완료되었습니다.</h3>
		</div>

		<div class="allCredit">

			<table>
				<tr>
					<td id="right">선택한 리워드 :</td>
					<td><span>${confirmPay.reName }</span></td>
				</tr>
				<tr>
					<td id="right">기타 문의사항 :</td>
					<td><span>${confirmPay.fInquire }</span></td>
				</tr>
				<tr>
					<td id="right">예상 배송일 :</td>
					<td><span>${confirmPay.maPredict }</span></td>
				</tr>
				<tr>
					<td id="right">결제금액 :</td>
					<td><span>${confirmPay.poMoney }</span>원</td>
				</tr>
				<tr>
					<td id="right">닉네임 :</td>
					<td><span>${confirmPay.userName }</span></td>
				</tr>
				<tr>
					<td id="right">이름 :</td>
					<td><span>${confirmPay.fName }</span></td>
				</tr>
				<tr>
					<td id="right">전화번호 :</td>
					<td><span>${confirmPay.fTel }</span></td>
				</tr>
				<tr>
					<td id="right">주소 :</td>
					<td><span>${confirmPay.fAddr }</span></td>
				</tr>
			</table>
			<!-- <div class="left">
				<p>선택한리워드 :</p>
				<p>기타 문의사항 :</p>
				<p>예상 배송일 :</p>
				<p>결제금액 :</p>
				<p>닉네임 :</p>
				<p>이름 :</p>
				<p>전화번호 :</p>
				<p>주소 :</p>		
			</div>
			
			<div class="right">
				<p>[A.곰돌이 잠옷 SET] / 배송비 포함</p>
				<p>네이비 / S , XL사이즈는 없나요?</p>
				<p>2020년 01월 초(1일 ~ 10일)</p>
				<p>15,000</p>
				<p>에이비</p>
				<p>오지은</p>
				<p>010-1111-1111</p>
				<p>경기도 어쩌구저쩌구</p>
			</div> -->
		</div>
		<div id="crescendoMain">
			<button class="crescendoMain" onclick="javascript:location.href='<%=cp%>/main.action'">
				<a>확인</a>
			</button>
		</div>


	</div>
	<!--  ---------------------------------------------------------------- ■■ 내가 한것 ■■ -->

</body>
</html>