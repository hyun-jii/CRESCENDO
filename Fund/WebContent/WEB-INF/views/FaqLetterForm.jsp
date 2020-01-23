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
  
  
  <!-- Page level plugin CSS-->
<style>
.helpSend
{
	background-color: #ffc425;
	color: white;
	float: right;
	margin-right: 20px;
	margin-bottom: 10px;
}

.helpCancel
{
	background-color: gray;
	color: white;
	float: right;
	margin-bottom: 10px;
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

<!-- 빈칸으로 보내기를 클릭했을 경우 -->
<script type="text/javascript">
	
	$(document).ready(function() 
	{	
		$(".helpSend").click(function() {
			if($("#leTitle").val() == "")
			{
				alert("제목을 입력해 주세요");
				$("#leTitle").focus();
				return false;
			}
			if($("#leContent").val() == "")
			{
				alert("내용을 입력해 주세요");
				$("leContent").focus();
				return false;
			}
		});
	});
	
	$(document).ready(function()
	{
		$(".helpCancel").click(function() {
			$(location).attr("href","helpmain.action");
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
		<h3 class="h3 mb-2 text-gray-800" style="margin-top: 50px; text-align: center; font-size: 25px; font-weight: bold; color: black;"><i class="fas fa-search" style="color: #ffc425;"></i>&nbsp;Help 센터</h3>
		<br>
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<p class="m-0 text-gray-800" style="font-size: 20px; color: gray;">관리자와 1:1 문의하기</p>
			<hr style="border: 1px solid #CACACA;">
		</div>

		<div class="card-body">
			<div class="table-responsive" style="overflow:hidden">
				<div id="dataTable_wrapper"
					class="dataTables_wrapper dt-bootstrap4">

					<div class="row">
						<div class="col-sm-12">
						<!-- 쪽지폼 -->
						<form action="helpsendemail.action" method="post" role="form">
							<table class="table dataTable" id="dataTable"
								style="border: none;" cellspacing="0" role="grid"
								aria-describedby="dataTable_info">
								<!-- 쪽지 제목 -->
								<tr>
									<th>
										<input type="text" id="leTitle" name="leTitle" style="border: 1px solid gray; border-radius: 3px;" placeholder="제목을 입력하세요">
									</th>
								</tr>
								<!-- 쪽지내용 -->
								<tr>
									<td>
										<textarea rows="5" id="leContent" name="leContent" style="resize:none; width: 100%; font-size: 13px; border-radius: 3px; height: 450px; border: 1px solid gray;" placeholder="문의사항을 입력해주세요"></textarea>
									</td>
								</tr>
							</table> 
							<div style="margin-bottom: 20px;">
								<button class="btn helpCancel" type="button">
									취소
								</button>
								<button class="btn helpSend" type="submit" id="sendMail">
								    보내기
								</button>
							</div>
						</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- /.container-fluid -->
	
<!-- ===== help 센터 페이지 end ===== -->  
   
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
  
  <!-- ==== 게시판 스크립트 ==== -->
    <!-- Scroll to Top Button -->
	<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
	</a>
  
  	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>

	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
</body>

</html>