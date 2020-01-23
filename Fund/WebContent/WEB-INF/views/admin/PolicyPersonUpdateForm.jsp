<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정책관리</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>

.article-main {
	background-color: #ffffff;
	padding: 20px 30px;
	border: 1px solid rgba(0, 0, 0, .1);
}
.personTitle
{
	font-weight: bold;
	text-align: center;
	font-size: 30px;
	padding-top:20px;
	
}

.contentText
{
	width:100%;
	margin:0 auto;
	height:300px;
}
.datetext
{
	font-size: 16px;
	color:#fa6462;
}


</style>
</head>

<body >


	<!--  page Wrapper  -->
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/admin/Side.jsp" />
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<jsp:include page="/WEB-INF/views/admin/Topbar.jsp" />
			<!--  Main Content -->

			<div id="content">
				   <p>&nbsp; 기타 정책 관리 페이지</p>
				<div class="container-fluid" style="padding-bottom: 3.5rem;">


					<div class="row">
						<div class="col">

							<ul class="nav nav-tabs">
								
								<li class="nav-item"><a class="nav-link active" data-toggle="tab"
									href="#b">개인정보 취급 방침</a></li>

								
							</ul>

							
										<div class="article-body">
										
										    <!-- 여기서 부터 개인정보 처리방침 수정-->
										    <form action="personupdate.action" style="max-width: 1200px; margin:0 auto;">
											<div class="personTitle">
													<p>개인정보 처리방침</p>
												
											</div><br><br><br>
											 <input type="hidden" value="${per.pNum }" name="pNum" id="pNum">
											
											<textarea id="pContent" name="pContent" class="contentText">${per.pContent }</textarea>

											<br><br>
											<input type="submit" class="btn btn-warning" value="변경하기" style="margin-top: 5px; margin-left: 50%"> 
												
											</form>
											  <!-- 개인정보 처리방침 수정-->
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