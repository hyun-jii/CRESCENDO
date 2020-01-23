<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<!-- =====  BASIC PAGE NEEDS  ===== -->
<meta charset="utf-8">

<title>마이페이지 > 후원자리스트</title>
<!-- =====  SEO MATE  ===== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="distribution" content="global">
<meta name="revisit-after" content="2 Days">
<meta name="robots" content="ALL">
<meta name="rating" content="8 YEARS">
<meta name="Language" content="en-us">
<meta name="GOOGLEBOT" content="NOARCHIVE">
<!-- =====  MOBILE SPECIFICATION  ===== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width">
<!-- =====  CSS  ===== -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/apple-touch-icon-114x114.png">
<script src="https://kit.fontawesome.com/b7c292b54b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/Main.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/mypage.css">
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<!-- 따로 css파일 적용한 부분 -->
<link rel="stylesheet" href="css/mypagefundlist.css">
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<script>
	function w3_open()
	{
		document.getElementById("mySidebar").style.display = "block";
	}

	function w3_close()
	{
		document.getElementById("mySidebar").style.display = "none";
	}
</script>
<style>
@media ( max-width : 768px) {
	.vmenu h4 a {
		font-size: 15px;
		font-weight: bold;
	}
}

@media ( max-width : 500px) {
	.vmenu h4 a {
		font-size: 5px;
		font-weight: bold;
	}
	
}
.prjTitles{color:#666; font-size: 15px; font-weight: normal;}
</style>
 <!-- ajax 처리를 위해  -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 쪽지보내기 모달 처리-->
 <script type="text/javascript">	
 
 $(function()
{
	$("#insertLetter").click(function()
	{
		
		var userEmail = $("#userEmail").val();
		
		$("#receiver").val(userEmail);
		
		$.ajax({
			url : "<%=cp%>/tosupporterletter.action?userEmail=" + userEmail,
			type : "POST",
			data : { 	"leTitle"   : $("#leTitle").val(),
						    "leContent" : $("#leContent").val()
			
			},
			success : function(data)
			{
				if(data > 0)
				{
					alert("쪽지보내기 완료");
				}
				else
				{
					alert("쪽지 보내기 실패");
				}
			}
			
		});
	});
});
 
 

 </script>

</head>

<body>

	<jsp:include page="top.jsp"></jsp:include>
 	
			<!-- 사이드 넣기 전에 꼭 넣어주어야할 3가지 -->
			<div class="col-md-12 col-sm-12 col-xs-12" style="margin:0 auto; margin-top:40px; width:100%;">
			<div class="row" style="margin:0 auto; max-width:1200px;">
			<div class="modu" style="width:1200px; margin:0 auto;">
			<!-- 마이페이지 사이드 넣기 -->
			<!-- MypageSide가 col-md-2 col-sm-4 col-xs-4 이것이기 때문에 -->
			<jsp:include page="MypageSide.jsp"></jsp:include>
			
					
					<div class="col-md-10 col-sm-8 col-xs-5" style="height: 100vh;">
						<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
						<!-- 마이페이지 찜하기 내용 큰 머리 부분  -->
						<div class="all_like">
							<div class="content">
								<div class="mypage_image">
								
									<div class="zzim">
										<i class="fas fa-user-circle"
											style="font-size: 100px; margin-top: 100px;"></i>
									</div>

									<!-- 이름 삽입해야 하는 곳 -->
									<div class="mypage_Fundlist">

										<p>${user.userName}</p>
									</div>
								</div>

								<div class="personSum">
									
									<!-- 선택한 프로젝트에따라 프로젝트 이름이 변경되어야 할 부분 -->
									<p class="per_list">
										<a href="<%=cp%>/projectdetail.action?proNum=${proNum}">
									 <span class="prjTitles">프로젝트명:</span>&nbsp;${prjTitle}
									</a>
									</p>
								</div>

								<!-- 총 후원자수 들어가야 함 -->
								<div class="per_num_div">
									<p>

									<span class="per_num">${datasize}</span>명이 이 프로젝트에 후원했습니다.

									</p>
								</div>

								<!-- 후원자 리스트 table -->
								<div>
									<table class="fund_list">
										<thead>
											<tr>
												<th>비고</th>
												<th>닉네임</th>
												<th>전화번호</th>
												<th>주소</th>
												<th>리워드선택</th>
												<th>결제금액</th>
												<th>기타문의사항</th>
											</tr>
										</thead>
										 <c:forEach var="supportList" items="${data}">
										<tbody>

 										   <tr>
 										   		<!-- 후원자 이메일 -->
 										   		<input type="hidden" id="userEmail" name="userEmail" value="${supportList.userEmail }">
 										   		
												<td><!--  쪽지모달 (후원자에게) -->
											    <a id="modal-95" role="button" href="#modal-container-95" data-toggle="modal">
										        	<i class="fas fa-envelope" style="font-size: 20px; color:#fa6462;"></i>
											    </a>
										        <!--  쪽지모달 (후원자에게) --></td>
												<td>${supportList.userName}</td>
												<td>${supportList.userTel}</td>
												<td>${supportList.userAddr}</td>
												<td>${supportList.reContent}</td>
												<td>${supportList.poMoney}</td>
												<td>${supportList.fInquire}</td>

										</tr>
									    </tbody>
									    </c:forEach>
									</table>
								</div>
								
							
							</div>
						</div>
					</div>
					<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
				</div>
			</div>
		</div>
		
		<!-- 답장모달폼 -->
			<div class="modal fade" id="modal-container-95" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel" style="margin-top: 100px;">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header" style="background-color: orange; color:#fff; font-size: 16px; font-weight: bold">
							<h5 class="modal-title" id="myModalLabel">
								<center>쪽지 보내기</center>
							</h5>
		 			 </div>
			
			<div class="modal-body" style="height: 320px;">
			            <br>
						
						<input type="text" id="receiver">
						
						<span style="font-weight: bold; font-size: 15px; color: black; margin-top:10px;">제목
							</span>
							 <input type="text" style="width: 65%; margin-left: 70px; font-size: 10px;"
							placeholder="제목을 입력해주세요" id="leTitle" name="leTitle" ><br><br>
						<span style="font-weight: bold; font-size: 15px; color: black; vertical-align: top;">내용</span>
						<textarea rows="5"
							style="width: 65%; margin-left: 70px; resize: none;"
							placeholder="내용을 입력해주세요." id="leContent" name="leContent"></textarea>
					
				        <div class="mid" style="width:15%; margin:0 auto; margin-top:20px;">
						<button class="btn btn-secondary" type="button" id="insertLetter"
							data-dismiss="modal"
							style="background-color: orange; color: white;" >쪽지 보내기</button>
					    </div>
					</div>
			</div>
			</div>
			</div>
			<!-- 모달끝 -->	
           



		<script src="js/jQuery_v3.1.1.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.magnific-popup.js"></script>
		<script src="js/jquery.firstVisitPopup.js"></script>
		<script src="js/custom.js"></script>
</body>

</html>