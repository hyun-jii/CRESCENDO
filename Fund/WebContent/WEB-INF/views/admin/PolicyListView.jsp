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
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	
</script>



<style>

.article-main {
	background-color: #ffffff;
	padding: 20px 30px;
	border: 1px solid rgba(0, 0, 0, .1);
}
h4
{ font-weight: bold; color:#666; margin-top:40px;}
.rightside
{text-align: right;}
.btn-danger{width:100px;}
.btnparent{max-width:250px; margin:0 auto; margin-top:20px;}
.datetext{color:#fa6462;}
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
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#a">수수료 정책</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
								data-toggle="tab" href="#b">개인정보 취급 방침</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
								    href="#c">이용약관</a></li>
							</ul>
							
							<div class="tab-content">
							<!-- 여기서 부터  수수료 정책-->
								<div class="tab-pane fade show active" id="a">
									<div class="article-main" style="padding-bottom: 4.0rem">
										<div class="article-body">
											 <c:forEach var="chargeList" items="${charge }">
													<div class="personTitle">
													<h4><b>수수료 정책</b></h4>
													<p class="datetext">최종 수정일자 ${chargeList.chaDate}</p>
													</div><br><br><br>
											
													<p>${chargeList.chaContent}</p>
													<input type="button" class="btn btn-warning" value="수정" style="margin-top: 5px; margin-left: 50%" 
														onclick="location.href='chargeupdateform.action?chaNum=${chargeList.chaNum }'">
									     </c:forEach>
										</div>
									</div>
								</div>
								<!-- 여기까지가 수수료 정책 -->
								
							  <!-- 여기서 부터 개인정보 처리방침-->
							  
								<div class="tab-pane fade" id="b">
									<div class="article-main" style="padding-bottom: 4.0rem">
										<div class="article-body">
									
										 <c:forEach var="personList" items="${person }">
													<div class="personTitle">
													<h4><b>개인정보 처리방침</b></h4>
													<p class="datetext">최종 수정일자 ${personList.pDate}</p>
													</div><br><br><br>
											
													<p>${personList.pContent}</p>
													<input type="button" class="btn btn-warning" value="수정" style="margin-top: 5px; margin-left: 50%" 
														onclick="location.href='personupdateform.action?pNum=${personList.pNum }'">
									     </c:forEach>
										</div>
									</div>
								</div>
								 <!-- 개인정보 처리방침--> 
								<!-- ■■■■■■■■■■■■■■■■이용약관■■■■■■■■■■■■■■■■■ -->
								<c:forEach var="promiseList" items="${promise}">
								
								<div class="tab-pane fade" id="c">
									<div class="article-main" style="padding-bottom: 4.0rem">
										<div class="article-body">
										    <div class="personTitle">
											<h4><b>이용약관</b></h4>
											<p class="datetext">최종 수정일자${promiseList.proDate }</p>
											</div><br><br>
											<h4>총칙</h4>
											<p>${promiseList.proRules }</p>
											<h4>서비스 이용</h4>
											<p>${promiseList.proService }</p>
											<h4>회원 정보 관리</h4>
											<p>${promiseList.proUserInfo }</p>
											<h4>회사와 회원의 권리 및 의무</h4>
											<p>${promiseList.proDuty }</p>
											<h4>프로젝트 생성</h4>
											<p>${promiseList.proCreation }</p>
											<h4>후원의 신청 및 접수 등</h4>
											<p>${promiseList.proSupport }</p>
											<h4>기타</h4>
											<p>${promiseList.proEtc }</p>
										</div>
										<div class="btnparent">
										<button type="button" class="btn btn-warning" onclick="location.href='promiseupdateform.action?proNum=${promiseList.proNum}'" >수정</button>
										</div>
									</div>
								</div>
								</c:forEach>
									
								
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