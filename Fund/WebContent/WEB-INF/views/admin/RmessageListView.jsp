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


<title>관리자 메시지(받은 쪽지함)</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">


<!-- 데이터 테이블 정렬 스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/admin/Side.jsp"/>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<jsp:include page="/WEB-INF/views/admin/Topbar.jsp"/>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"> 받은 쪽지함 </h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12">
											<table class="table table-bordered table-hover dataTable" id="dataTable"
												role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead class="">
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Name: activate to sort column descending"style="width:100px">받은 쪽지번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending" style="width:350px" >쪽지 제목</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending"style="width:150px">발신인ID</th>
														
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">받은 날짜</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">읽은 날짜</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">읽음여부</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">답장</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">삭제</th>
														</tr>
													
												</thead>
	
												<tbody>
												  
													
													<c:forEach var="RletterList" items="${adminletter }">
													 <c:if test="${ RletterList.lrRdelete==null}">	
													<tr>
													<td>${RletterList.lrNum }</td>
													<td><a href="rletterconfirmform.action?lrNum=${RletterList.lrNum }" >${RletterList.lrTitle}</a></td>
													<td>${RletterList.userNum }</td>
													<td>${RletterList.lrDate }</td>
													<td>${RletterList.lrReadDate }</td>
													<td><c:if test="${ RletterList.lrReadDate ==null}">	
																안읽음
														</c:if>
														<c:if test="${ RletterList.lrReadDate !=null}">	
																읽음
														</c:if>
													</td>
													<td><button type="button" class="btn btn-info btn-sm btn-radius" style="width:50px;"
													 onclick="location.href='rletterreplyform.action?lrNum=${RletterList.lrNum}'">답장</button></td>
													 
												 	<td>
												 	<!-- 사용자가 관리자에게 보낸쪽지를 삭제했을경우에 DB에서 완전히 삭제 -->
												 	<c:if test="${RletterList.lrSdelete !=null}">
													<button type="button" class="btn btn-info btn-sm btn-danger" style="width:50px" id="deleteRletter" style="width:50px"
													onclick="if(confirm('받은쪽지를 ddd삭제하시겠습니까?'))location.href='admindeleterletter.action?lrNum=${RletterList.lrNum }'"> 삭제</button>
													</c:if>
													<!-- 관리자 받은쪽지 삭제일자 update -->
													<c:if test="${RletterList.lrSdelete ==null}">
													<button type="button" class="btn btn-info btn-sm btn-danger" style="width:50px" id="deleteRletter" style="width:50px"
													onclick="if(confirm('받은쪽지를 삭제하시겠습니까?'))location.href='rletterupdatedeletedate.action?lrNum=${RletterList.lrNum }'"> 삭제</button>
													</c:if>
													</td>								 
													</tr>
													</c:if>
													</c:forEach>
													
													</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- 관리자 로그아웃 모달  -->
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