<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정책관리 업데이트</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



<style>

.article-main {
	background-color: #ffffff;
	padding: 20px 30px;
	border: 1px solid rgba(0, 0, 0, .1);
}
h4{color:#333; font-weight: bold; margin-top:40px;}
.rightside{text-align: right;}
.article-body>h4{color:#333; font-weight: bold; margin-top:40px;}
.rightside{text-align: right;}
.btn-danger{width:100px;}
.btnparent{max-width:250px; margin:0 auto; margin-top:20px;}
textarea{resize: none; width:1100px; height:150px; margin:0 auto;}
.article-body{margin-top:50px; padding:0 30px}
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
								
								<li class="nav-item active"><a class="nav-link active" data-toggle="tab"
								    href="#c">이용약관</a></li>
							</ul>
							<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
							<div class="article-body">
									
									<form action="promiseupdate.action"  method="post" id="c" role="form">
											 <input type="hidden" value="${data.proNum }" name="proNum" id="proNum">
											
										 	<%-- <p class="rightside">최종수정일</p>
										 	
										 	<label for="proDate">날짜입력</label> 
										 	<input type="text" id="proDate" name="proDate" placeholder="수정일을  입력하세요" value="${data.proDate }" >
											<p class="rightside">${promiseList.proDate }</p> --%>
				
											<h4>총칙</h4>
											<textarea id="proRules" name="proRules" placeholder="수정할 내용입력.">${data.proRules }</textarea>
											<br>
											
											<h4>서비스 이용</h4>
											<textarea id="proService" name="proService" placeholder="수정할 내용입력.">${data.proService }</textarea>
											<br>
											
											<h4>회원 정보 관리</h4>
											<textarea id="proUserInfo" name="proUserInfo" placeholder="수정할 내용입력.">${data.proUserInfo }</textarea>
											<br>
											
											<h4>회사와 회원의 권리 및 의무</h4>
											<textarea id="proDuty" name="proDuty" placeholder="수정할 내용입력.">${data.proDuty}</textarea>
											<br>
											
											<h4>프로젝트 생성</h4>
											<textarea id="proCreation" name="proCreation" placeholder="수정할 내용입력.">${data.proCreation}</textarea>
											<br>
											
											<h4>후원의 신청 및 접수 등</h4>
											<textarea id="proSupport" name="proSupport" placeholder="수정할 내용입력.">${data.proSupport}</textarea>
											<br>
											
											<h4>기타</h4>
											<textarea id="proEtc" name="proEtc" placeholder="수정할 내용입력.">${data.proEtc}</textarea>
											<br>
											
											
											<button type="submit" value="${data.proNum }" class="btn btn-info btn-sm btn-danger">변경하기</button>
										   <!--  <input type="submit" value="변경하기"> -->
									</form>
							</div>
							<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
							
						</div>
					</div>
				
				</div>
						
						<!-- <input type="button" class="btn btn-warning" value="수정" style="margin-top: 5px; margin-left: 50%"  > -->
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