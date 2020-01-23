<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
  <!-- =====  BASIC PAGE NEEDS  ===== -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
  

  <title>마이페이지 > 받은쪽지 > 답장보내기</title>
  
  <!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<%--   <!-- =====  SEO MATE  ===== -->
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
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="viewport" content="width=device-width">
  <!-- =====  CSS  ===== -->
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> --%>
<%--   <link rel="stylesheet" type="text/css" href="<%=cp %>/css/mypage.css"> --%>

  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>

  <style>
 label{font-size: 15px; font-weight: bold;}

 </style>

 
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
			
			
			
			<!-- Begin Page Content -->
				<div class="container-fluid" style="border:1px solid #eeeeee; padding-left:300px; height:150vh;">
			
				<div class="noticeHead" style="margin-left: 100px; color: black; font-weight: bold;">
					<br><p><h3>답장보내기</h3></p>
				</div>
			
	  
			
											
				<div class="notice_container" style="width: 90%; margin-left: 100px; margin-top: 50px;">
				
				<!-- 보낸이가 관리자일 경우 -->
				<c:if test="${data.leSender == 0 }">
					<form action="insertletter2.action" method="get" id="insertSletter" role="form">
						<%-- <input type="hidden" value="${data.leReceiver }" name="leReceiver" id="leReceiver">
						<input type="hidden" value="${data.leNum }" name="leNum" id="leNum"> --%>
						<label for="noticeTitle">제목 입력</label><br> 
							<input type="text" id="leTitle" name="leTitle" placeholder="제목을 입력하세요"><br><br>
							<label for="noticeContent">내용 입력</label><br>
							<textarea id="leContent" name="leContent" placeholder="내용을 입력하세요." style="height: 500px"></textarea><br><br>
							
							
						<div class="noticeBtn" style="float: left;">
							<input type="button" class="btn btn-warning" value="취소하기" class="resetNotice"
							onclick="if(confirm('답장 작성을 취소하시겠습니까?'))location.href='rletter.action'"> 
							<input type="submit" class="btn btn-warning" value="등록하기">
				
						</div>
					</form>
					</c:if>
					<!-- 보낸이가 사용자일 경우 -->
					<c:if test="${data.leSender != 0 }">
					<form action="insertletter.action" method="get" id="insertSletter" role="form">
						<%-- <input type="hidden" value="${data.leSender}" name="leSender" id="leSender">
						<input type="hidden" value="${data.leReceiver }" name="leReceiver" id="leReceiver">
						<input type="hidden" value="${data.leNum }" name="leNum" id="leNum"> --%>
						<label for="noticeTitle">제목 입력</label><br> 
							<input type="text" id="leTitle" name="leTitle" placeholder="제목을 입력하세요"><br><br>
							<label for="noticeContent">내용 입력</label><br>
							<textarea id="leContent" name="leContent" placeholder="내용을 입력하세요." style="height: 500px"></textarea><br><br>
							
							
						<div class="noticeBtn" style="float: left;">
							<input type="button" class="btn btn-warning" value="취소하기" class="resetNotice"
							onclick="if(confirm('답장 작성을 취소하시겠습니까?'))location.href='rletter.action'"> 
							<input type="submit" class="btn btn-warning" value="등록하기">
				
						</div>
					</form>
					</c:if>
					
					
				</div>
				 <br>
			     </div>
			   </div><!-- 마이페이지끝 -->
			 </div><!-- modu 끝 -->
	</div><!-- row 끝 -->
</div><!-- col-md-12 끝 -->


		
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>