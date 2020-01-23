<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>FAQ 수정</title>



<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

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
.sorting{
	width: auto;
}

</style>

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="Side.jsp"/>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<%@include file="Topbar.jsp" %>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># FAQ 수정</h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
						
						<form action="fupdate.action" name="updateFaqForm" id="updateFaqForm" method="post">
							<span class="float-right">
								<!-- 수정 버튼 -->
								<button class="btn btn-primary btn-lg btn-inline rewardBtn" type="button" id="submitBtn" style="background: #8E44AD; border: #8E44AD;">FAQ 수정</button>
								<button class="btn btn-primary btn-lg btn-inline rewardBtn" style="background: #8E44AD; border: #8E44AD;"
								onclick="cancle();">취소하기</button>
							</span>
							</div>
							<div class="card-body">  
								<div class="table-responsive">
									<div id="dataTable_wrapper"
										class="dataTables_wrapper dt-bootstrap4">
										<div class="row">
				 							<div class="col-sm-12">
					 							<table align="center" id="tb" cellpadding="15" cellspacing="0" width="1000px" >
													<tr>
														<!-- summnote 에디터 출력 -->
														<th > FAQ 제목 : </th>
														<td><input type="text" name="fTitle" size="97" value="${faq.hTitle}" style="margin-left:2%"></td>
													</tr>
													
													<tr>
														<th style="padding-bottom: 55%; ">FAQ 내용 : </th>
														<td><textarea id="summernote" name="fContent">${faq.hContent}</textarea><td>
													</tr>
													
													<!-- 등록된 이미지 목록 -->
													<%-- <input type="hidden" name="fNo" value="${faq.fNo }"> 
													<input type="hidden" name="fWriter" value="${loginUser.userNo}">
													<input type="hidden" name="imgList" value=""> --%>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->


		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> 
	<i class="fas fa-angle-up"></i>
	</a>

	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close" style="float: right;">
						<span aria-hidden="true" style="float: right;">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃 시 메인 페이지로 이동합니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="adminlogout.action">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		// 취소 버튼을 누를 경우 action 속성값 변경
		function cancle(){
			$("#updateFaqForm").attr("action","fcancle.action");
		}
		
		$(function(){
			$("#submitBtn").on("click", function(){
				var inputTitle = $("input[name=fTitle]").val();
				if ( inputTitle.trim() == "" ) {
					alert("제목을 입력해주세요.");
					return false;
				}
				if($("#summernote").val().trim() == ""){
					alert("내용을 입력해주세요.");
					return false;
				}
				
				console.log("이제 서브밋 하면 됨");
				$("#updateFaqForm").submit();
			});
		});
		
	</script>
	
	<!-- Bootstrap core JavaScript-->
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
	
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
	<!-- summernote 기능 구현 js -->
	<script src="summernote/js/summernote.js"></script>
	<script src="summernote/dist/summernote.js"></script>
	
	<!-- summernote 언어 설정 js -->
	<script src="summernote/dist/lang/summernote-ko-KR.js"></script>


</body>
</html>


