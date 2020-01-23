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

<title>FAQ 관리</title>

<!-- Custom fonts for this template -->
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> 
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
tbody tr:hover{
	background: #f8f9fc;
}

</style>

<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 모달부분 스크립트 -->
<script type="text/javascript">

	
	$(document).ready(function()
	{
		
		
		/* 클릭 시 모달에 값 입력하는 스크립트 */
		/*
		var noticeTitle="";
		var noticeContent=""
		
		$("#myModal").on("show.bs.modal", function()
		{
			noticeTitle = $(event.relatedTarget).data("noTitle");
			noticeContent = $(event.relatedTarget).data("noContent");
		})		
		 */
	});
	
	
</script>


<script type="text/javascript">

var noticeTitle="";
var noticeContent=""
	
	$(document).ready(function()
	{
		/* 게시판 정렬 코드 */
		$("#dataTable").DataTable({
			  order: [[0, 'desc']], // asc 또는 desc
			  ordering: true,
			  serverSide: false,
			  stateSave: true,
		})
		
		
	});
	

	
	
</script>



<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="Side.jsp"/>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<jsp:include page="Topbar.jsp"/>

				<!-- Begin Page Content -->
				<div class="container-fluid">
				<form>
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># FAQ 관리</h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<button type="button" class="btn btn-primary btn-lg btn-block rewardBtn" style="float: right; background: #8E44AD; border: #8E44AD;"
										onclick="location.href='noticeinsertform.action'">FAQ 작성</button>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12">
										
										
											<table class="table table-bordered dataTable" id="dataTable"
												role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Name: activate to sort column descending"
															style="width: 180px;">FAQ 번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending">FAQ 제목</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Start date: activate to sort column ascending">작성일</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">작성자</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending" style="width:150px">FAQ 수정</th>
															<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending" style="width:150px">FAQ 삭제</th>
													</tr>
												</thead>
												
												
												<!-- 반복문 돌려서 출력하는 구문 -->
												<tbody>
												<c:forEach var="faqList" items="${data}">
												<tr>
													<td>${faqList.hNum }</td>

													<td><a href="faqconfirmform.action?hNum=${faqList.hNum }">${faqList.hTitle }</a></td>

													<td>${faqList.hDate}</td>
													<td>관리자</td>
													<td><button type="button" class="btn btn-info btn-sm btn-radius" style="width:50px;" onclick="location.href='faqupdateform.action?hNum=${faqList.hNum}'">수정</button></td>
												 	<td><button type="button" class="btn btn-info btn-sm btn-danger" id="deleteNotice" style="width:50px" onclick="if(confirm('공지사항을 삭제하시겠습니까?'))location.href='faqdelete.action?hNum=${faqList.hNum }'">삭제</button></td>												 
												</tr>


												</c:forEach>
												
												 	
									
												</tbody>
												
											</table>
		
											 <!-- 
											모달 Test
												<div class="modal fade" id="myModal" role="dialog" style="height: 300px; width: 90%;">
													<div class="modal-dialog">

														Modal content
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title"></h4>
															</div>
															<div class="modal-body">
																<h6 class="modal-content" style="height: 300px;"></h6>

															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Close</button>
															</div>
															


														</div>

													</div>
												</div>
 												-->

											 
											
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
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

