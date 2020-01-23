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

  <title>BoardContent.jsp</title>
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
.btnBoard
{
	background-color: #ffc425;
	color: white;
	float: right;
	margin-bottom: 10px;
	border: 0px;
	width: 100px;
	font-size: 15px;
	font-weight: bold;
	height: 30px;
	border-radius: 3px;
}
.topTitle
{
	font-weight: bold;
	text-align: center;
	margin-top: 30px;
}
</style>

<!-- 공지사항 목록으로 되돌아가는 스크립트 -->
<script type="text/javascript">
	$(document).ready(function() 
	{
		$(".btnBoard").click(function() 
		{
			$(location).attr("href", "noticemain.action");
		});
	});
</script>

<script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
</script>

</head>

<body id="page-top">

 <jsp:include page="top.jsp"/>    
    
    
    <!-- ===== 공지사항 내용 start ===== -->
    
    
	<!-- Begin Page Content -->
	<div class="container-fluid" style="width: 60%; margin-bottom: 50px; margin-top: 50px; background-color: #EEE;">

		<!-- Page Heading -->
		<h3 class="h3 mb-2 text-gray-800" style="margin-top: 50px; font-size: 25px; text-align: center; color: black; font-weight: bold;">공 지 사 항</h3>
		<br>
		<!-- DataTales Example -->


		<div class="card-body">
			<div class="table-responsive" style="overflow:hidden">
				<div id="dataTable_wrapper"
					class="dataTables_wrapper dt-bootstrap4">

					<div class="row">
						<div class="col-sm-12">
							<table class="table dataTable" id="dataTable"
								style="border: none; background-color: white;" cellspacing="0" role="grid"
								aria-describedby="dataTable_info">
								<tr>
									<th>
										<h4 class="topTitle">${list.noTitle }</h4>
										<h5 style="margin-top: 15px; margin-bottom: 30px; font-size: 13px; text-align: center;">최종 수정일자 : ${list.noDate }</h5>
										
									</th>
								</tr>
								<tr>
									<td>
										<p class="hCont" style="text-align: center; font-size: 13px;">
											${list.noContent }
	    								</p>
									</td>
								</tr>
							</table> 
							<div>
								<button type="button" class="btnBoard">목록으로</button>
							</div>
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
	
<!-- ===== 공지사항 내용 end ===== -->  
   
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