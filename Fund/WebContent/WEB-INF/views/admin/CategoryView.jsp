<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 관리</title>

<!-- Custom fonts for this template -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<script type="text/javascript">


</script>




</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="Side.jsp" />

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<jsp:include page="/WEB-INF/views/admin/Topbar.jsp"/>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># 카테고리 관리</h1>
					<br>
					<div class="card-header py-3">
						<p class="m-0 font-weight-bold text-primary">카테고리 수정</p>
					</div>

					<div class="card-body">
						<div class="table-responsive">
							<div class="shadow-lg p-3 mb-100 bg-white rounded">

							
									<div class="row">
										<div class="col-lg-12">
										
										<!-- <form action="categoryUpdate.action" id="updateCategory" method="post">  -->
									
											<table class="table table-hover" id="dataTable" role="grid">
												<thead>
													<tr role="row">
														<th>카테고리 이름</th>
														<th>수정</th>
													</tr>
												</thead>


												<tbody>
													<!--  foreach구문으로 뽑아내기 -->
													
													<c:forEach var="list" items="${data }">
													<tr>
														<td><label class="caLabel" id="${list.caNum }">${list.caName }</label><input type="hidden" value="${list.caName }" id="caName" name="caName"></td>	
														<td><button type="button" class="btn btn-sm btn-warning" id="modifyCate" value="${list.caNum }" onclick="location.href='categoryupdateform.action?caNum=${list.caNum}'">수정</button></td>				
													</tr>
													</c:forEach>

												</tbody>
											</table>
											
											
										<!-- </form> -->
										
										</div>
									</div>
								
							</div>
						</div>
					</div>

					<!-- DataTales Example -->


				</div>
			</div>
		</div>
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