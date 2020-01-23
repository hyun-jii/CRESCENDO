<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

  <title>Helpcenter.jsp</title>
  <meta name="description" content="">
  <meta name="author" content="">
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
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
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
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <!-- help 센터 css 경로 -->
  <!-- <link rel="stylesheet" href="css/helpcenter.css" /> -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://kit.fontawesome.com/b7c292b54b.js"
 crossorigin="anonymous"></script>

 
 <!-- 반응형 테이블 -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
 <!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
<!-- Page level plugin CSS-->
  
<!-- 데이터 테이블 정렬 스크립트 -->
<script type="text/javascript">
	$(document).ready(function() 
	{
		$("#dataTable").DataTable
		({
			  order: [[0, "desc"]], // asc 또는 desc
			  ordering: true,
			  serverSide: false
		});	
	});
</script>  

  <!-- Page level plugin CSS-->
<style>
.collapse-item p{
	color: gray;
	font-weight: bold;
} 

.rewardBtn {
	width: auto;
	height: auto;
	background-color: #F39C12;
	border: #F39C12;
	font-size: 15px;
}

.rewardBtn:hover {
	background-color: #8E44AD;
	cursor: pointer;
}
tbody tr:hover{
	background: #f8f9fc;
}
</style>
  
<script>
	function w3_open() {
	  document.getElementById("mySidebar").style.display = "block";
	}
	
	function w3_close() {
	  document.getElementById("mySidebar").style.display = "none";
	}
</script>

<script type="text/javascript">
/* 문의하기 클릭 시 로그인 여부 알림창 ajax 처리 */
$(function()
{
	var proNum = $("#proNum").val();
	
	$("#helpEmail").click(function()
	{
			$.ajax({
			type : "POST",
			url : "<%=cp%>/clickhelp.action",
			data : {"userEmail" : $("#userEmail").val()},
			success: function(data)
			{
				if(data > 0)
				{
					$(location).attr("href","<%=cp%>/helpFaq.action");
				}
				else
				{
					Swal.fire({
						  icon: 'error',
						  title: '로그인',
						  text: '로그인이 필요한 서비스입니다!',
						  footer:' <a href="loginform.action">로그인</a>,<a href ="signup.action">회원가입</a>'
						})
						
				}
			}
					
		});
	});
});
	   

</script>

</head>

<body id="page-top">

 <jsp:include page="top.jsp"/>  
    
    
    <!-- ===== help 센터 페이지 start ===== -->
    
    
	<!-- Begin Page Content -->
	<div class="container-fluid" style="width: 60%; margin-bottom: 50px; margin-top: 50px;">

		<!-- Page Heading -->
		<h3 class="h3 mb-2 text-gray-800" style="margin-top: 50px; font-size: 25px; text-align: center; color: black; font-weight: bold;"><i class="fas fa-search" style="color: #ffc425;"></i>&nbsp;Help 센터</h3>
		<br>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<p class="m-0 text-gray-800" style="font-size: 20px; color: gray;">FAQ</p>
			<p class="m-0 text-gray-800" style="color: gray; font-size: 15px;">크레센도 이용을 위해 자주 묻는 질문들에 대해 안내해 드립니다.</p>
			<div style="margin-top: 15px; margin-bottom: 15px;">
				<!-- 로그인이 안 됐을 때, 로그인할 수 있도록 하는 부분 
				<c:if test="${sessionScope.user.userEmail == null}">
					<a class="btn6" role="button" href="faqemail.action" style="vertical-align: top; background-color: #ffc425;
		   				color: white; font-weight: bold; width: 120px; margin-top: 10px; font-size: 15px; padding: 5px; border-radius: 3px;">문의하기</a>
		   		</c:if>-->
		   		<!--  로그인을 했을 때 문의하기 페이지로 이동하는 부분  
		   		<c:if test="${sessionScope.user.userEmail != null}">
					<a class="btn6" role="button" id="helpEmail" href="helpFaq.action?uerEmail=${sessionScope.user.userEmail }"
					style="vertical-align: top; background-color: #ffc425;
					color: white; font-weight: bold; width: 120px; margin-top: 10px; font-size: 15px; padding: 5px; border-radius: 3px;">문의하기</a>
			   	</c:if>-->
			   	
			   	<input type="hidden" id="userEmail" name="userEmail" value="${sessionScope.user.userEmail }">
			   	<a class="btn6" role="button" id="helpEmail" style="vertical-align: top; background-color: #ffc425; 
					color: white; font-weight: bold; width: 120px; margin-top: 10px; font-size: 15px; padding: 5px; border-radius: 3px;">문의하기</a>
			   	
			</div>
		</div>

		<div class="card-body">
			<div class="table-responsive" style="overflow:hidden">
				<div id="dataTable_wrapper"
					class="dataTables_wrapper dt-bootstrap4">

					<div class="row">
						<div class="col-sm-12">
							<table class="table table-bordered dataTable" id="dataTable"
								style="font-size: 15px;" cellspacing="0" role="grid"
								aria-describedby="dataTable_info">
								<thead>
								<tr role="row">
										<th class="sorting_asc" tabindex="0"
								aria-controls="dataTable" rowspan="1" colspan="1"
								aria-sort="ascending"
								aria-label="Name: activate to sort column descending"
								style="width: 10px;">글번호</th>
							<th class="sorting" tabindex="0" aria-controls="dataTable"
								rowspan="1" colspan="1"
								aria-label="Office: activate to sort column ascending"
								style="width: 80px;">제목</th>
							<th class="sorting" tabindex="0" aria-controls="dataTable"
								rowspan="1" colspan="1"
								aria-label="Age: activate to sort column ascending"
								style="width: 38px;">작성일</th>
							<th class="sorting" tabindex="0" aria-controls="dataTable"
								rowspan="1" colspan="1"
								aria-label="Start date: activate to sort column ascending"
								style="width: 31px;">작성자</th>
								</tr>
								</thead>
				
								
								 <tbody>
									<c:forEach var="help" items="${lists }" varStatus="status">
										<tr role="row" class="odd">
											<td class="sorting_1">${help.hNum }</td>
											<td><a href="helpcontent.action?hNum=${help.hNum }" style="text-decoration:none; color: gray;">${help.hTitle }</a></td>
											<td>${help.hDate}</td>
											<td>관리자</td>
										 </tr>
									</c:forEach>
								</tbody>
							</table> 
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- /.container-fluid -->
	<br><br><br><br><br><br><br>
	<!-- 공지사항 푸터 -->
	 <jsp:include page="footer.jsp"/> 
	
<!-- ===== help 센터 페이지 end ===== -->  
   
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
  
  <!-- ==== 게시판 스크립트 ==== -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	  

	<!-- Bootstrap core JavaScript-->
	<!-- <script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 -->
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<!-- <script src="js/sb-admin-2.min.js"></script>
 -->
	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Page level custom scripts -->
	<!-- <script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
 -->
	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
</body>

</html>