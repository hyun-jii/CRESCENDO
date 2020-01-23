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


<title>마감 프로젝트 관리(성공,실패)</title>

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

<!--  datables사용을 위한 링크 등록  -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    
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

<script type="text/javascript">
	$(document).ready(function()
	{
		$('#example').DataTable();
	});
	
</script>
</head>
<body id="page-top">

	
	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/admin/Side.jsp" />
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<jsp:include page="/WEB-INF/views/admin/Topbar.jsp" />
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"># 마감 프로젝트 관리</h1>
					<br>

					<div class="row">
						<div class="col">
						
							<ul class="nav nav-tabs">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#qwe">성공프로젝트</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#asd">실패프로젝트</a></li>
							</ul>

							<!--  성공 프로젝트 내용 출력 부분 -->
							<div class="tab-content">
								<div class="tab-pane fade show active" id="qwe">
									<div class="card shadow mb-4">
										<div class="card-header py-3">
											<p class="m-0 font-weight-bold text-primary">성공 프로젝트</p>
										</div>
										<div class="card-body">
											<div class="table-responsive">
												<div id="dataTable_wrapper"
													class="dataTables_wrapper dt-bootstrap4">
													<div class="row">
														<div class="col-sm-12">
															<table class="table table-bordered dataTable"
																id="dataTable" role="grid"
																aria-describedby="dataTable_info" style="width: 100%;">
																<thead>
																	<tr role="row">
																		<th class="sorting_desc" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-sort="descending"
																			aria-label="Name: activate to sort column ascending">
																			번호</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Office: activate to sort column ascending">카테고리</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Office: activate to sort column ascending">프로젝트
																			제목</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Age: activate to sort column ascending">목표
																			금액</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Start date: activate to sort column ascending">프로젝트
																			기간</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Salary: activate to sort column ascending">창작자</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Salary: activate to sort column ascending">달성률</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Salary: activate to sort column ascending">최종
																			펀딩금액</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Salary: activate to sort column ascending">후원자수</th>
																		<th class="sorting" tabindex="0"
																			aria-controls="dataTable" rowspan="1" colspan="1"
																			aria-label="Salary: activate to sort column ascending">계좌정보</th>
																	</tr>
																</thead>
																
																<tbody>
													<c:forEach var="p" items="${ list2 }">
														<tr role="row" class="odd">
															<td class="sorting_1">${ p.proNum }</td>
															<td class="sorting_1">${ p.caName }</td>
															<td><a href="projectdetail.action?proNum=${ p.proNum }" style="text-decoration:none; color: gray;">${ p.prjTitle }</a></td>
															<td>${ p.prjGoal}원</td>
															<td>${ p.finalDate} ~ ${p.finalDay}</td>
															<td>
																<a href="makerpage.action?userNum=${p.userNum}&maName=${p.maName}" style="text-decoration:none; color: gray;">${p.maName }</a>
															</td>
															<td>${ p.percent }%</td>
															<td>${ p.totalMoney }원</td>
															<td>${ p.supporter }명</td>
															<td>${p.maBank}${p.maAccount }${p.maAcname }</td>
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
								</div>



								<!-- Main Content2 -->
								<!--  2번째 탭 내용 시작 -->
									<div class="tab-pane fade" id="asd">
								<!--  카드안 데이터 내용 -->
									<div class="card shadow mb-4">
										<div class="card-header py-3">
											<p class="m-0 font-weight-bold text-primary">실패 프로젝트</p>
										</div>
										<div class="card-body">
											<div class="table-responsive">
												<div id="examTable_wrapper"
													class="examTables_wrapper dt-bootstrap4">
													<div class="row">
														<div class="col-sm-12">
														
															<table class="table table-bordered example" id="example"
																role="grid" aria-describedby="exampleTable_info"
																style="width: 100%;">
																<thead>
																	<tr role="row">
																		<th class="sorting_desc" tabindex="0" rowspan="1"
																			colspan="1" aria-sort="descending"
																			aria-label="Name: activate to sort column ascending">
																			번호</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Office: activate to sort column ascending">카테고리</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Office: activate to sort column ascending">프로젝트
																			제목</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Age: activate to sort column ascending">목표
																			금액</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Start date: activate to sort column ascending">프로젝트
																			기간</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Salary: activate to sort column ascending">창작자</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Salary: activate to sort column ascending">달성률</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Salary: activate to sort column ascending">최종
																			펀딩금액</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Salary: activate to sort column ascending">후원자수</th>
																		<th class="sorting" tabindex="0" rowspan="1"
																			colspan="1"
																			aria-label="Salary: activate to sort column ascending">계좌정보</th>
																	</tr>
																</thead>
															
																
																
																<tbody>
													<c:forEach var="p" items="${ list1 }">
														<tr role="row" class="odd">
															<td class="sorting_1">${ p.proNum }</td>
															<td class="sorting_1">${ p.caName }</td>
															<td><a href="#" style="text-decoration:none; color: gray;">${ p.prjTitle }</a></td>
															<td>${ p.prjGoal}원</td>
															<td>${p.finalDate}~${ p.finalDay}</td>
															<td>${ p.maName }</td>
															<td>${ p.percent }%</td>
															<td>${ p.totalMoney }원</td>
															<td>${ p.supporter }명</td>
															<td>${p.maBank}${p.maAccount }${p.maAcname }</td>
														</tr>
													</c:forEach>
												
															</table>
															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>

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

