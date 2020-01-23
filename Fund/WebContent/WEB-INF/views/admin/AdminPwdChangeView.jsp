<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
	
	<jsp:include page="Side.jsp"/>
	
<%-- 		<jsp:include page="/Side.jsp" />
 --%>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


		<jsp:include page="Topbar.jsp" />
<%-- 				<jsp:include page="/Topbar.jsp" />
 --%>
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">관리자 비밀번호 확인</h1>
					<br>

					<!-- DataTales Example -->





					<div class="container">
						<div id="login-row"
							class="row justify-content-center align-items-center">
							<div id="login-column" class="col-md-6">
								<div class="box">
									<div class="shape1"></div> <!--  구름 설정 부분  -->
									<div class="shape2"></div>
									<div class="shape3"></div>
									<div class="shape4"></div>
									<div class="shape5"></div>
									<div class="shape6"></div>
									<div class="shape7"></div>
									<div class="float">
										<form class="form" action="">
											<div class="form-group">
												<label for="password" class="text-white">현재 비밀번호 입력</label><br>
												<input type="password" name="currentpassword"
													id="currentpassword" class="form-control">
											</div>
											<div class="form-group">
												<label for="password" class="text-white">변경하실 비밀번호
													입력</label><br> <input type="password" name="password"
													id="changepassword" class="form-control">
											</div>
											<div class="form-group">
												<input type="submit" name="submit"
													class="btn btn-info btn-md" value="변경">
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	
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
	
	
	<!-- End of Page Wrapper -->

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