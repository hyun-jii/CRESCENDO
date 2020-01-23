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


<title>검토 프로젝트 관리 (승인 대기 중)</title>

<!-- Custom fonts for this template -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Custom styles for this template -->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	
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
	
	
	/* 관리자 -> 창작자에게 쪽지 ajax */
	$(function()
	{
		$("#sendLetter").click(function()
		{
			$.ajax({
				type : "POST",
				url : "sendmaker.action",
				data : { "leTitle" : $("#leTitle").val(),
						 "leContent" : $("#leContent").val(),
						 "userNum"	 : $("#userNum").val()
						 
				},
				success : function(data)
				{
					if(data > 0)
					{
						alert("쪽지전송완료");
					}
					else
					{
						alert("쪽지전송실패");
					}
				}
				
				
				
			});
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

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"> 승인 대기 프로젝트 </h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<p class="m-0 font-weight-bold text-primary">-----</p>
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
															aria-label="Name: activate to sort column descending">App 평가 번호</th>
														<th class="sorting" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Name: activate to sort column descending">프로젝트 번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending">프로젝트 제목</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending">목표 금액</th>
														
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">창작자 닉네임</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">승인신청 날짜</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">메세지</th>
															
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">App평가</th>
															
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">승 인</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending">거 절</th>
														
													</tr>
												</thead>
												
												<tbody>
												
													 <c:forEach var="list" items="${list }">
														<tr role="row" class="odd">
															<td class="sorting_1">${list.appNum}</td>
															 <td>${list.prjNum}</td> 
															<td> 
																<a href="projectdetail2.action?appNum=${list.appNum }" style="text-decoration:none; color: gray;">${list.prjTitle }</a>
															</td>
															<td>${list.prjGoal}원</td>
															<td>
																<a href="makerpage.action?userNum=${list.userNum}&maName=${list.maName}" style="text-decoration: none; color:gray;"> ${list.maName}</a>
															</td>
															<td>${list.maDate}</td>
															<!-- <td><input type="button" value="메세지"></td> -->
															
															<!-- 메세지 버튼 -->
															<td>
																<button type="button" data-toggle="modal" data-target="#exampleModal${list.userNum }" data-whatever="메시지"
 																 id="projectBtn1" >메시지</button>
 																 <div class="modal fade" id="exampleModal${ list.userNum }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">메시지</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <!-- <span aria-hidden="true">&times;</span> -->
																        </button>
																      </div>
																      
															        <!-- <form action ="reportReply.dr" method="post"> -->
																      <div class="modal-body">
																		<input type="hidden" name="reportRpRefRno" value="">
																          <div class="form-group">
																            <label for="recipient-name" class="col-form-label">제목</label>
																            <input type="hidden" id="userNum" value="${list.userNum }">
																            <input type="text" class="form-control" id="leTitle" name="leTitle" >
																            <%-- <input type="hidden" name="reportRpWriter" value="${loginUser.userNo}">  --%>
																          </div>
																          <div class="form-group">
																            <label for="message-text" class="col-form-label">보낼 내용 :</label>
																            <textarea name="reportRpContent" class="form-control" id="leContent" name="leContent"></textarea>
																          </div>
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
																        <button type="button" id="sendLetter" class="btn btn-primary">답변 보내기</button>
																      </div>
															       <!--  </form> -->
																    </div>
																  </div>
																</div>
															</td>
															<td>${list.evaStandard }</td>
															<%-- <td><input type="button" data-toggle="modal" id="passBtn" data-target="${list.appNum }"  value="승인"></td>
															<td><input type="button" value="거절"></td>  --%>
															<!-- 승인버튼 -->
															<td>
																 <button type="button" style="width: 100%; text-align: 10px;"   data-toggle="modal" data-target="#exampleModal${ list.appNum }" data-whatever="승인"
 																 id="passProjectBtn">승인</button>
 																 
 																 <!-- Modal -->
 																<form action ="passproject.action" method="POST">
																<div class="modal fade" id="exampleModal${list.appNum }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">심사 통과</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																        	해당 프로젝트 심사 합격을 진행하시겠습니까?
																      </div>
																      <div class="modal-footer">																     
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
																        <button type="submit" class="btn btn-primary">진행하기</button>
																        <input type="hidden" name="appNum" value="${list.appNum}">
																      </div>
																    </div>
																  </div>
																</div>
																</form>
															</td> 
															
															<!-- 탈락버튼 -->
															 <td>
																<button type="button" data-toggle="modal" data-target="#exampleModalt${  list.appNum }" data-whatever="탈락"
 																 id="rejectProjectBtn" >탈락</button>
 																 <!-- Modal -->

 																<form action ="rejectproject.action" method="POST">
																<div class="modal fade" id="exampleModalt${  list.appNum }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																  <div class="modal-dialog" role="document">
																    <div class="modal-content">
																      <div class="modal-header">
																        <h5 class="modal-title" id="exampleModalLabel">심사 탈락</h5>
																        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																          <span aria-hidden="true">&times;</span>
																        </button>
																      </div>
																      <div class="modal-body">
																        	해당 프로젝트 심사 탈락을 진행하시겠습니까?
																      </div>
																      <div class="modal-footer">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
																        <button type="submit" class="btn btn-primary">진행하기</button>
																        <input type="hidden" name="appNum" value="${ list.appNum}">
																      </div>
																    </div>
																  </div>
																</div>
																</form>
															</td> 
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